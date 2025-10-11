# 🚀 دليل استخدام رسالة الانتظار الذكية
## Smart Waiting Message Usage Guide

## 📋 نظرة عامة | Overview

رسالة الانتظار الذكية هي نظام متقدم لعرض رسائل التحميل والانتظار على الصفحة الرئيسية. تتميز بتصميم عصري وأنيميشن جذاب وخيارات تخصيص متعددة.

The Smart Waiting Message is an advanced system for displaying loading and waiting messages on the main screen. It features modern design, attractive animations, and multiple customization options.

---

## ✨ المميزات | Features

- 🎨 **تصميم عصري**: واجهة جذابة مع تدرجات لونية وظلال احترافية
- ⚡ **أنيميشن سلس**: حركات انتقالية ناعمة وجذابة
- 📊 **شريط تقدم**: إمكانية عرض نسبة التقدم
- 🎯 **قابل للتخصيص**: خيارات متعددة لتخصيص المحتوى
- ⏱️ **إخفاء تلقائي**: خيار لإخفاء الرسالة تلقائياً بعد وقت محدد
- 🔄 **تحديث ديناميكي**: إمكانية تحديث المحتوى أثناء العرض

---

## 📦 التركيب | Installation

### 1. إضافة HTML

أضف الكود التالي في ملف HTML الخاص بك قبل إغلاق وسم `</body>`:

```html
<!-- Smart Waiting Message Overlay -->
<div class="smart-waiting-overlay" id="smartWaitingOverlay">
    <div class="smart-waiting-content">
        <div class="smart-waiting-icon" id="smartWaitingIcon">⏳</div>
        <div class="smart-waiting-title" id="smartWaitingTitle">جاري التحميل...</div>
        <div class="smart-waiting-message" id="smartWaitingMessage">
            يرجى الانتظار بينما نجهز المحتوى لك
        </div>
        <div class="smart-waiting-spinner">
            <div class="smart-waiting-dot"></div>
            <div class="smart-waiting-dot"></div>
            <div class="smart-waiting-dot"></div>
        </div>
        <div class="smart-waiting-progress" id="smartWaitingProgressContainer" style="display: none;">
            <div class="smart-waiting-progress-bar" id="smartWaitingProgressBar"></div>
        </div>
        <div class="smart-waiting-percentage" id="smartWaitingPercentage" style="display: none;">0%</div>
    </div>
</div>
```

### 2. إضافة CSS

أضف الأنماط في قسم `<style>` أو في ملف CSS منفصل (راجع `index.html` للحصول على الكود الكامل).

### 3. إضافة JavaScript

أضف الدوال JavaScript في قسم `<script>` (راجع `index.html` للحصول على الكود الكامل).

---

## 🎯 طريقة الاستخدام | Usage

### الاستخدام الأساسي | Basic Usage

#### 1. عرض رسالة بسيطة

```javascript
// عرض رسالة بسيطة بالإعدادات الافتراضية
showSmartWaiting();

// إخفاء الرسالة
hideSmartWaiting();
```

#### 2. عرض رسالة مخصصة

```javascript
showSmartWaiting({
    title: 'جاري التحميل',
    message: 'يرجى الانتظار لحظات...',
    icon: '🚀'
});
```

#### 3. عرض رسالة مع شريط التقدم

```javascript
const waiting = showSmartWaiting({
    title: 'تحميل البيانات',
    message: 'جاري تحميل البيانات من الخادم...',
    icon: '📊',
    showProgress: true
});

// تحديث التقدم
waiting.updateProgress(50);  // 50%
waiting.updateProgress(100); // 100%

// إخفاء الرسالة
waiting.hide();
```

#### 4. رسالة بإخفاء تلقائي

```javascript
showSmartWaiting({
    title: 'تم الحفظ بنجاح',
    message: 'تم حفظ التغييرات بنجاح',
    icon: '✅',
    autoHideAfter: 3000  // إخفاء بعد 3 ثوانٍ
});
```

---

## ⚙️ الخيارات المتاحة | Available Options

