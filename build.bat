@echo off
REM ─────────────────────────────────────────────────────────────────────────────
REM  Nyahako — Build script  (PyInstaller one-file, no console window)
REM  Usage: double-click this file or run from the project root.
REM ─────────────────────────────────────────────────────────────────────────────

echo.
echo  [Nyahako build]  Checking for PyInstaller...
pip show pyinstaller >nul 2>&1
if errorlevel 1 (
    echo  Installing PyInstaller...
    pip install pyinstaller
)

echo  [Nyahako build]  Building Nyahako.exe...
pyinstaller ^
    --onefile ^
    --noconsole ^
    --name "Nyahako" ^
    --icon "assets\icon.ico" ^
    --add-data "assets;assets" ^
    nyahako.pyw

echo.
echo  [Nyahako build]  Done!  Nyahako.exe is in the dist\ folder.
echo.
pause
