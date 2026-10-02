param([string]$Repo = "hello-dev")
$git = "C:\Users\14606\AppData\Local\Programs\devtools\PortableGit\bin\git.exe"
Set-Location "$PSScriptRoot"
if (-not (Test-Path ".git")) { & $git init }
& $git remote remove origin 2>$null
& $git remote add origin "git@github.com:zi2011/$Repo.git"
& $git add -A
& $git commit -m "chore: sync" 2>$null
& $git push -u origin main
Write-Host "推送完成 => git@github.com:zi2011/$Repo.git"
