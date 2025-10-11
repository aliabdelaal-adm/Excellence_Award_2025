# 🚀 Smart Waiting Message - Quick Reference

## Basic Commands

```javascript
// Show
showSmartWaiting();

// Hide
hideSmartWaiting();
```

## Common Use Cases

### 1. Simple Loading Message
```javascript
showSmartWaiting({
    title: 'Loading...',
    message: 'Please wait...',
    icon: '⏳'
});
```

### 2. With Progress Bar
```javascript
const w = showSmartWaiting({
    title: 'Loading Data',
    showProgress: true
});
w.updateProgress(50);
w.hide();
```

### 3. Auto-Hide Message
```javascript
showSmartWaiting({
    title: 'Saved!',
    icon: '✅',
    autoHideAfter: 2000
});
```

### 4. Page Load Integration
```javascript
// Show on DOMContentLoaded
document.addEventListener('DOMContentLoaded', () => {
    showSmartWaiting({
        title: 'Welcome',
        icon: '🚀'
    });
});

// Hide on full load
window.addEventListener('load', () => {
    hideSmartWaiting();
});
```

## Options Reference

| Option | Type | Example |
|--------|------|---------|
| `title` | string | `'Loading...'` |
| `message` | string | `'Please wait...'` |
| `icon` | string | `'🚀'` |
| `showProgress` | boolean | `true` |
| `autoHideAfter` | number | `3000` |

## Return Object Methods

```javascript
const waiting = showSmartWaiting(options);

waiting.updateProgress(percent);  // 0-100
waiting.updateTitle(title);       // Update title
waiting.updateMessage(message);   // Update message
waiting.hide();                   // Hide message
```

## Common Icons

- ⏳ Loading
- 🚀 Starting
- 📊 Data
- 💾 Saving
- ✅ Success
- ❌ Error
- 🔄 Processing
- 📁 File
- ⚙️ Settings
- 🎯 Target

## Demo & Documentation

- **Demo:** [smart-waiting-demo.html](smart-waiting-demo.html)
- **Test:** [test-waiting-message.html](test-waiting-message.html)
- **Full Guide:** [SMART_WAITING_MESSAGE_GUIDE.md](SMART_WAITING_MESSAGE_GUIDE.md)

---

💡 **Tip:** Always hide the waiting message after operations complete to avoid confusing users!
