# 📱 دليل PWA - Progressive Web App Guide

## نظرة عامة | Overview

تم تحويل منصة التميز الداخلي لبلدية أبوظبي إلى تطبيق ويب تقدمي (PWA) يمكن تثبيته على الأجهزة المحمولة وأجهزة Windows والعمل دون اتصال بالإنترنت.

The Abu Dhabi Municipality Internal Excellence Platform has been converted to a Progressive Web App (PWA) that can be installed on mobile devices, Windows, and work offline.

---

## ✨ المميزات الجديدة | New Features

### 📲 التثبيت على الأجهزة المحمولة | Mobile Installation
- ✅ يمكن تثبيت المنصة كتطبيق أصلي على Android و iOS
- ✅ أيقونة على الشاشة الرئيسية
- ✅ تجربة ملء الشاشة بدون شريط المتصفح
- ✅ إشعارات الدفع (Push Notifications) - جاهزة للتفعيل

### 💻 التثبيت على Windows | Windows Installation
- ✅ يمكن تثبيت المنصة كتطبيق Windows أصلي
- ✅ يظهر في قائمة البرامج وشريط المهام
- ✅ نافذة منفصلة مثل التطبيقات الأخرى

### 📡 العمل دون اتصال | Offline Functionality
- ✅ الصفحات المزارة مسبقاً متاحة دون إنترنت
- ✅ التخزين المحلي للبيانات
- ✅ مزامنة تلقائية عند الاتصال
- ✅ صفحة offline مخصصة للإشعار بحالة الاتصال

### ⚡ الأداء | Performance
- ✅ تحميل أسرع بعد الزيارة الأولى
- ✅ استخدام التخزين المؤقت الذكي
- ✅ تحديثات تلقائية في الخلفية

---

## 📥 كيفية التثبيت | Installation Instructions

### على Android:

1. **افتح الموقع في Chrome**
   - انتقل إلى: `https://aliabdelaal-adm.github.io/Excellence_Award_2025/`

2. **انقر على "إضافة إلى الشاشة الرئيسية"**
   - ستظهر رسالة منبثقة تلقائياً
   - أو من قائمة Chrome (⋮) → "تثبيت التطبيق"

3. **اضغط "تثبيت" / "Install"**
   - سيتم إضافة أيقونة التطبيق على الشاشة الرئيسية

4. **افتح التطبيق**
   - انقر على الأيقونة للاستخدام في وضع ملء الشاشة

### على iPhone/iPad (iOS):

1. **افتح الموقع في Safari**
   - انتقل إلى: `https://aliabdelaal-adm.github.io/Excellence_Award_2025/`

2. **انقر على زر المشاركة** (📤)
   - الزر الموجود أسفل أو أعلى الشاشة

3. **اختر "إضافة إلى الشاشة الرئيسية"**
   - مرر لأسفل إذا لزم الأمر

4. **اضغط "إضافة" / "Add"**
   - سيتم إضافة أيقونة التطبيق على الشاشة الرئيسية

### على Windows (Chrome/Edge):

1. **افتح الموقع في Chrome أو Edge**
   - انتقل إلى: `https://aliabdelaal-adm.github.io/Excellence_Award_2025/`

2. **انقر على أيقونة التثبيت** في شريط العناوين
   - أو من القائمة (⋮) → "تثبيت التميز 2025"

3. **اضغط "تثبيت" / "Install"**
   - سيتم فتح التطبيق في نافذة منفصلة

4. **الوصول للتطبيق**
   - من قائمة Start
   - من شريط المهام
   - من قائمة البرامج

### على macOS (Chrome/Safari):

مشابه لـ Windows، استخدم Chrome أو Safari وستجد خيار التثبيت.

---

## 🔧 الملفات التقنية | Technical Files

### ملفات PWA الرئيسية:

```
Excellence_Award_2025/
├── manifest.webmanifest      # Web App Manifest
├── service-worker.js          # Service Worker للتخزين المؤقت
├── offline.html               # صفحة Offline
├── icons/                     # أيقونات التطبيق
│   ├── icon-72x72.png
│   ├── icon-96x96.png
│   ├── icon-128x128.png
│   ├── icon-144x144.png
│   ├── icon-152x152.png
│   ├── icon-192x192.png
│   ├── icon-384x384.png
│   ├── icon-512x512.png
│   ├── icon-192x192-maskable.png
│   ├── icon-512x512-maskable.png
│   ├── favicon.png
│   └── apple-touch-icon.png
└── screenshots/               # لقطات الشاشة للمتجر
```

---

## 🎨 التخصيص | Customization

### تعديل manifest.webmanifest:

