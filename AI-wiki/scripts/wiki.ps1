param(
    [Parameter(Position = 0)]
    [ValidateSet('status', 'search', 'recent', 'lint')]
    [string]$Command = 'status',

    [Parameter(Position = 1, ValueFromRemainingArguments = $true)]
    [string[]]$Argument
)

$ErrorActionPreference = 'Stop'
[Console]::OutputEncoding = [System.Text.UTF8Encoding]::new($false)
$VaultRoot = Split-Path -Parent $PSScriptRoot
$WorkspaceRoot = Split-Path -Parent $VaultRoot
$WikiRoot = Join-Path $VaultRoot 'wiki'
$RawInbox = Join-Path $VaultRoot 'raw\inbox'

function Get-WikiPages {
    Get-ChildItem -LiteralPath $WikiRoot -Recurse -File -Filter '*.md' |
        Where-Object { $_.Name -ne 'README.md' }
}

function Get-VaultRelativePath([string]$Path) {
    $root = $VaultRoot.TrimEnd('\') + '\'
    if ($Path.StartsWith($root, [System.StringComparison]::OrdinalIgnoreCase)) {
        return $Path.Substring($root.Length)
    }
    return $Path
}

switch ($Command) {
    'status' {
        $pages = @(Get-WikiPages)
        $inbox = @(Get-ChildItem -LiteralPath $RawInbox -File | Where-Object { $_.Name -ne 'README.md' })
        $sourcePages = @(Get-ChildItem -LiteralPath (Join-Path $WikiRoot 'fontes') -File -Filter '*.md' | Where-Object { $_.Name -ne 'README.md' })
        [pscustomobject]@{
            WikiPages = $pages.Count
            IngestedSources = $sourcePages.Count
            InboxItems = $inbox.Count
            LastLogEntry = (Select-String -LiteralPath (Join-Path $WikiRoot 'log.md') -Pattern '^## \[' | Select-Object -Last 1).Line
        } | Format-List
    }
    'search' {
        $term = ($Argument -join ' ').Trim()
        if (-not $term) { throw 'Informe um termo: .\scripts\wiki.ps1 search "termo"' }
        if (Get-Command rg -ErrorAction SilentlyContinue) {
            & rg --line-number --ignore-case --glob '*.md' -- $term $WikiRoot
        } else {
            Get-ChildItem -LiteralPath $WikiRoot -Recurse -File -Filter '*.md' | Select-String -SimpleMatch $term
        }
    }
    'recent' {
        $count = 5
        if ($Argument.Count -gt 0) { $count = [int]$Argument[0] }
        Select-String -LiteralPath (Join-Path $WikiRoot 'log.md') -Pattern '^## \[' |
            Select-Object -Last $count |
            ForEach-Object { $_.Line }
    }
    'lint' {
        $issues = [System.Collections.Generic.List[string]]::new()
        $pages = @(Get-WikiPages)

        foreach ($page in $pages) {
            $relative = Get-VaultRelativePath $page.FullName
            $content = Get-Content -Raw -Encoding UTF8 -LiteralPath $page.FullName
            if ($null -eq $content) { $content = '' }
            if ($page.Name -notin @('index.md', 'log.md') -and -not $content.StartsWith('---')) {
                $issues.Add("frontmatter ausente: $relative")
            }
            if ($page.Directory.Name -eq 'blocos') {
                $stem = [IO.Path]::GetFileNameWithoutExtension($page.Name)
                $indexContent = Get-Content -Raw -Encoding UTF8 -LiteralPath (Join-Path $WikiRoot 'index.md')
                if ($indexContent -notmatch [regex]::Escape($stem)) {
                    $issues.Add("bloco ausente do índice: $relative")
                }
            }
        }

        $knownTargets = @{}
        Get-ChildItem -LiteralPath $WorkspaceRoot -Recurse -File | ForEach-Object {
            $workspacePrefix = $WorkspaceRoot.TrimEnd('\') + '\'
            $workspaceRel = $_.FullName.Substring($workspacePrefix.Length).Replace('\', '/')
            $knownTargets[$workspaceRel.ToLowerInvariant()] = $true
            if ($_.Extension -eq '.md') {
                $knownTargets[$workspaceRel.Substring(0, $workspaceRel.Length - 3).ToLowerInvariant()] = $true
            }
            if ($_.FullName.StartsWith($VaultRoot.TrimEnd('\') + '\', [System.StringComparison]::OrdinalIgnoreCase)) {
                $vaultRel = (Get-VaultRelativePath $_.FullName).Replace('\', '/')
                $knownTargets[$vaultRel.ToLowerInvariant()] = $true
                if ($_.Extension -eq '.md') {
                    $knownTargets[$vaultRel.Substring(0, $vaultRel.Length - 3).ToLowerInvariant()] = $true
                }
            }
            $knownTargets[[IO.Path]::GetFileNameWithoutExtension($_.Name).ToLowerInvariant()] = $true
        }
        foreach ($page in $pages) {
            $content = Get-Content -Raw -Encoding UTF8 -LiteralPath $page.FullName
            if ($null -eq $content) { $content = '' }
            foreach ($match in [regex]::Matches($content, '\[\[([^\]|#]+)')) {
                $target = $match.Groups[1].Value.Trim().Replace('\', '/').ToLowerInvariant()
                if (-not $knownTargets.ContainsKey($target)) {
                    $issues.Add("link possivelmente quebrado em $(Get-VaultRelativePath $page.FullName): $($match.Groups[1].Value)")
                }
            }
        }

        if ($issues.Count -eq 0) {
            Write-Output "OK: $($pages.Count) páginas verificadas; nenhum problema estrutural encontrado."
            exit 0
        }
        $issues | Sort-Object -Unique | ForEach-Object { Write-Output "AVISO: $_" }
        Write-Output "Lint concluído com $(@($issues | Sort-Object -Unique).Count) aviso(s)."
        exit 1
    }
}
