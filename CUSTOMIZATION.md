# CUSTOMIZATION EXAMPLES

Quick copy-paste examples to customize your church website.

## 🏦 Change Bank Accounts

**File**: `src/components/Giving.svelte`

Find this section (around line 11):
```typescript
const accounts: Account[] = [
  {
    bank: 'First Bank',
    accountName: 'Christ Mission Church',
    accountNumber: '0123456789',
    icon: '🏦'
  },
  {
    bank: 'GTBank',
    accountName: 'Christ Mission Church',
    accountNumber: '0987654321',
    icon: '💳'
  },
  {
    bank: 'Access Bank',
    accountName: 'Christ Mission Church',
    accountNumber: '1122334455',
    icon: '💰'
  }
];
```

Replace with your actual account details:
```typescript
const accounts: Account[] = [
  {
    bank: 'Your Bank Name',
    accountName: 'Christ Mission Church',
    accountNumber: 'YOUR_ACCOUNT_NUMBER',
    icon: '🏦'
  }
];
```

---

## 📞 Update Contact Information

**File**: `src/components/Location.svelte`

Find (around line 40-50):
```html
<div class="info-item">
  <span class="icon">📞</span>
  <div>
    <h5>Phone</h5>
    <p>+234 (0) 123 456 7890</p>
  </div>
</div>
```

Replace with:
```html
<div class="info-item">
  <span class="icon">📞</span>
  <div>
    <h5>Phone</h5>
    <p>+234 (0) YOUR_PHONE_NUMBER</p>
  </div>
</div>
```

Similar for email (find the email section and update).

---

## 🕐 Change Service Times

**File**: `src/components/Meetings.svelte`

Find (around line 11-17):
```typescript
const meetings: Meeting[] = [
  { day: 'Wednesday', time: '5:00 PM', icon: '📖' },
  { day: 'Friday', time: '5:00 PM', icon: '🙏' },
  { day: 'Saturday', time: '5:30 PM', icon: '✨' },
  { day: 'Sunday', time: '9:00 AM', icon: '⛪' }
];
```

Change times:
```typescript
const meetings: Meeting[] = [
  { day: 'Monday', time: '6:00 PM', icon: '📖' },
  { day: 'Wednesday', time: '5:00 PM', icon: '🙏' },
  { day: 'Friday', time: '7:00 PM', icon: '✨' },
  { day: 'Sunday', time: '10:00 AM', icon: '⛪' }
];
```

---

## 🎙️ Add Your Own Sermons

**File**: `src/components/Sermon.svelte`

Find (around line 8-30):
```typescript
const sermons: Sermon[] = [
  {
    id: 1,
    title: 'The Power of Faith',
    speaker: 'Pastor John',
    date: 'November 17, 2024',
    image: 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
    description: 'Discover how faith transforms our lives and brings us closer to God.'
  },
  // ... more sermons
];
```

Add your sermon:
```typescript
{
  id: 4,
  title: 'Your Sermon Title',
  speaker: 'Pastor Name',
  date: 'November 19, 2024',
  image: 'linear-gradient(135deg, #ff6b6b 0%, #ff0000 100%)',
  description: 'Your sermon description here.'
}
```

Gradient colors for images:
```typescript
// Red tones
'linear-gradient(135deg, #ff6b6b 0%, #ff0000 100%)'

// Blue tones
'linear-gradient(135deg, #4facfe 0%, #00f2fe 100%)'

// Purple tones
'linear-gradient(135deg, #667eea 0%, #764ba2 100%)'

// Green tones
'linear-gradient(135deg, #2d5016 0%, #1f3610 100%)'

// Orange tones
'linear-gradient(135deg, #ff9a56 0%, #ff6a88 100%)'
```

---

## 🎨 Change Hero Button Text

**File**: `src/components/Hero.svelte`

Find (around line 20-24):
```html
<button 
  class="cta-button"
  on:click={handleJoinClick}
  on:mouseenter={() => isHovering = true}
  on:mouseleave={() => isHovering = false}
>
  <span class="button-text">Join us this Sunday</span>
  <span class="button-arrow" class:active={isHovering}>→</span>
</button>
```

