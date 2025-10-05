# 📤 تعليمات رفع الملفات إلى OneDrive | OneDrive Upload Instructions

## 🎯 نظرة عامة | Overview

هذا الدليل يشرح كيفية رفع جميع ملفات مشروع Excellence Award 2025 إلى OneDrive الخاص بك تلقائياً.

This guide explains how to automatically upload all Excellence Award 2025 project files to your OneDrive.

---

## 📋 المتطلبات | Prerequisites

### 1. تطبيق OneDrive Desktop
- يجب أن يكون تطبيق OneDrive مثبت على جهازك
- يجب أن تكون مسجل دخول بحساب المؤسسة: `ali.abdelaal@adm.gov.ae`
- تحميل OneDrive: https://www.microsoft.com/microsoft-365/onedrive/download

### 2. مساحة تخزين كافية
- حجم المشروع: حوالي 10 ميجابايت
- تأكد من توفر مساحة كافية في OneDrive

---

## 🚀 طريقة الاستخدام | How to Use

### الطريقة 1: استخدام الملف التنفيذي (.bat) - الأسهل ✨

1. **تأكد من تسجيل الدخول في OneDrive:**
   - افتح تطبيق OneDrive من شريط المهام
   - تأكد من أنك مسجل دخول بحساب العمل

2. **شغّل الملف التنفيذي:**
   - انقر نقراً مزدوجاً على ملف: `Upload-ToOneDrive.bat`
   - أو اضغط بالزر الأيمن واختر "تشغيل كمسؤول" (Run as Administrator)

3. **اتبع التعليمات على الشاشة:**
   - سيطلب منك تأكيد رفع الملفات
   - اضغط `Y` للمتابعة

4. **انتظر حتى اكتمال العملية:**
   - سيتم نسخ جميع الملفات تلقائياً
   - سترى تقرير بعدد الملفات التي تم رفعها

### الطريقة 2: استخدام PowerShell مباشرة

```powershell
# افتح PowerShell في مجلد المشروع
cd "path\to\Excellence_Award_2025"

# شغّل السكريبت
.\Upload-ToOneDrive.ps1
```

### الطريقة 3: تحديد مسار OneDrive يدوياً

```powershell
# إذا كان OneDrive في مكان غير قياسي
.\Upload-ToOneDrive.ps1 -OneDrivePath "C:\Users\ali.abdelaal\OneDrive - adm"
```

---

## 📍 أين ستُرفع الملفات؟ | Where Will Files Be Uploaded?

### المسار المحلي | Local Path:
```
C:\Users\ali.abdelaal\OneDrive - adm\Documents\Excellence_Award_2025\
```

### رابط الويب | Web URL:
```
https://admunicipality-my.sharepoint.com/personal/ali_abdelaal_adm_gov_ae/Documents/Excellence_Award_2025
```

---

## ✅ التحقق من نجاح الرفع | Verify Upload Success

### 1. تحقق من OneDrive المحلي:
- افتح مستكشف الملفات (File Explorer)
- انتقل إلى مجلد OneDrive
- ابحث عن مجلد `Excellence_Award_2025`
- تأكد من وجود جميع الملفات

### 2. تحقق من OneDrive عبر الويب:
- افتح المتصفح
- اذهب إلى: https://admunicipality-my.sharepoint.com
- انتقل إلى: My Files → Documents → Excellence_Award_2025
- تأكد من ظهور جميع الملفات

### 3. تحقق من حالة المزامنة:
- انظر لأيقونة OneDrive في شريط المهام (System Tray)
- علامة ✓ زرقاء = الملفات متزامنة
- أيقونة سحابة ☁ = جاري المزامنة
- علامة تحذير ⚠️ = مشكلة في المزامنة

---

## 📊 الملفات التي سيتم رفعها | Files to Be Uploaded

سيتم رفع جميع الملفات التالية:

### ملفات HTML:
- ✅ index.html (الصفحة الرئيسية)
- ✅ excellence-department-project.html
- ✅ inspection-plan-system.html
- ✅ beautiful-city-project.html
- ✅ creative-presentations-generator.html
- ✅ animal-welfare-system.html
- ✅ challenges-and-solutions.html
- ✅ benefits-summary.html
- ✅ value-impact-summary.html
- ✅ project-analysis-dashboard.html

### ملفات البيانات والوسائط:
- ✅ plan-data.json
- ✅ sheikh-zayed-message.mp3
- ✅ AwardGuideline3.pdf

### ملفات التوثيق:
- ✅ README.md
- ✅ ONEDRIVE_GUIDE.md
- ✅ SHAREPOINT_DEPLOYMENT_GUIDE.md
- ✅ وجميع ملفات .md الأخرى

### المجلدات الفرعية:
- ✅ التحليل_التفاعلي_-_نظام_إدارة_التقارير_الذكي
- ✅ التحليل_التفاعلي_-_مشروع_إدارة_التميز_المؤسسي
- ✅ التحليل_التفاعلي_-_مشروع_مظهر_أجمل_لمدينة_أفضل