| الخيار | النوع | الوصف | القيمة الافتراضية |
|--------|------|-------|-------------------|
| `title` | string | عنوان الرسالة | "جاري التحميل..." |
| `message` | string | نص الرسالة | "يرجى الانتظار بينما نجهز المحتوى لك" |
| `icon` | string | الأيقونة (emoji) | "⏳" |
| `showProgress` | boolean | إظهار شريط التقدم | `false` |
| `autoHideAfter` | number | إخفاء تلقائي بعد (مللي ثانية) | `null` |

---

## 🔧 الدوال المتاحة | Available Functions

### `showSmartWaiting(options)`

عرض رسالة الانتظار الذكية.

**المعاملات:**
- `options` (object): خيارات التخصيص

**الإرجاع:**
- Object يحتوي على دوال التحكم:
  - `updateProgress(percent)`: تحديث نسبة التقدم
  - `updateTitle(title)`: تحديث العنوان
  - `updateMessage(message)`: تحديث الرسالة
  - `hide()`: إخفاء الرسالة

### `hideSmartWaiting()`

إخفاء رسالة الانتظار الذكية.

### `updateSmartWaitingProgress(percent)`

تحديث نسبة التقدم في شريط التقدم.

**المعاملات:**
- `percent` (number): النسبة المئوية (0-100)

### `updateSmartWaitingTitle(title)`

تحديث عنوان الرسالة.

**المعاملات:**
- `title` (string): العنوان الجديد

### `updateSmartWaitingMessage(message)`

تحديث نص الرسالة.

**المعاملات:**
- `message` (string): النص الجديد

---

## 💡 أمثلة عملية | Practical Examples

### مثال 1: تحميل البيانات من API

```javascript
async function loadData() {
    const waiting = showSmartWaiting({
        title: 'تحميل البيانات',
        message: 'جاري جلب البيانات من الخادم...',
        icon: '🔄',
        showProgress: true
    });

    try {
        // محاكاة تحميل البيانات
        for (let i = 0; i <= 100; i += 10) {
            await new Promise(resolve => setTimeout(resolve, 200));
            waiting.updateProgress(i);
            
            if (i === 30) {
                waiting.updateMessage('الاتصال بالخادم...');
            } else if (i === 60) {
                waiting.updateMessage('جلب البيانات...');
            } else if (i === 90) {
                waiting.updateMessage('معالجة البيانات...');
            }
        }
        
        waiting.updateTitle('اكتمل التحميل');
        waiting.updateMessage('تم تحميل البيانات بنجاح');
        
        setTimeout(() => {
            waiting.hide();
        }, 1000);
    } catch (error) {
        waiting.hide();
        alert('حدث خطأ أثناء تحميل البيانات');
    }
}
```

### مثال 2: حفظ البيانات

```javascript
async function saveData() {
    const waiting = showSmartWaiting({
        title: 'حفظ البيانات',
        message: 'جاري حفظ التغييرات...',
        icon: '💾',
        showProgress: true
    });

    let progress = 0;
    const interval = setInterval(() => {
        progress += 20;
        waiting.updateProgress(progress);
        
        if (progress >= 100) {
            clearInterval(interval);
            waiting.updateTitle('تم الحفظ بنجاح');
            waiting.updateMessage('تم حفظ جميع التغييرات');
            
            setTimeout(() => {
                waiting.hide();
            }, 1500);
        }
    }, 300);
}
```

### مثال 3: معالجة ملف

```javascript
function processFile(file) {
    const waiting = showSmartWaiting({
        title: 'معالجة الملف',
        message: `جاري معالجة ${file.name}...`,
        icon: '📄',
        showProgress: true
    });

    // محاكاة معالجة الملف
    let progress = 0;
    const interval = setInterval(() => {
        progress += 5;
        waiting.updateProgress(progress);
        
        if (progress >= 100) {
            clearInterval(interval);
            waiting.updateTitle('اكتملت المعالجة');
            waiting.updateMessage('تم معالجة الملف بنجاح');
            
            setTimeout(() => {
                waiting.hide();
            }, 1000);
        }
    }, 100);
}
```

