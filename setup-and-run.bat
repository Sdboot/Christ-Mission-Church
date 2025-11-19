@echo off
REM Christ Mission Church Website - Setup & Launch Script

setlocal enabledelayedexpansion

echo.
echo ====================================================
echo     CHRIST MISSION CHURCH - WEBSITE SETUP
echo ====================================================
echo.

REM Check if Node.js is installed
echo [1/4] Checking Node.js installation...
node --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Node.js is not installed!
    echo Please download from: https://nodejs.org/
    pause
    exit /b 1
)
echo ✓ Node.js found: 
node --version

REM Check if npm is installed
echo.
echo [2/4] Checking npm installation...
npm --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: npm is not installed!
    pause
    exit /b 1
)
echo ✓ npm found: 
npm --version

REM Install dependencies
echo.
echo [3/4] Installing dependencies...
echo This may take a few minutes on first run...
call npm install --legacy-peer-deps
if errorlevel 1 (
    echo ERROR: Failed to install dependencies
    pause
    exit /b 1
)
echo ✓ Dependencies installed successfully!

REM Start development server
echo.
echo [4/4] Starting development server...
echo.
echo ====================================================
echo Your website will open at: http://localhost:5173
echo Press Ctrl+C to stop the server
echo ====================================================
echo.
call npm run dev

pause