### ملفات مستثناة (لن يتم رفعها):
- ❌ مجلد .git
- ❌ ملفات .log
- ❌ ملفات .tmp
- ❌ سكريبتات الرفع نفسها

---

## 🔧 حل المشكلات | Troubleshooting

### المشكلة 1: "OneDrive folder not found"
**الحل:**
1. تأكد من تثبيت OneDrive
2. سجل دخول بحساب المؤسسة
3. انتظر حتى يكتمل الإعداد الأولي
4. شغّل السكريبت مرة أخرى

### المشكلة 2: "Access Denied" أو "Permission Denied"
**الحل:**
1. شغّل السكريبت كمسؤول (Run as Administrator)
2. تأكد من أن OneDrive لا يقوم بمزامنة ملفات أخرى
3. أغلق أي برامج قد تستخدم الملفات

### المشكلة 3: "Execution Policy" خطأ في PowerShell
**الحل:**
```powershell
# افتح PowerShell كمسؤول واكتب:
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# ثم شغّل السكريبت مرة أخرى
```

### المشكلة 4: الملفات لا تظهر في OneDrive عبر الويب
**الحل:**
1. انتظر بضع دقائق لاكتمال المزامنة
2. تحقق من اتصال الإنترنت
3. افتح OneDrive وتأكد من عدم وجود أخطاء مزامنة
4. حاول مزامنة يدوية من إعدادات OneDrive

### المشكلة 5: "Not enough space" مساحة غير كافية
**الحل:**
1. احذف ملفات غير ضرورية من OneDrive
2. أو اطلب زيادة مساحة التخزين من IT
3. أو استخدم مجلد فرعي مختلف

---

## 💡 نصائح مهمة | Important Tips

### ✨ للعمل المستمر:
- بعد الرفع الأول، يمكنك العمل مباشرة في مجلد OneDrive
- أي تغييرات ستُزامن تلقائياً
- لا حاجة لتشغيل السكريبت مرة أخرى

### 🔄 لتحديث الملفات:
- فقط نسخ الملفات الجديدة إلى مجلد OneDrive
- أو شغّل السكريبت مرة أخرى لتحديث جميع الملفات

### 🔒 للأمان:
- لا تشارك رابط OneDrive مع أشخاص غير مصرح لهم
- استخدم إعدادات المشاركة في OneDrive للتحكم بالصلاحيات
- غيّر كلمة المرور في ملف `index.html` إذا لزم الأمر

### 📱 للوصول من الموبايل:
- حمّل تطبيق OneDrive على هاتفك
- سجل دخول بحساب العمل
- ستجد الملفات في: My Files → Documents → Excellence_Award_2025

---

## 🔗 روابط مفيدة | Useful Links

### رابط OneDrive الخاص بك:
```
https://admunicipality-my.sharepoint.com/personal/ali_abdelaal_adm_gov_ae/Documents/Excellence_Award_2025
```

### دعم Microsoft OneDrive:
- الدليل الرسمي: https://support.microsoft.com/onedrive
- OneDrive للأعمال: https://support.microsoft.com/en-us/office/onedrive-for-business

### أدلة المشروع الأخرى:
- 📖 [ONEDRIVE_GUIDE.md](ONEDRIVE_GUIDE.md) - دليل شامل لـ OneDrive
- 📖 [SHAREPOINT_DEPLOYMENT_GUIDE.md](SHAREPOINT_DEPLOYMENT_GUIDE.md) - دليل نشر SharePoint
- 📖 [README.md](README.md) - دليل المشروع الرئيسي

---

## 📞 الدعم | Support

إذا واجهت أي مشاكل:

1. **راجع قسم حل المشكلات أعلاه**
2. **تحقق من الأدلة الأخرى في المشروع**
3. **اتصل بفريق IT في البلدية**
4. **تحقق من تحديثات المشروع على GitHub**

---

## 📝 ملاحظات | Notes

- **الإصدار:** 1.0.0
- **التاريخ:** 2025-01-05
- **المؤلف:** Dr. Ali Abdelaal
- **القسم:** Animal Welfare Department - Abu Dhabi Municipality
- **المشروع:** Excellence Award 2025

---

## 🏆 الخاتمة | Conclusion

هذا السكريبت يجعل رفع المشروع إلى OneDrive سهل وسريع. بعد الرفع الأول، ستتمكن من:

✅ الوصول للملفات من أي مكان
✅ المزامنة التلقائية لجميع التغييرات
✅ مشاركة الملفات مع الفريق
✅ النسخ الاحتياطي التلقائي

**بالتوفيق في جائزة التميز 2025! 🏆**

**Good luck with Excellence Award 2025! 🏆**

---

**Created with ❤️ for Abu Dhabi Municipality**
