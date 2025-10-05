# 📦 دليل رفع ومزامنة الموقع مع OneDrive
## Complete Guide to Upload and Sync Website with OneDrive

---

## 📋 جدول المحتويات | Table of Contents

1. [نظرة عامة](#نظرة-عامة)
2. [المتطلبات الأساسية](#المتطلبات-الأساسية)
3. [الطريقة الأولى: الرفع المباشر عبر الويب](#الطريقة-الأولى-الرفع-المباشر-عبر-الويب)
4. [الطريقة الثانية: المزامنة التلقائية](#الطريقة-الثانية-المزامنة-التلقائية-الأفضل)
5. [الطريقة الثالثة: استخدام Git مع OneDrive](#الطريقة-الثالثة-استخدام-git-مع-onedrive)
6. [الطريقة الرابعة: PowerShell Automation](#الطريقة-الرابعة-powershell-automation)
7. [الطريقة الخامسة: استخدام OneDrive API](#الطريقة-الخامسة-استخدام-onedrive-api-متقدم)
8. [النسخ الاحتياطي التلقائي](#النسخ-الاحتياطي-التلقائي)
9. [المشاركة والتعاون](#المشاركة-والتعاون)
10. [حل المشاكل الشائعة](#حل-المشاكل-الشائعة)

---

## 🎯 نظرة عامة

هذا الدليل يشرح جميع الطرق الممكنة لرفع ومزامنة موقع Excellence Award 2025 مع OneDrive. OneDrive خدمة تخزين سحابية من Microsoft توفر:

- ✅ **مساحة تخزين:** 5 جيجابايت مجاناً (يمكن الزيادة مع Microsoft 365)
- ✅ **المزامنة التلقائية:** تحديث الملفات تلقائياً عبر جميع الأجهزة
- ✅ **النسخ الاحتياطي:** حماية ملفاتك من الفقدان
- ✅ **المشاركة:** إمكانية مشاركة الملفات مع الآخرين
- ✅ **الوصول من أي مكان:** الوصول لملفاتك عبر الويب والهاتف

---

## 📦 المتطلبات الأساسية

قبل البدء، تأكد من توفر:

### 1. حساب Microsoft
- إذا لم يكن لديك حساب، أنشئ واحد مجاناً من [outlook.com](https://outlook.com)
- أو استخدم حساب عملك إذا كان يدعم OneDrive

### 2. مساحة تخزين كافية
- حجم المشروع الحالي: حوالي 15-20 ميجابايت
- تأكد من أن لديك مساحة كافية في OneDrive

### 3. اتصال بالإنترنت
- اتصال مستقر لرفع الملفات
- سرعة جيدة للمزامنة السريعة

---

## 🌐 الطريقة الأولى: الرفع المباشر عبر الويب

هذه الطريقة الأسهل والأسرع للمبتدئين.

### الخطوات التفصيلية:

#### 1. الوصول إلى OneDrive
```
1. افتح متصفح الويب
2. انتقل إلى: https://onedrive.live.com
3. سجل الدخول بحساب Microsoft الخاص بك
```

#### 2. إنشاء مجلد للمشروع
```
1. انقر على زر "جديد" أو "New" في الأعلى
2. اختر "مجلد" أو "Folder"
3. اكتب الاسم: "Excellence_Award_2025"
4. اضغط "إنشاء" أو "Create"
```

#### 3. رفع الملفات

##### طريقة أ: رفع ملفات فردية
```
1. افتح المجلد الذي أنشأته
2. انقر على "رفع" أو "Upload"
3. اختر "ملفات" أو "Files"
4. حدد الملفات من جهازك:
   - index.html
   - README.md
   - plan-data.json
   - جميع ملفات HTML الأخرى
   - ملف الصوت sheikh-zayed-message.mp3
   - أي ملفات أخرى
5. انتظر حتى اكتمال الرفع
```

##### طريقة ب: رفع مجلد كامل
```
1. افتح المجلد "Excellence_Award_2025" في OneDrive
2. انقر على "رفع" أو "Upload"
3. اختر "مجلد" أو "Folder"
4. حدد مجلد المشروع بالكامل من جهازك
5. سيتم رفع جميع الملفات تلقائياً
```

#### 4. التحقق من الرفع
```
1. تأكد من أن جميع الملفات موجودة
2. تحقق من حجم الملفات
3. جرّب فتح بعض الملفات للتأكد من سلامتها
```

### ✅ المميزات:
- سهل الاستخدام
- لا يحتاج تثبيت برامج
- يعمل من أي جهاز

### ⚠️ العيوب:
- يدوي ويحتاج تكرار عند كل تحديث
- أبطأ للملفات الكبيرة
- لا يوجد مزامنة تلقائية

---

## 🔄 الطريقة الثانية: المزامنة التلقائية (الأفضل)

هذه الطريقة الموصى بها لأنها توفر مزامنة تلقائية مستمرة.

### الخطوات التفصيلية:

#### 1. تثبيت تطبيق OneDrive

##### على Windows 10/11:
- OneDrive مثبت مسبقاً
- ابحث عن أيقونة السحابة في شريط المهام

##### على Windows 7/8:
```
1. قم بتحميل OneDrive من:
   https://www.microsoft.com/ar-sa/microsoft-365/onedrive/download
2. شغّل ملف التثبيت
3. اتبع معالج التثبيت
4. سجل الدخول بحساب Microsoft
```

##### على macOS:
```
1. حمّل OneDrive من:
   https://www.microsoft.com/ar-sa/microsoft-365/onedrive/download
2. افتح ملف .dmg
3. اسحب OneDrive إلى مجلد Applications
4. شغّل OneDrive وسجل الدخول
```

##### على Linux:
```bash
# استخدم أداة غير رسمية مثل rclone
sudo apt install rclone
rclone config  # اتبع التعليمات لإعداد OneDrive
```

#### 2. تحديد مجلد OneDrive

بعد التثبيت، ستجد مجلد OneDrive في:
- **Windows:** `C:\Users\YourUsername\OneDrive`
- **Mac:** `~/OneDrive` أو `/Users/YourUsername/OneDrive`
- **Linux:** حسب إعداد rclone

#### 3. نسخ المشروع إلى OneDrive

##### على Windows (Command Prompt):
```cmd
# انتقل إلى موقع المشروع الأصلي
cd C:\path\to\your\project

# انسخ المشروع بالكامل إلى OneDrive
xcopy /E /I /Y Excellence_Award_2025 "%USERPROFILE%\OneDrive\Excellence_Award_2025"
```

##### على Windows (PowerShell):
```powershell
# تحديد المسارات
$source = "C:\path\to\Excellence_Award_2025"
$destination = "$env:USERPROFILE\OneDrive\Excellence_Award_2025"

# نسخ مع جميع المحتويات
Copy-Item -Path $source -Destination $destination -Recurse -Force

Write-Host "تم النسخ بنجاح!" -ForegroundColor Green
```

##### على Mac/Linux:
```bash
# باستخدام cp
cp -r /path/to/Excellence_Award_2025 ~/OneDrive/

# أو باستخدام rsync (أفضل)
rsync -av /path/to/Excellence_Award_2025 ~/OneDrive/
```

#### 4. التحقق من المزامنة

```
1. افتح OneDrive على الويب: https://onedrive.live.com
2. تأكد من ظهور مجلد "Excellence_Award_2025"
3. تحقق من وجود جميع الملفات
4. أيقونة OneDrive ستظهر علامة زرقاء ✓ عند اكتمال المزامنة
```

#### 5. العمل مع المزامنة التلقائية

من الآن فصاعداً:
```
- أي تعديل في مجلد OneDrive سيتم مزامنته تلقائياً
- يمكنك العمل مباشرة من مجلد OneDrive
- التغييرات ستظهر على جميع أجهزتك
```

### ✅ المميزات:
- مزامنة تلقائية فورية
- نسخ احتياطي مستمر
- الوصول من جميع الأجهزة
- حماية من فقدان البيانات

### ⚠️ العيوب:
- يحتاج تثبيت تطبيق
- يستهلك مساحة على القرص الصلب
- يحتاج اتصال إنترنت مستمر للمزامنة

---

## 🔗 الطريقة الثالثة: استخدام Git مع OneDrive

هذه الطريقة ممتازة للمطورين الذين يستخدمون Git.

### الخطوات:

#### 1. استنساخ المستودع مباشرة في OneDrive
```bash
# انتقل إلى مجلد OneDrive
cd ~/OneDrive  # Mac/Linux
# أو
cd C:\Users\YourName\OneDrive  # Windows

# استنساخ المشروع من GitHub
git clone https://github.com/aliabdelaal-adm/Excellence_Award_2025.git

# الآن المشروع في OneDrive ومتصل بـ Git
```

#### 2. العمل على المشروع
```bash
# انتقل إلى مجلد المشروع
cd Excellence_Award_2025

# قم بتعديلاتك...

# احفظ التغييرات في Git
git add .
git commit -m "تحديث المشروع"
git push origin main

# OneDrive سيزامن التغييرات تلقائياً
```

#### 3. المزامنة عبر الأجهزة
```bash
# على جهاز آخر متصل بنفس OneDrive
cd ~/OneDrive/Excellence_Award_2025

# احصل على آخر التحديثات من GitHub
git pull origin main

# التغييرات ستتزامن مع OneDrive أيضاً
```

### ✅ المميزات:
- الجمع بين Git وOneDrive
- نسخ احتياطي مزدوج (GitHub + OneDrive)
- تتبع الإصدارات
- التعاون مع الفريق

### ⚠️ نصيحة هامة:
```
⚠️ تجنب تعديل نفس الملف من جهازين في نفس الوقت
⚠️ استخدم git pull قبل أي تعديل جديد
⚠️ OneDrive قد يسبب تعارضات إذا تم التعديل المتزامن
```

---

## 🤖 الطريقة الرابعة: PowerShell Automation

أتمتة عملية الرفع والمزامنة باستخدام سكريبت PowerShell.

### إنشاء سكريبت المزامنة:

```powershell
# احفظ هذا الملف باسم: Sync-ToOneDrive.ps1

# ==================================================
# سكريبت مزامنة Excellence Award 2025 مع OneDrive
# ==================================================

param(
    [string]$SourcePath = ".",
    [string]$OneDrivePath = "$env:USERPROFILE\OneDrive\Excellence_Award_2025"
)

Write-Host "🚀 بدء المزامنة مع OneDrive..." -ForegroundColor Cyan

# التحقق من وجود المجلد المصدر
if (-not (Test-Path $SourcePath)) {
    Write-Host "❌ المجلد المصدر غير موجود: $SourcePath" -ForegroundColor Red
    exit 1
}

# إنشاء مجلد الوجهة إذا لم يكن موجوداً
if (-not (Test-Path $OneDrivePath)) {
    Write-Host "📁 إنشاء مجلد OneDrive..." -ForegroundColor Yellow
    New-Item -Path $OneDrivePath -ItemType Directory -Force | Out-Null
}

# قائمة الملفات المستبعدة
$exclude = @(
    '.git',
    'node_modules',
    '.DS_Store',
    'Thumbs.db',
    '*.tmp',
    '*.log'
)

# نسخ الملفات
Write-Host "📋 نسخ الملفات..." -ForegroundColor Yellow

$files = Get-ChildItem -Path $SourcePath -Recurse -File | 
    Where-Object { 
        $file = $_
        -not ($exclude | Where-Object { $file.FullName -like "*$_*" })
    }

$totalFiles = $files.Count
$current = 0

foreach ($file in $files) {
    $current++
    $relativePath = $file.FullName.Substring($SourcePath.Length)
    $targetPath = Join-Path $OneDrivePath $relativePath
    $targetDir = Split-Path $targetPath -Parent
    
    if (-not (Test-Path $targetDir)) {
        New-Item -Path $targetDir -ItemType Directory -Force | Out-Null
    }
    
    Copy-Item -Path $file.FullName -Destination $targetPath -Force
    
    $percent = [math]::Round(($current / $totalFiles) * 100)
    Write-Progress -Activity "مزامنة الملفات" -Status "$current من $totalFiles" -PercentComplete $percent
}

Write-Progress -Activity "مزامنة الملفات" -Completed

# إحصائيات
$totalSize = ($files | Measure-Object -Property Length -Sum).Sum
$sizeMB = [math]::Round($totalSize / 1MB, 2)

Write-Host ""
Write-Host "✅ اكتملت المزامنة بنجاح!" -ForegroundColor Green
Write-Host "📊 الإحصائيات:" -ForegroundColor Cyan
Write-Host "   - عدد الملفات: $totalFiles" -ForegroundColor White
Write-Host "   - الحجم الإجمالي: $sizeMB MB" -ForegroundColor White
Write-Host "   - المجلد: $OneDrivePath" -ForegroundColor White
Write-Host ""
Write-Host "🌐 تحقق من OneDrive على الويب:" -ForegroundColor Cyan
Write-Host "   https://onedrive.live.com" -ForegroundColor Blue
```

### استخدام السكريبت:

#### 1. حفظ السكريبت
```powershell
# احفظ السكريبت في مجلد المشروع
# الاسم: Sync-ToOneDrive.ps1
```

#### 2. السماح بتشغيل السكريبتات (مرة واحدة)
```powershell
# افتح PowerShell كمسؤول
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

#### 3. تشغيل السكريبت
```powershell
# من مجلد المشروع
.\Sync-ToOneDrive.ps1

# أو من أي مكان
.\Sync-ToOneDrive.ps1 -SourcePath "C:\path\to\Excellence_Award_2025"
```

#### 4. جدولة المزامنة التلقائية
```powershell
# إنشاء مهمة مجدولة للمزامنة كل ساعة
$action = New-ScheduledTaskAction -Execute "PowerShell.exe" `
    -Argument "-File `"C:\path\to\Sync-ToOneDrive.ps1`""

$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date) `
    -RepetitionInterval (New-TimeSpan -Hours 1) `
    -RepetitionDuration ([TimeSpan]::MaxValue)

Register-ScheduledTask -TaskName "SyncToOneDrive" `
    -Action $action -Trigger $trigger `
    -Description "مزامنة Excellence Award 2025 مع OneDrive"
```

### ✅ المميزات:
- أتمتة كاملة
- استبعاد ملفات غير مرغوبة
- تقارير مفصلة
- إمكانية الجدولة

---

## 🔧 الطريقة الخامسة: استخدام OneDrive API (متقدم)

للمطورين الذين يريدون تكامل برمجي كامل.

### إعداد OneDrive API:

#### 1. تسجيل التطبيق
```
1. انتقل إلى: https://portal.azure.com
2. اختر "Azure Active Directory"
3. اختر "App registrations" → "New registration"
4. سجل التطبيق واحصل على:
   - Application (client) ID
   - Client Secret
```

#### 2. سكريبت Python للرفع
```python
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
سكريبت رفع ملفات Excellence Award 2025 إلى OneDrive
باستخدام Microsoft Graph API
"""

import os
import requests
from pathlib import Path

# إعدادات API
CLIENT_ID = 'your-client-id'
CLIENT_SECRET = 'your-client-secret'
TENANT_ID = 'common'

# الحصول على Access Token
def get_access_token():
    url = f'https://login.microsoftonline.com/{TENANT_ID}/oauth2/v2.0/token'
    data = {
        'client_id': CLIENT_ID,
        'client_secret': CLIENT_SECRET,
        'scope': 'https://graph.microsoft.com/.default',
        'grant_type': 'client_credentials'
    }
    response = requests.post(url, data=data)
    return response.json()['access_token']

# رفع ملف إلى OneDrive
def upload_file(token, local_path, onedrive_path):
    with open(local_path, 'rb') as file:
        content = file.read()
    
    url = f'https://graph.microsoft.com/v1.0/me/drive/root:/{onedrive_path}:/content'
    headers = {
        'Authorization': f'Bearer {token}',
        'Content-Type': 'application/octet-stream'
    }
    
    response = requests.put(url, headers=headers, data=content)
    return response.status_code == 201

# رفع مجلد كامل
def upload_project(project_path, onedrive_folder='Excellence_Award_2025'):
    token = get_access_token()
    project_path = Path(project_path)
    
    # ملفات مستبعدة
    exclude = {'.git', 'node_modules', '__pycache__', '.DS_Store'}
    
    for file_path in project_path.rglob('*'):
        if file_path.is_file() and not any(e in file_path.parts for e in exclude):
            relative_path = file_path.relative_to(project_path)
            onedrive_path = f"{onedrive_folder}/{relative_path}"
            
            print(f"رفع: {relative_path}")
            if upload_file(token, file_path, onedrive_path):
                print(f"✅ نجح: {relative_path}")
            else:
                print(f"❌ فشل: {relative_path}")

if __name__ == '__main__':
    upload_project('.')
    print("\n🎉 اكتمل رفع المشروع إلى OneDrive!")
```

#### 3. استخدام السكريبت
```bash
# تثبيت المكتبات المطلوبة
pip install requests

# تشغيل السكريبت
python upload_to_onedrive.py
```

---

## ⏰ النسخ الاحتياطي التلقائي

### إعداد نظام نسخ احتياطي تلقائي:

#### Windows Batch Script
```batch
@echo off
REM =====================================================
REM سكريبت النسخ الاحتياطي التلقائي
REM =====================================================

set SOURCE=C:\path\to\Excellence_Award_2025
set ONEDRIVE=%USERPROFILE%\OneDrive\Backups\Excellence_Award_2025_%date:~-4%%date:~-10,2%%date:~-7,2%

echo 🔄 بدء النسخ الاحتياطي...
xcopy /E /I /Y "%SOURCE%" "%ONEDRIVE%"

if %ERRORLEVEL% == 0 (
    echo ✅ اكتمل النسخ الاحتياطي بنجاح!
) else (
    echo ❌ حدث خطأ في النسخ الاحتياطي!
)

pause
```

#### Linux/Mac Bash Script
```bash
#!/bin/bash
# =====================================================
# سكريبت النسخ الاحتياطي التلقائي
# =====================================================

SOURCE="/path/to/Excellence_Award_2025"
ONEDRIVE="$HOME/OneDrive/Backups/Excellence_Award_2025_$(date +%Y%m%d)"

echo "🔄 بدء النسخ الاحتياطي..."
rsync -av --exclude='.git' --exclude='node_modules' "$SOURCE" "$ONEDRIVE"

if [ $? -eq 0 ]; then
    echo "✅ اكتمل النسخ الاحتياطي بنجاح!"
else
    echo "❌ حدث خطأ في النسخ الاحتياطي!"
fi
```

### جدولة النسخ الاحتياطي:

#### على Windows (Task Scheduler)
```
1. افتح "Task Scheduler"
2. اختر "Create Basic Task"
3. اسم المهمة: "OneDrive Backup - Excellence Award"
4. المشغل: يومياً في منتصف الليل
5. الإجراء: تشغيل البرنامج → اختر ملف .bat
```

#### على Mac/Linux (cron)
```bash
# تحرير crontab
crontab -e

# إضافة مهمة نسخ احتياطي يومي في الساعة 2 صباحاً
0 2 * * * /path/to/backup-script.sh
```

---

## 👥 المشاركة والتعاون

### مشاركة المشروع مع الآخرين:

#### 1. مشاركة رابط مباشر
```
1. افتح OneDrive على الويب
2. انتقل إلى مجلد Excellence_Award_2025
3. انقر بزر الماوس الأيمن على المجلد
4. اختر "مشاركة" أو "Share"
5. اختر الأذونات:
   - "يمكنه العرض" للقراءة فقط
   - "يمكنه التحرير" للتعديل
6. أنشئ الرابط وشاركه
```

#### 2. مشاركة مع أشخاص محددين
```
1. اختر "مشاركة" من المجلد
2. أدخل عناوين البريد الإلكتروني
3. اختر الأذونات
4. أضف رسالة اختيارية
5. أرسل الدعوة
```

#### 3. إدارة الأذونات
```
- عرض فقط: القراءة بدون تعديل
- تحرير: القراءة والتعديل
- إيقاف المشاركة: إلغاء الوصول
```

---

## 🔧 حل المشاكل الشائعة

### المشكلة 1: "لا توجد مساحة كافية"
```
الحل:
1. حذف الملفات غير الضرورية من OneDrive
2. ترقية الخطة إلى Microsoft 365
3. استخدام خدمة تخزين أخرى للملفات الكبيرة
```

### المشكلة 2: "فشلت المزامنة"
```
الحل:
1. تحقق من اتصال الإنترنت
2. أعد تشغيل تطبيق OneDrive
3. قم بتسجيل الخروج والدخول مرة أخرى
4. تحقق من حالة خدمة OneDrive: https://status.cloud.microsoft/
```

### المشكلة 3: "تعارض في الملفات"
```
الحل:
1. ابحث عن ملفات بـ "conflict" في الاسم
2. قارن الإصدارات
3. احتفظ بالإصدار الصحيح
4. احذف الملفات المتعارضة
```

### المشكلة 4: "بطء المزامنة"
```
الحل:
1. تحقق من سرعة الإنترنت
2. أوقف المزامنة المؤقتة للملفات الأخرى
3. زد من سرعة الرفع في إعدادات OneDrive
4. استخدم شبكة أسرع
```

### المشكلة 5: "لا يمكن فتح الملفات"
```
الحل:
1. تأكد من اكتمال المزامنة (علامة ✓)
2. تحقق من صلاحيات الملف
3. حاول فتح الملف من OneDrive على الويب
4. أعد تحميل الملف
```

---

## 📊 مقارنة الطرق

| الطريقة | السهولة | السرعة | التلقائية | للمطورين | التقييم |
|---------|---------|---------|-----------|-----------|---------|
| الرفع عبر الويب | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ❌ | ❌ | 3/5 |
| المزامنة التلقائية | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ✅ | ✅ | 5/5 |
| Git + OneDrive | ⭐⭐⭐ | ⭐⭐⭐⭐ | ✅ | ✅✅ | 4/5 |
| PowerShell | ⭐⭐ | ⭐⭐⭐⭐⭐ | ✅ | ✅✅✅ | 4/5 |
| OneDrive API | ⭐ | ⭐⭐⭐⭐⭐ | ✅ | ✅✅✅ | 4/5 |

---

## ✅ قائمة التحقق النهائية

قبل إنهاء العملية، تأكد من:

- [ ] تم رفع جميع الملفات الضرورية
- [ ] تم التحقق من سلامة الملفات
- [ ] تم اختبار المزامنة
- [ ] تم إعداد النسخ الاحتياطي التلقائي (اختياري)
- [ ] تم مشاركة المشروع مع الأشخاص المطلوبين (إن وجد)
- [ ] تم توثيق كلمة المرور وبيانات الحساب بشكل آمن

---

## 🎯 التوصيات النهائية

### للمستخدم العادي:
✅ **استخدم الطريقة الثانية (المزامنة التلقائية)**
- الأسهل والأكثر فعالية
- لا تحتاج معرفة تقنية
- توفر حماية تلقائية

### للمطور:
✅ **استخدم الطريقة الثالثة (Git + OneDrive)**
- تجمع بين التحكم بالإصدارات والنسخ الاحتياطي
- مثالية لبيئة التطوير
- تدعم التعاون مع الفريق

### للمؤسسات:
✅ **استخدم الطريقة الرابعة أو الخامسة**
- أتمتة كاملة
- تكامل مع الأنظمة الأخرى
- مراقبة وتقارير مفصلة

---

## 📞 الدعم والمساعدة

إذا واجهت أي مشكلة:

1. **وثائق Microsoft:**
   - [مساعدة OneDrive](https://support.microsoft.com/ar-sa/onedrive)

2. **المجتمع:**
   - [منتديات Microsoft](https://answers.microsoft.com)

3. **التواصل المباشر:**
   - Email: Ali.Abdelaal@adm.gov.ae
   - هاتف: 0581187777

---

## 📝 ملاحظات إضافية

### OneDrive vs GitHub Pages
```
OneDrive:
✅ تخزين ونسخ احتياطي
✅ مشاركة ملفات
❌ لا يمكن استضافة مواقع مباشرة

GitHub Pages:
✅ استضافة مواقع ويب مجانية
✅ رابط عام للموقع
✅ تكامل مع Git
```

### الاستخدام المثالي:
```
1. استخدم GitHub Pages لاستضافة الموقع
2. استخدم OneDrive للنسخ الاحتياطي
3. استخدم Git للتحكم بالإصدارات
```

---

## 🎉 الخاتمة

الآن لديك دليل شامل لرفع ومزامنة موقع Excellence Award 2025 مع OneDrive. اختر الطريقة التي تناسب احتياجاتك وابدأ في حماية عملك!

**تذكر:**
- النسخ الاحتياطي المنتظم يحمي عملك
- المزامنة التلقائية توفر وقتك
- OneDrive ليس بديلاً عن GitHub للاستضافة

---

**تم إعداده بكل عناية لجائزة التميز 2025** 🏆

**Created with care for Excellence Award 2025** 🏆
