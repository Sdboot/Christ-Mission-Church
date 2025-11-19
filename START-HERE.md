# 🏰 CHRIST MISSION CHURCH WEBSITE

## ✨ Your Professional Website is Ready!

A beautiful, modern website for Christ Mission Church built with **Svelte** and **Vite**.

---

## 🎯 What You Get

### 🖼️ **Hero Section**
- Mind-blowingly clean design
- Animated gradient background
- "Join us this Sunday" call-to-action button
- Professional typography
- Smooth animations

### 📅 **Weekly Service Schedule**
- Wednesday: 5:00 PM
- Friday: 5:00 PM
- Saturday: 5:30 PM
- Sunday: 9:00 AM
- Beautiful card layout with icons

### 🎙️ **Latest Sermons**
- Featured sermon display
- Sermon list with speaker & date
- Interactive selection
- Watch buttons
- Gradient backgrounds

### 💝 **Giving Section**
- Bank account details:
  - First Bank: 0123456789
  - GTBank: 0987654321
  - Access Bank: 1122334455
- Copy-to-clipboard functionality
- Alternative giving methods
- Inspiring donation message

### 🗺️ **Location & Map**
- Interactive map showing Ilaro, Ogun State
- Address: Ilaro, Ogun State, Nigeria
- Phone: +234 (0) 123 456 7890
- Email: info@christmissionchurch.org
- Service times displayed

### 🔗 **Navigation & Footer**
- Sticky header with smooth navigation
- Mobile hamburger menu
- Footer with all important links
- Social media integration ready
- Quick contact access

---

## 🚀 GETTING STARTED

### Quickest Way (Windows)

1. **Download the folder** to your computer
2. **Double-click**: `start.bat`
3. **Wait** for installation (first time only)
4. **Website opens** at `http://localhost:5173`

### Manual Setup

```powershell
# 1. Open PowerShell in this folder
# 2. Install dependencies
npm install --legacy-peer-deps

# 3. Start development server
npm run dev

# Website opens at: http://localhost:5173
```

### Mac/Linux

```bash
./start.sh
```

---

## 📝 CUSTOMIZE YOUR WEBSITE

### 1. Update Bank Accounts
**File**: `src/components/Giving.svelte` (Line 11)

Find and replace with your actual bank details:
```typescript
const accounts: Account[] = [
  {
    bank: 'Your Bank',
    accountName: 'Christ Mission Church',
    accountNumber: 'YOUR_ACCOUNT_NUMBER',
    icon: '🏦'
  }
];
```

### 2. Change Service Times
**File**: `src/components/Meetings.svelte` (Line 11)

```typescript
const meetings: Meeting[] = [
  { day: 'Wednesday', time: '5:00 PM', icon: '📖' },
  { day: 'Friday', time: '5:00 PM', icon: '🙏' },
  { day: 'Saturday', time: '5:30 PM', icon: '✨' },
  { day: 'Sunday', time: '9:00 AM', icon: '⛪' }
];
```

### 3. Update Contact Information
**File**: `src/components/Location.svelte`

Search for phone number and email:
- Phone: `+234 (0) 123 456 7890` → Your number
- Email: `info@christmissionchurch.org` → Your email

### 4. Add Your Sermons
**File**: `src/components/Sermon.svelte` (Line 8)

Add your sermons to the array:
```typescript
{
  id: 1,
  title: 'Your Sermon Title',
  speaker: 'Pastor Name',
  date: 'Date Here',
  image: 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
  description: 'Your sermon description'
}
```

### 5. Change Colors
Search for `#2d5016` (green) and replace with your color everywhere

---

## 📁 PROJECT STRUCTURE

```
christ mission church/
├── src/
│   ├── components/
│   │   ├── Header.svelte        # Navigation
│   │   ├── Hero.svelte          # Landing section
│   │   ├── Meetings.svelte      # Service times
│   │   ├── Sermon.svelte        # Sermons
│   │   ├── Giving.svelte        # Donations
│   │   ├── Location.svelte      # Map & contact
│   │   └── Footer.svelte        # Footer
│   ├── App.svelte               # Main component
│   └── main.ts                  # Entry point
├── index.html                   # HTML template
├── package.json                 # Dependencies
├── vite.config.ts              # Build config
├── tsconfig.json               # TypeScript config
├── README.md                   # This file
├── QUICK-START.md             # Quick guide
├── INSTALLATION.md            # Detailed setup
├── CUSTOMIZATION.md           # How to customize
├── PROJECT-SUMMARY.md         # Full details
├── FILES-CHECKLIST.md         # Component list
├── start.bat                  # Windows quick start
├── start.sh                   # Mac/Linux quick start
└── setup-and-run.bat         # Full setup
```

