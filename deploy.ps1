# 一键更新：先复制新版 yici.html / erci.html 到本文件夹，再运行本脚本
git add -A
git commit -m "更新刷题版本 $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
git push origin main
Write-Host "部署完成，等 1~2 分钟生效" -ForegroundColor Green
