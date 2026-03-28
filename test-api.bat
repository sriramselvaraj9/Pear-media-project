@echo off
REM Pear Media - API Testing Script (Windows)
REM Tests all endpoints locally

setlocal enabledelayedexpansion
set API_URL=http://localhost:3000

echo 🧪 Pear Media API Testing Script
echo ==================================
echo.

REM Check if server is running
echo Checking server health...
curl -s "%API_URL%/api/health" > nul 2>&1
if errorlevel 1 (
    echo ❌ Server is not running
    echo Start with: npm start
    exit /b 1
) else (
    echo ✅ Server is running!
)

echo.
echo Test 1: Text Enhancement
echo ------------------------
curl -X POST "%API_URL%/api/enhance-text" ^
  -H "Content-Type: application/json" ^
  -d "{\"text\": \"A magical forest with glowing trees\"}"

echo.
echo Test 2: Image Generation
echo ------------------------
curl -X POST "%API_URL%/api/generate-image" ^
  -H "Content-Type: application/json" ^
  -d "{\"prompt\": \"Cyberpunk city with neon lights\"}"

echo.
echo ✅ All tests completed!
echo.
echo Visit http://localhost:3000 in your browser to test the UI
