@echo off
REM ================================================================================================
REM Simple SharePoint Deployment Launcher
REM Script Name: Deploy-ToSharePoint-Simple.bat
REM Description: Simple launcher for SharePoint deployment (for non-technical users)
REM Author: Dr. Ali Abdelaal
REM Department: Animal Welfare Department - Abu Dhabi Municipality
REM Version: 1.0.0
REM ================================================================================================

echo.
echo ================================================================================================
echo    Excellence Award 2025 - SharePoint Deployment
echo    منصة التميز الداخلي - أداة النشر على SharePoint
echo ================================================================================================
echo.
echo This script will help you deploy the website to SharePoint easily.
echo هذا السكريبت سيساعدك على نشر الموقع على SharePoint بسهولة.
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

REM Ask for SharePoint site URL
echo Please enter your SharePoint site URL:
echo الرجاء إدخال رابط موقع SharePoint الخاص بك:
echo.
echo Example / مثال: https://contoso.sharepoint.com/sites/excellence
echo.
set /p SITE_URL="SharePoint Site URL: "

if "%SITE_URL%"=="" (
    echo.
    echo ❌ ERROR: Site URL is required!
    echo ❌ خطأ: عنوان الموقع مطلوب!
    echo.
    pause
    exit /b 1
)

echo.
echo ------------------------------------------------------------------------------------------------
echo.
echo You entered / أدخلت: %SITE_URL%
echo.
set /p CONFIRM="Is this correct? (Y/N) / هل هذا صحيح؟ (Y/N): "

if /i not "%CONFIRM%"=="Y" (
    echo.
    echo ❌ Deployment cancelled by user.
    echo ❌ تم إلغاء النشر من قبل المستخدم.
    echo.
    pause
    exit /b 0
)

echo.
echo ------------------------------------------------------------------------------------------------
echo.
echo Starting deployment to SharePoint...
echo بدء النشر على SharePoint...
echo.
echo This may take several minutes depending on your internet speed.
echo قد يستغرق هذا عدة دقائق حسب سرعة الإنترنت لديك.
echo.
echo Please wait... / الرجاء الانتظار...
echo.
echo ------------------------------------------------------------------------------------------------
echo.

REM Run PowerShell script
powershell -ExecutionPolicy Bypass -File "%~dp0Deploy-ToSharePoint.ps1" -SiteUrl "%SITE_URL%"

if %errorlevel% neq 0 (
    echo.
    echo ================================================================================================
    echo ❌ Deployment failed!
    echo ❌ فشل النشر!
    echo ================================================================================================
    echo.
    echo Please check the error messages above and:
    echo الرجاء التحقق من رسائل الخطأ أعلاه و:
    echo.
    echo 1. Ensure you have the correct permissions
    echo    تأكد من أن لديك الصلاحيات الصحيحة
    echo.
    echo 2. Check your SharePoint site URL
    echo    تحقق من رابط موقع SharePoint
    echo.
    echo 3. Review the deployment guide: SHAREPOINT_DEPLOYMENT_GUIDE.md
    echo    راجع دليل النشر: SHAREPOINT_DEPLOYMENT_GUIDE.md
    echo.
    echo ================================================================================================
    echo.
    pause
    exit /b 1
)

echo.
echo ================================================================================================
echo ✅ Deployment completed!
echo ✅ اكتمل النشر!
echo ================================================================================================
echo.
echo Your website should now be available on SharePoint.
echo موقعك الآن متاح على SharePoint.
echo.
echo Please check the information displayed above for the website URL.
echo الرجاء التحقق من المعلومات المعروضة أعلاه للحصول على رابط الموقع.
echo.
echo ================================================================================================
echo.
pause
