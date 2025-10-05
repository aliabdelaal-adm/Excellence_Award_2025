# 🌐 دليل الرفع متعدد المنصات | Cross-Platform Upload Guide

## 📋 نظرة عامة | Overview

This guide explains how to upload files to OneDrive on different operating systems (Windows, macOS, Linux).

هذا الدليل يشرح كيفية رفع الملفات إلى OneDrive على أنظمة تشغيل مختلفة (Windows، macOS، Linux).

---

## 🪟 Windows Users | مستخدمي Windows

### ✅ الطريقة الموصى بها | Recommended Method

**استخدم الملف:** `Upload-ToOneDrive.bat`

**كيف:**
1. اذهب إلى مجلد المشروع
2. انقر نقراً مزدوجاً على `Upload-ToOneDrive.bat`
3. اتبع التعليمات على الشاشة
4. اكتب `Y` عندما يُطلب منك التأكيد
5. انتظر حتى تكتمل العملية

### البديل: PowerShell مباشرة

افتح PowerShell في مجلد المشروع واكتب:
```powershell
.\Upload-ToOneDrive.ps1
```

---

## 🍎 macOS Users | مستخدمي macOS

### المتطلبات | Requirements

1. **OneDrive for Mac** - يجب أن يكون مثبتاً ومفعلاً
   - تحميل من: https://www.microsoft.com/microsoft-365/onedrive/download
   
2. **PowerShell for Mac** - مطلوب لتشغيل السكريبت
   ```bash
   brew install --cask powershell
   ```

### ✅ الطريقة الموصى بها | Recommended Method

**استخدم الملف:** `Upload-ToOneDrive.sh`

**كيف:**
1. افتح Terminal (من Applications > Utilities > Terminal)
2. انتقل إلى مجلد المشروع:
   ```bash
   cd /path/to/Excellence_Award_2025
   ```
3. شغّل السكريبت:
   ```bash
   ./Upload-ToOneDrive.sh
   ```
4. اتبع التعليمات على الشاشة

### البديل: PowerShell مباشرة

```bash
pwsh ./Upload-ToOneDrive.ps1
```

### 📍 مسارات OneDrive الشائعة على Mac

```
~/Library/CloudStorage/OneDrive - adm/
~/OneDrive/
```

---

## 🐧 Linux Users | مستخدمي Linux

### المتطلبات | Requirements

