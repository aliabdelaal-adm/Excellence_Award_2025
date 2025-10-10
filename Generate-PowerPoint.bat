@echo off
REM ====================================================================
REM مولد عروض PowerPoint التلقائي
REM يقوم بإنشاء ملفات PowerPoint لجميع المشاريع والإنجازات
REM ====================================================================

echo ========================================
echo    مولد عروض PowerPoint
echo    PowerPoint Generator
echo ========================================
echo.

REM تحقق من وجود Python
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python غير مثبت على النظام
    echo [ERROR] Python is not installed
    echo.
    echo يرجى تثبيت Python من: https://www.python.org/downloads/
    echo Please install Python from: https://www.python.org/downloads/
    pause
    exit /b 1
)

echo [✓] Python مثبت بنجاح
echo [✓] Python is installed
echo.

REM تحقق من وجود مكتبة python-pptx
python -c "import pptx" >nul 2>&1
if errorlevel 1 (
    echo [!] مكتبة python-pptx غير مثبتة
    echo [!] python-pptx library not installed
    echo.
    echo [→] جاري التثبيت...
    echo [→] Installing...
    pip install python-pptx
    echo.
)

echo [✓] جميع المتطلبات متوفرة
echo [✓] All requirements satisfied
echo.

REM تشغيل السكريبت
echo [→] جاري إنشاء ملفات PowerPoint...
echo [→] Generating PowerPoint files...
echo.

python generate_project_presentations.py

if errorlevel 1 (
    echo.
    echo [✗] حدث خطأ أثناء إنشاء الملفات
    echo [✗] An error occurred during generation
    pause
    exit /b 1
)

echo.
echo ========================================
echo [✓] تم الانتهاء بنجاح!
echo [✓] Completed successfully!
echo ========================================
echo.
echo يمكنك الآن فتح الملفات من المجلد:
echo You can now open files from folder:
echo PowerPoint_Presentations\
echo.

pause
