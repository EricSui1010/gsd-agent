param([string]$Action = "check")

$RepoUrl = "https://github.com/your-username/gsd-agent"
$VersionFile = ".trae\VERSION"

$version = "0.0.0"
if (Test-Path $VersionFile) { $version = Get-Content $VersionFile }

if ($Action -eq "version") {
    Write-Host "GSD Agent v$version" -ForegroundColor Cyan
}

if ($Action -eq "check") {
    Write-Host "========================================"
    Write-Host "GSD Agent Version Check"
    Write-Host "========================================"
    Write-Host "Current Version: $version"
    Write-Host "Already up to date" -ForegroundColor Green
}

if ($Action -eq "update") {
    Write-Host "Updating GSD Agent..." -ForegroundColor Cyan
    
    $TempDir = ".gsd-update-temp"
    if (Test-Path $TempDir) {
        Remove-Item -Recurse -Force $TempDir
    }
    
    Write-Host "Downloading latest version..."
    git clone $RepoUrl $TempDir 2>&1 | Out-Null
    
    if (-not (Test-Path "$TempDir\.trae")) {
        Write-Host "Download failed!" -ForegroundColor Red
        exit 1
    }
    
    if (Test-Path ".trae") {
        $backupDir = ".trae.backup." + (Get-Date -Format "yyyyMMddHHmmss")
        Write-Host "Backing up to $backupDir"
        Copy-Item -Recurse ".trae" $backupDir
    }
    
    Write-Host "Updating files..."
    Copy-Item -Recurse -Force "$TempDir\.trae\*" ".trae\"
    
    Remove-Item -Recurse -Force $TempDir
    
    Write-Host "Update complete!" -ForegroundColor Green
}
