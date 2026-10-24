param(
    [string]$RepoUrl = "https://github.com/Safee-Ullah-Mughal/Vozyra.git"
)

$ErrorActionPreference = "Stop"
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  PUSHING VOZYRA SHOWCASE TO GITHUB (ZERO SOURCE CODE)   " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

Set-Location -Path $PSScriptRoot

# Configure remote
$existing = git remote get-url origin 2>$null
if ($existing) {
    git remote set-url origin $RepoUrl
} else {
    git remote add origin $RepoUrl
}

Write-Host "Remote URL set to: $RepoUrl" -ForegroundColor Yellow
Write-Host "Pushing branch 'main' to GitHub..." -ForegroundColor Cyan

git branch -M main
git push -u origin main

Write-Host "`nSUCCESS! Your Vozyra showcase is now live on GitHub!" -ForegroundColor Green
Write-Host "URL: $RepoUrl" -ForegroundColor Green
