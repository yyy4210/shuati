@echo off
rem ============================================
rem  Deploy to GitHub Pages
rem  1) Create a PUBLIC repo named "shuati" at github.com first
rem  2) Double-click this file and paste your repo URL when asked
rem  (e.g. https://github.com/yourname/shuati.git)
rem ============================================
cd /d "%~dp0"

git remote get-url origin >nul 2>nul
if %errorlevel%==0 goto push

set /p REPO_URL=Please paste your GitHub repo URL and press Enter: 
if "%REPO_URL%"=="" goto done
git remote add origin "%REPO_URL%"
if errorlevel 1 goto done

:push
git add -A
git commit -m "Update quiz version %date% %time%"
git push -u origin main

:done
echo.
echo Finished! Wait 1-2 minutes, then open:
echo   https://yourname.github.io/shuati/
echo.
pause