Change button text:
```html
<span class="button-text">Come Worship With Us</span>
```

---

## 🎨 Change Colors Globally

**Primary Green** (used everywhere):
Search for: `#2d5016`
Replace with: `#YOUR_COLOR_CODE`

**Dark Green** (hover states):
Search for: `#1f3610`
Replace with: `#YOUR_HOVER_COLOR`

**Text Color**:
Search for: `#1a1a1a`
Replace with: `#YOUR_TEXT_COLOR`

Example using a different green:
```css
/* From these colors: */
background: #2d5016;
color: #1f3610;

/* To these: */
background: #1b4332;  /* Darker green */
color: #0f2818;       /* Even darker */
```

---

## 🗺️ Change Church Location

**File**: `src/components/Location.svelte`

Find (around line 15):
```typescript
// @ts-ignore
const map = L.map(mapContainer).setView([6.6654, 3.5477], 13);
```

Change coordinates (Ilaro, Nigeria = 6.6654, 3.5477):
```typescript
// For example, Lagos:
const map = L.map(mapContainer).setView([6.5244, 3.3792], 13);

// You can find coordinates at: https://www.google.com/maps
// Right-click location → Copy coordinates
```

---

## 📱 Add Social Media Links

**File**: `src/components/Footer.svelte`

Find (around line 40-46):
```html
<div class="social-links">
  <a href="#" title="Facebook">f</a>
  <a href="#" title="Twitter">𝕏</a>
  <a href="#" title="Instagram">📷</a>
  <a href="#" title="YouTube">▶</a>
</div>
```

Update links:
```html
<div class="social-links">
  <a href="https://facebook.com/YOUR_PAGE" target="_blank" title="Facebook">f</a>
  <a href="https://twitter.com/YOUR_HANDLE" target="_blank" title="Twitter">𝕏</a>
  <a href="https://instagram.com/YOUR_HANDLE" target="_blank" title="Instagram">📷</a>
  <a href="https://youtube.com/@YOUR_CHANNEL" target="_blank" title="YouTube">▶</a>
</div>
```

---

## ✉️ Add Working Contact Form

To add a working contact form, you can use:

### Option 1: Formspree (Free, Easy)
1. Go to https://formspree.io
2. Create account with your email
3. Get your form endpoint

Then in any component:
```html
<form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
  <input type="text" name="name" placeholder="Your Name" required>
  <input type="email" name="email" placeholder="Your Email" required>
  <textarea name="message" placeholder="Your Message" required></textarea>
  <button type="submit">Send Message</button>
</form>
```

### Option 2: EmailJS (Free, JavaScript)
Install: `npm install emailjs-com`

---

## 🔗 Update Navigation Links

**File**: `src/components/Header.svelte`

The smooth scroll navigation is already set up. Links automatically scroll to:
- `#meetings` → Meetings section
- `#sermon` → Sermons section
- `#giving` → Giving section
- `#location` → Location section

To add a new section:
1. Add `id="section-name"` to your new section
2. Add link in Header: `<a href="#section-name">Label</a>`

---

## 📄 Update Footer Info

**File**: `src/components/Footer.svelte`

Replace placeholder links and text throughout the footer component.

Key sections to update:
- Church description (line ~20-22)
- Contact info (line ~31-34)
- Service times (line ~40-43)
- Copyright year (automatically updates)

---

## 🎯 Add Google Analytics

Add this to `index.html` before closing `</body>`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

Replace `GA_MEASUREMENT_ID` with your actual ID.

---

## 🎯 Pro Tips

1. **Use your church logo**: Add an image to Header and update the `<h2>✝️ CMC</h2>` with `<img src="logo.png" alt="Logo">`

2. **Add a favicon**: Place `favicon.ico` in root folder

3. **Mobile testing**: Open `localhost:5173` on your phone

4. **Performance**: Images under 100KB load faster

5. **SEO**: Update the `<title>` in `index.html`

---

## ❓ Need More Help?

- **Svelte docs**: https://svelte.dev/docs
- **Vite docs**: https://vitejs.dev
- **CSS Help**: https://www.w3schools.com/css/

Happy customizing! 🎉
