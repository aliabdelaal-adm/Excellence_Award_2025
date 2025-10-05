@echo off
REM ================================================================================================
REM OneDrive Upload Launcher
REM Script Name: Upload-ToOneDrive.bat
REM Description: Simple launcher for OneDrive upload (for non-technical users)
REM Author: Dr. Ali Abdelaal
REM Department: Animal Welfare Department - Abu Dhabi Municipality
REM Version: 1.0.0
REM ================================================================================================

echo.
echo ================================================================================================
echo    Excellence Award 2025 - OneDrive Upload
echo    رفع ملفات جائزة التميز 2025 إلى OneDrive
echo ================================================================================================
echo.
echo This script will upload all project files to your OneDrive automatically.
echo هذا السكريبت سيرفع جميع ملفات المشروع إلى OneDrive الخاص بك تلقائياً.
echo.
echo ------------------------------------------------------------------------------------------------
echo.

REM Check if PowerShell is available
powershell -Command "Write-Host 'PowerShell is available!' -ForegroundColor Green" >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: PowerShell is not available on this system!
    echo خطأ: PowerShell غير متوفر على هذا النظام!
    echo.
    echo Please install PowerShell first.
    echo الرجاء تثبيت PowerShell أولاً.
    pause
    exit /b 1
)

echo ✅ PowerShell is available
echo.

REM Check if OneDrive is installed
if not exist "%USERPROFILE%\OneDrive" (
    if not exist "%OneDrive%" (
        if not exist "%OneDriveCommercial%" (
            echo.
            echo ⚠️  WARNING: OneDrive folder not found!
            echo ⚠️  تحذير: لم يتم العثور على مجلد OneDrive!
            echo.
            echo Please ensure OneDrive is installed and logged in.
            echo الرجاء التأكد من تثبيت OneDrive وتسجيل الدخول.
            echo.
            echo You can download OneDrive from:
            echo يمكنك تحميل OneDrive من:
            echo https://www.microsoft.com/microsoft-365/onedrive/download
            echo.
            pause
            exit /b 1
        )
    )
)

echo ✅ OneDrive is installed
echo.
echo ------------------------------------------------------------------------------------------------
echo.
echo Starting upload process...
echo بدء عملية الرفع...
echo.
echo This will copy all project files to your OneDrive folder.
echo سيتم نسخ جميع ملفات المشروع إلى مجلد OneDrive الخاص بك.
echo.
echo Please wait... / الرجاء الانتظار...
echo.
echo ------------------------------------------------------------------------------------------------
echo.

REM Run PowerShell script
powershell -ExecutionPolicy Bypass -File "%~dp0Upload-ToOneDrive.ps1"

if %errorlevel% neq 0 (
    echo.
    echo ================================================================================================
    echo ❌ Upload failed!
    echo ❌ فشل الرفع!
    echo ================================================================================================
    echo.
    echo Please check the error messages above.
    echo الرجاء التحقق من رسائل الخطأ أعلاه.
    echo.
    echo ================================================================================================
    echo.
    pause
    exit /b 1
)

echo.
echo ================================================================================================
echo ✅ Upload completed!
echo ✅ اكتمل الرفع!
echo ================================================================================================
echo.
pause