```json
{
  "name": "اسم التطبيق الكامل",
  "short_name": "الاسم المختصر",
  "theme_color": "#2563eb",      // لون الشريط العلوي
  "background_color": "#0f172a"  // لون الخلفية عند التشغيل
}
```

### تعديل Service Worker:

في ملف `service-worker.js`، يمكنك:
- إضافة/إزالة صفحات للتخزين المؤقت
- تغيير استراتيجية التخزين
- إضافة منطق مخصص للمزامنة

---

## 🧪 الاختبار | Testing

### اختبار PWA محلياً:

1. **استخدم خادم محلي**:
   ```bash
   python3 -m http.server 8000
   # أو
   npx serve
   ```

2. **افتح في المتصفح**:
   ```
   http://localhost:8000/
   ```

3. **افتح DevTools** (F12):
   - تبويب **Application** → **Manifest**
   - تحقق من معلومات التطبيق والأيقونات

4. **اختبر Service Worker**:
   - تبويب **Application** → **Service Workers**
   - تحقق من حالة التسجيل

5. **اختبار Offline**:
   - تبويب **Network** → اختر "Offline"
   - جرب التنقل في الموقع

### أدوات الاختبار:

- **Lighthouse**: فحص شامل لـ PWA
  - DevTools → Lighthouse → Generate Report

- **PWA Builder**: [pwabuilder.com](https://www.pwabuilder.com/)
  - اختبار وتحليل PWA
  - توليد حزم التطبيقات للمتاجر

---

## 📊 معايير PWA | PWA Criteria

### ✅ المتطلبات المحققة:

- [x] **HTTPS**: الموقع يعمل على HTTPS (GitHub Pages)
- [x] **Manifest**: ملف manifest.webmanifest كامل
- [x] **Service Worker**: مسجل ويعمل
- [x] **أيقونات**: جميع الأحجام المطلوبة متوفرة
- [x] **Responsive**: متجاوب مع جميع الشاشات
- [x] **Offline**: يعمل بدون إنترنت
- [x] **Fast**: تحميل سريع بعد الزيارة الأولى
- [x] **Installable**: قابل للتثبيت على جميع المنصات

---

## 🔍 استكشاف الأخطاء | Troubleshooting

### المشكلة: لا يظهر خيار التثبيت

**الحلول**:
1. تأكد من أن الموقع يعمل على HTTPS
2. تحقق من صحة ملف manifest.webmanifest
3. تأكد من تسجيل Service Worker بنجاح
4. حاول من متصفح آخر (Chrome/Edge)

### المشكلة: Service Worker لا يعمل

**الحلول**:
1. افتح DevTools → Console وابحث عن أخطاء
2. تحقق من مسار service-worker.js صحيح
3. امسح ذاكرة التخزين المؤقت وأعد التحميل
4. تأكد من Scope صحيح في manifest

### المشكلة: الأيقونات لا تظهر

**الحلول**:
1. تحقق من وجود ملفات الأيقونات في مجلد icons/
2. تأكد من مسارات الأيقونات صحيحة في manifest
3. تحقق من أحجام الأيقونات مطابقة للمحدد

---

## 🚀 التطوير المستقبلي | Future Enhancements

### مميزات مخططة:

- [ ] **إشعارات الدفع**: تفعيل Push Notifications
- [ ] **Background Sync**: المزامنة في الخلفية
- [ ] **Web Share API**: مشاركة المحتوى
- [ ] **Periodic Sync**: تحديثات دورية تلقائية
- [ ] **نشر على المتاجر**: Google Play و Microsoft Store

---

## 📚 موارد إضافية | Additional Resources

### مراجع PWA:

- [MDN: Progressive Web Apps](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps)
- [Google: PWA Training](https://web.dev/progressive-web-apps/)
- [PWA Builder](https://www.pwabuilder.com/)
- [Workbox (Google's SW Library)](https://developers.google.com/web/tools/workbox)

### أدوات مفيدة:

- **Lighthouse**: تحليل وتحسين PWA
- **Chrome DevTools**: أدوات المطورين للاختبار
- **Maskable.app**: تصميم أيقونات Maskable
- **RealFaviconGenerator**: توليد جميع أحجام الأيقونات

---

## 👥 الدعم | Support

للمساعدة أو الاستفسارات:
- 📧 Email: [contact info]
- 🌐 Website: https://aliabdelaal-adm.github.io/Excellence_Award_2025/
- 📝 GitHub Issues: [repository issues]

---

**تم التطوير بواسطة**: علي عبدالعال - إدارة رعاية الحيوان، بلدية أبوظبي
**Developed by**: Ali Abdelaal - Animal Welfare Department, Abu Dhabi Municipality

**الإصدار | Version**: 1.0.0
**التاريخ | Date**: October 2025