---

## 🛠️ AVAILABLE COMMANDS

```powershell
# Development
npm run dev              # Start dev server

# Production
npm run build            # Build for production
npm run preview          # Preview production build

# Checking
npm run check            # Check TypeScript errors
npm run check:watch      # Watch for errors
```

---

## 🌐 DEPLOY YOUR WEBSITE

### Netlify (Easiest)
1. Push code to GitHub
2. Connect GitHub to Netlify
3. Set build command: `npm run build`
4. Set publish: `dist`
5. Done! 🎉

### Vercel
```powershell
npm install -g vercel
vercel
```

### Your Own Server
```powershell
npm run build
# Upload the 'dist' folder via FTP/SCP
```

---

## 🎨 DESIGN FEATURES

- ✅ **Responsive Design** - Works on all devices
- ✅ **Modern Colors** - Professional green color scheme
- ✅ **Smooth Animations** - Beautiful transitions
- ✅ **Interactive Elements** - Hover effects
- ✅ **Fast Loading** - Optimized with Vite
- ✅ **Mobile-First** - Perfect on phones
- ✅ **Accessibility** - Semantic HTML

---

## 📚 DOCUMENTATION

- **`QUICK-START.md`** - 2-minute setup guide
- **`INSTALLATION.md`** - Complete installation & deployment
- **`CUSTOMIZATION.md`** - Examples and how-to's
- **`PROJECT-SUMMARY.md`** - Full project documentation
- **`FILES-CHECKLIST.md`** - All components explained

---

## 💻 TECHNOLOGIES

- **Svelte 4** - Reactive components
- **Vite 5** - Lightning-fast build tool
- **TypeScript** - Type safety
- **Leaflet** - Interactive maps
- **CSS3** - Modern styling

---

## ⚡ PERFORMANCE

- ✅ Small bundle size
- ✅ Fast page load
- ✅ Optimized images
- ✅ Code splitting
- ✅ Mobile optimized

---

## 📱 BROWSER SUPPORT

✅ Chrome/Edge
✅ Firefox
✅ Safari
✅ Mobile browsers

---

## 🐛 TROUBLESHOOTING

### npm install fails
```powershell
npm cache clean --force
npm install --legacy-peer-deps
```

### Port 5173 in use
```powershell
npm run dev -- --port 3000
```

### Styles not loading
```powershell
npm run build
npm run preview
```

---

## 📞 NEXT STEPS

1. **Update your information** (see CUSTOMIZE section above)
2. **Test the website** by running `start.bat`
3. **Check all links** work properly
4. **Test on mobile** (open localhost:5173 on your phone)
5. **Build for production**: `npm run build`
6. **Deploy** to your hosting provider

---

## 📋 CHECKLIST BEFORE LAUNCH

- [ ] Update bank account numbers
- [ ] Update service times
- [ ] Update contact phone
- [ ] Update contact email
- [ ] Add your sermons
- [ ] Update pastor names
- [ ] Add social media links
- [ ] Test all buttons
- [ ] Test on mobile
- [ ] Test map
- [ ] Deploy to hosting

---

## 💡 TIPS

- Changes save automatically to files
- **Refresh browser** (F5) to see changes
- **Ctrl+S** to manually save
- Test on your phone for mobile experience
- Use `npm run build` before deploying

---

## ❓ NEED HELP?

See the included documentation files:
- Questions about setup? → `QUICK-START.md`
- How to customize? → `CUSTOMIZATION.md`
- Deploy questions? → `INSTALLATION.md`
- Want details? → `PROJECT-SUMMARY.md`

---

## 📄 LICENSE

© 2024 Christ Mission Church. All rights reserved.

---

## 🎉 YOU'RE READY!

Your professional Christ Mission Church website is ready to launch!

**Start here**: Double-click `start.bat` (Windows) or run `./start.sh` (Mac/Linux)

Happy launching! 🙏✨
