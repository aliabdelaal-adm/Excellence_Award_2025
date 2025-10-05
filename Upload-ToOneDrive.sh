#!/bin/bash
# ================================================================================================
# OneDrive Upload Launcher (Linux/Mac)
# Script Name: Upload-ToOneDrive.sh
# Description: Cross-platform launcher for OneDrive upload (for Linux/Mac users)
# Author: Dr. Ali Abdelaal
# Department: Animal Welfare Department - Abu Dhabi Municipality
# Version: 1.0.0
# ================================================================================================

echo ""
echo "================================================================================================"
echo "   Excellence Award 2025 - OneDrive Upload"
echo "   رفع ملفات جائزة التميز 2025 إلى OneDrive"
echo "================================================================================================"
echo ""
echo "This script will upload all project files to your OneDrive automatically."
echo "هذا السكريبت سيرفع جميع ملفات المشروع إلى OneDrive الخاص بك تلقائياً."
echo ""
echo "------------------------------------------------------------------------------------------------"
echo ""

# Check if PowerShell is available
if ! command -v pwsh &> /dev/null; then
    echo "ERROR: PowerShell is not available on this system!"
    echo "خطأ: PowerShell غير متوفر على هذا النظام!"
    echo ""
    echo "Please install PowerShell first."
    echo "الرجاء تثبيت PowerShell أولاً."
    echo ""
    echo "Installation instructions:"
    echo "  - macOS: brew install --cask powershell"
    echo "  - Linux: https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-linux"
    echo ""
    read -p "Press Enter to exit..."
    exit 1
fi

echo "✅ PowerShell is available"
echo ""

# Check if OneDrive is installed (common paths for macOS/Linux)
ONEDRIVE_FOUND=false

# Check macOS OneDrive paths
if [ -d "$HOME/OneDrive" ] || [ -d "$HOME/Library/CloudStorage/OneDrive" ]; then
    ONEDRIVE_FOUND=true
fi

# Check Linux OneDrive paths
if [ -d "$HOME/OneDrive" ]; then
    ONEDRIVE_FOUND=true
fi

if [ "$ONEDRIVE_FOUND" = false ]; then
    echo ""
    echo "⚠️  WARNING: OneDrive folder not found!"
    echo "⚠️  تحذير: لم يتم العثور على مجلد OneDrive!"
    echo ""
    echo "Please ensure OneDrive is installed and logged in."
    echo "الرجاء التأكد من تثبيت OneDrive وتسجيل الدخول."
    echo ""
    echo "You can download OneDrive from:"
    echo "يمكنك تحميل OneDrive من:"
    echo "  - macOS: https://www.microsoft.com/microsoft-365/onedrive/download"
    echo "  - Linux: https://github.com/abraunegg/onedrive (unofficial client)"
    echo ""
    read -p "Press Enter to continue anyway..."
fi

echo "✅ OneDrive is installed or will be configured"
echo ""
echo "------------------------------------------------------------------------------------------------"
echo ""
echo "Starting upload process..."
echo "بدء عملية الرفع..."
echo ""
echo "This will copy all project files to your OneDrive folder."
echo "سيتم نسخ جميع ملفات المشروع إلى مجلد OneDrive الخاص بك."
echo ""
echo "Please wait... / الرجاء الانتظار..."
echo ""
echo "------------------------------------------------------------------------------------------------"
echo ""

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Run PowerShell script
pwsh -ExecutionPolicy Bypass -File "$SCRIPT_DIR/Upload-ToOneDrive.ps1"

if [ $? -ne 0 ]; then
    echo ""
    echo "================================================================================================"
    echo "❌ Upload failed!"
    echo "❌ فشل الرفع!"
    echo "================================================================================================"
    echo ""
    echo "Please check the error messages above."
    echo "الرجاء التحقق من رسائل الخطأ أعلاه."
    echo ""
    echo "================================================================================================"
    echo ""
    read -p "Press Enter to exit..."
    exit 1
fi

echo ""
echo "================================================================================================"
echo "✅ Upload completed!"
echo "✅ اكتمل الرفع!"
echo "================================================================================================"
echo ""
read -p "Press Enter to exit..."