### مثال 4: استخدام مع تحميل الصفحة

```javascript
// عرض رسالة الانتظار عند بداية تحميل الصفحة
document.addEventListener('DOMContentLoaded', () => {
    showSmartWaiting({
        title: 'مرحباً بك',
        message: 'جاري تحميل المحتوى...',
        icon: '🚀'
    });

    // إخفاء الرسالة عند اكتمال تحميل كل شيء
    window.addEventListener('load', () => {
        hideSmartWaiting();
    });
});
```

---

## 🎨 تخصيص الشكل | Styling Customization

يمكنك تخصيص ألوان وأنماط رسالة الانتظار من خلال تعديل CSS:

```css
/* تخصيص الألوان الأساسية */
.smart-waiting-content {
    background: linear-gradient(135deg, rgba(37, 99, 235, 0.1), rgba(124, 58, 237, 0.1));
    border: 2px solid rgba(79, 172, 254, 0.3);
}

/* تخصيص العنوان */
.smart-waiting-title {
    background: linear-gradient(135deg, #4facfe 0%, #00f2fe 50%, #667eea 100%);
}

/* تخصيص شريط التقدم */
.smart-waiting-progress-bar {
    background: linear-gradient(90deg, #4facfe, #00f2fe, #667eea);
}
```

---

## 🐛 استكشاف الأخطاء | Troubleshooting

### المشكلة: الرسالة لا تظهر

**الحل:**
1. تأكد من إضافة HTML و CSS و JavaScript بشكل صحيح
2. تحقق من عدم وجود أخطاء في Console
3. تأكد من أن z-index كافٍ (99999)

### المشكلة: الرسالة لا تختفي

**الحل:**
1. تأكد من استدعاء `hideSmartWaiting()` أو `waiting.hide()`
2. تحقق من عدم وجود أخطاء JavaScript تمنع تنفيذ الكود

### المشكلة: شريط التقدم لا يعمل

**الحل:**
1. تأكد من تعيين `showProgress: true` في الخيارات
2. تحقق من استدعاء `updateProgress()` بقيم صحيحة (0-100)

---

## 📱 التوافق | Compatibility

- ✅ جميع المتصفحات الحديثة (Chrome, Firefox, Safari, Edge)
- ✅ متجاوب مع جميع أحجام الشاشات
- ✅ يدعم RTL و LTR
- ✅ يدعم الأجهزة المحمولة

---

## 📚 الموارد الإضافية | Additional Resources

- **صفحة التجربة:** [smart-waiting-demo.html](smart-waiting-demo.html)
- **صفحة الاختبار:** [test-waiting-message.html](test-waiting-message.html)
- **الصفحة الرئيسية:** [index.html](index.html)

---

## 📝 ملاحظات هامة | Important Notes

1. ⚠️ **الأداء**: تجنب عرض رسائل انتظار متعددة في نفس الوقت
2. 💡 **تجربة المستخدم**: استخدم الرسالة فقط عند الضرورة (عمليات تستغرق أكثر من ثانية واحدة)
3. 🎯 **الوضوح**: اختر نصوص واضحة ومفهومة للمستخدم
4. ⏱️ **المدة**: لا تترك الرسالة معروضة لفترة طويلة جداً

---

## 🤝 المساهمة | Contributing

إذا كان لديك اقتراحات أو تحسينات، يرجى التواصل مع:
- **البريد الإلكتروني:** Ali.Abdelaal@adm.gov.ae
- **الهاتف:** 0581187777

---

## 📄 الترخيص | License

تم التطوير بواسطة **الدكتور علي عبدالعال** - إدارة الرفق بالحيوان - بلدية مدينة أبوظبي

© 2025 Excellence Award Project

---

## 🎉 شكراً | Thank You

شكراً لاستخدامك رسالة الانتظار الذكية! نأمل أن تساعدك في تحسين تجربة المستخدم في مشاريعك.

Thank you for using the Smart Waiting Message! We hope it helps improve user experience in your projects.
