#!/bin/bash
# ====================================================================
# مولد عروض PowerPoint التلقائي
# يقوم بإنشاء ملفات PowerPoint لجميع المشاريع والإنجازات
# ====================================================================

echo "========================================"
echo "   مولد عروض PowerPoint"
echo "   PowerPoint Generator"
echo "========================================"
echo ""

# تحقق من وجود Python
if ! command -v python3 &> /dev/null; then
    echo "[✗] Python3 غير مثبت على النظام"
    echo "[✗] Python3 is not installed"
    echo ""
    echo "يرجى تثبيت Python3"
    echo "Please install Python3"
    exit 1
fi

echo "[✓] Python3 مثبت بنجاح"
echo "[✓] Python3 is installed"
echo ""

# تحقق من وجود مكتبة python-pptx
if ! python3 -c "import pptx" &> /dev/null; then
    echo "[!] مكتبة python-pptx غير مثبتة"
    echo "[!] python-pptx library not installed"
    echo ""
    echo "[→] جاري التثبيت..."
    echo "[→] Installing..."
    pip3 install python-pptx Pillow
    echo ""
fi

echo "[✓] جميع المتطلبات متوفرة"
echo "[✓] All requirements satisfied"
echo ""

# تشغيل السكريبت
echo "[→] جاري إنشاء ملفات PowerPoint..."
echo "[→] Generating PowerPoint files..."
echo ""

python3 generate_project_presentations.py

if [ $? -ne 0 ]; then
    echo ""
    echo "[✗] حدث خطأ أثناء إنشاء الملفات"
    echo "[✗] An error occurred during generation"
    exit 1
fi

echo ""
echo "========================================"
echo "[✓] تم الانتهاء بنجاح!"
echo "[✓] Completed successfully!"
echo "========================================"
echo ""
echo "يمكنك الآن فتح الملفات من المجلد:"
echo "You can now open files from folder:"
echo "PowerPoint_Presentations/"
echo ""