1. **OneDrive Client for Linux**
   
   الخيار الموصى به: [abraunegg/onedrive](https://github.com/abraunegg/onedrive)
   
   **تثبيت على Ubuntu/Debian:**
   ```bash
   sudo apt install onedrive
   onedrive --synchronize
   ```
   
   **تثبيت على Fedora:**
   ```bash
   sudo dnf install onedrive
   onedrive --synchronize
   ```

2. **PowerShell for Linux**
   
   **Ubuntu/Debian:**
   ```bash
   # Update the list of packages
   sudo apt-get update
   
   # Install pre-requisite packages
   sudo apt-get install -y wget apt-transport-https software-properties-common
   
   # Download the Microsoft repository GPG keys
   wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"
   
   # Register the Microsoft repository GPG keys
   sudo dpkg -i packages-microsoft-prod.deb
   
   # Update the list of packages after we added packages.microsoft.com
   sudo apt-get update
   
   # Install PowerShell
   sudo apt-get install -y powershell
   ```
   
   **Fedora:**
   ```bash
   sudo dnf install powershell
   ```

### ✅ الطريقة الموصى بها | Recommended Method

**استخدم الملف:** `Upload-ToOneDrive.sh`

**كيف:**
1. افتح Terminal
2. انتقل إلى مجلد المشروع:
   ```bash
   cd /path/to/Excellence_Award_2025
   ```
3. تأكد من أن الملف قابل للتنفيذ:
   ```bash
   chmod +x Upload-ToOneDrive.sh
   ```
4. شغّل السكريبت:
   ```bash
   ./Upload-ToOneDrive.sh
   ```
5. اتبع التعليمات على الشاشة

### البديل: PowerShell مباشرة

```bash
pwsh ./Upload-ToOneDrive.ps1
```

### 📍 مسارات OneDrive الشائعة على Linux

```
~/OneDrive/
```

---

## 🔧 حل المشكلات | Troubleshooting

### ❌ "PowerShell not found" على Mac/Linux

**الحل:**
```bash
# macOS
brew install --cask powershell

# Ubuntu/Debian
sudo apt-get install powershell

# Fedora
sudo dnf install powershell
```

### ❌ "Permission denied" عند تشغيل .sh على Mac/Linux

**الحل:**
```bash
chmod +x Upload-ToOneDrive.sh
```

### ❌ "OneDrive folder not found" على Mac/Linux

**على macOS:**
1. تأكد من تثبيت OneDrive for Mac
2. سجل دخول بحساب العمل
3. انتظر حتى تكتمل المزامنة الأولية
4. المسار عادة: `~/Library/CloudStorage/OneDrive - adm/`

**على Linux:**
1. ثبت OneDrive client: https://github.com/abraunegg/onedrive
2. أعد الإعداد:
   ```bash
   onedrive --synchronize
   ```
3. المسار عادة: `~/OneDrive/`

### ❌ "Execution Policy" خطأ على Windows

**الحل:**
افتح PowerShell كمسؤول واكتب:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

---

## 📊 مقارنة الطرق | Method Comparison

| Platform | Best Method | Alternative |
|----------|-------------|-------------|
| **Windows** | `Upload-ToOneDrive.bat` | `.\Upload-ToOneDrive.ps1` |
| **macOS** | `./Upload-ToOneDrive.sh` | `pwsh ./Upload-ToOneDrive.ps1` |
| **Linux** | `./Upload-ToOneDrive.sh` | `pwsh ./Upload-ToOneDrive.ps1` |

---

## ✨ مميزات السكريبت | Script Features

- ✅ **كشف تلقائي** لمجلد OneDrive على جميع المنصات
- ✅ **شريط تقدم** يعرض حالة الرفع
- ✅ **معالجة الأخطاء** الشاملة
- ✅ **دعم ثنائي اللغة** (عربي/إنجليزي)
- ✅ **نسخ احتياطي آمن** - لا يحذف أي ملفات موجودة

---

## 🎯 الخطوات التالية | Next Steps

بعد رفع الملفات بنجاح:

1. ✅ تحقق من المزامنة في OneDrive
2. ✅ افتح الرابط للتحقق من الملفات:
   ```
   https://admunicipality-my.sharepoint.com/personal/ali_abdelaal_adm_gov_ae/Documents/Excellence_Award_2025
   ```
3. ✅ يمكنك الآن العمل مباشرة من مجلد OneDrive
4. ✅ جميع التغييرات ستُزامن تلقائياً

---

## 📚 أدلة إضافية | Additional Guides

- 📖 [QUICK_UPLOAD_GUIDE.md](QUICK_UPLOAD_GUIDE.md) - دليل سريع
- 📖 [HOW_TO_UPLOAD_TO_YOUR_ONEDRIVE.md](HOW_TO_UPLOAD_TO_YOUR_ONEDRIVE.md) - دليل مفصل
- 📖 [ONEDRIVE_UPLOAD_INSTRUCTIONS.md](ONEDRIVE_UPLOAD_INSTRUCTIONS.md) - تعليمات كاملة

---

## 💡 نصائح الخبراء | Pro Tips

### للجميع | For Everyone

1. **اعمل مباشرة في OneDrive**: بعد الرفع الأول، انقل مشروعك إلى مجلد OneDrive واعمل من هناك - ستتزامن التغييرات تلقائياً!

2. **تحقق من المزامنة**: راقب أيقونة OneDrive للتأكد من اكتمال المزامنة

### لمستخدمي Mac/Linux

3. **استخدم الأسماء المستعارة (Aliases)**:
   ```bash
   # أضف إلى ~/.bashrc أو ~/.zshrc
   alias upload-onedrive="cd /path/to/Excellence_Award_2025 && ./Upload-ToOneDrive.sh"
   ```

4. **استخدم Cron للمزامنة التلقائية** (اختياري):
   ```bash
   # افتح crontab
   crontab -e
   
   # أضف سطر لتشغيل السكريبت يومياً في الساعة 6 مساءً
   0 18 * * * cd /path/to/Excellence_Award_2025 && ./Upload-ToOneDrive.sh
   ```

---

## ❓ أسئلة شائعة | FAQ

### Q: هل أحتاج اتصال إنترنت؟
**A:** نعم، لمزامنة الملفات مع السحابة. لكن الملفات ستُنسخ إلى OneDrive المحلي أولاً.

### Q: كم يستغرق الرفع؟
**A:** عادة أقل من دقيقة. المزامنة مع السحابة قد تستغرق 2-3 دقائق إضافية.

### Q: هل يمكنني استخدام السكريبت على أكثر من جهاز؟
**A:** نعم! السكريبت متوافق مع جميع المنصات.

### Q: ماذا لو واجهت مشكلة؟
**A:** راجع قسم حل المشكلات أعلاه، أو افتح issue على GitHub.

---

## 📞 الدعم | Support

إذا واجهت أي مشكلة:
1. راجع قسم حل المشكلات أعلاه
2. تحقق من الأدلة الإضافية
3. اتصل بفريق IT

---

**Created with ❤️ for Excellence Award 2025**

**Dr. Ali Abdelaal**  
**Animal Welfare Department - Abu Dhabi Municipality**
