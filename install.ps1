# Yorumi theme installer for Kitty (Windows PowerShell)
$ErrorActionPreference = "Stop"

$destDir = "$env:APPDATA\kitty\themes"
if (-not (Test-Path -Path $destDir)) {
    New-Item -ItemType Directory -Path $destDir -Force | Out-Null
}

$rawBase = "https://raw.githubusercontent.com/yorumicolors/kitty/main"
$files = @("yorumi-abyss.conf", "yorumi-mist.conf", "yorumi-ether.conf", "yorumi-bifrost.conf")

$scriptDir = $PSScriptRoot

Write-Host "Installing Yorumi theme for Kitty..." -ForegroundColor Cyan

foreach ($f in $files) {
    $basename = Split-Path $f -Leaf
    $target = Join-Path $destDir $basename
    $localPath = if ($scriptDir) { Join-Path $scriptDir $f } else { $null }
    $localFlat = if ($scriptDir) { Join-Path $scriptDir $basename } else { $null }

    if ($localPath -and (Test-Path $localPath)) {
        Copy-Item -Path $localPath -Destination $target -Force
    } elseif ($localFlat -and (Test-Path $localFlat)) {
        Copy-Item -Path $localFlat -Destination $target -Force
    } else {
        $url = "$rawBase/$f"
        Invoke-RestMethod -Uri $url -OutFile $target
    }
    Write-Host "✓ Installed: $target" -ForegroundColor Green
}

Write-Host "`nSuccessfully installed Yorumi for Kitty!" -ForegroundColor Green
Write-Host "Include the theme in ~/.config/kitty/kitty.conf:"
Write-Host "    include themes/yorumi-abyss.conf"
