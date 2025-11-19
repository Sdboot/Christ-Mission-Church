# 🚀 QUICK START GUIDE

## ⚡ Get Running in 2 Minutes

### Windows Users
Double-click: `start.bat`

The website opens automatically at `http://localhost:5173`

### Mac/Linux Users
```bash
./start.sh
```

### Manual Start
```powershell
npm install --legacy-peer-deps
npm run dev
```

---

## 🎯 Key Commands

```powershell
npm run dev          # Start development server
npm run build        # Build for production
npm run preview      # Preview production build
npm run check        # Check for TypeScript errors
```

---

## 📁 Files You Need to Edit

| What to Change | File | Line |
|---|---|---|
| Bank Accounts | `src/components/Giving.svelte` | 11-25 |
| Service Times | `src/components/Meetings.svelte` | 11-17 |
| Sermons | `src/components/Sermon.svelte` | 8-30 |
| Location | `src/components/Location.svelte` | 15 |
| Contact Info | `src/components/Location.svelte` | 35-50 |
| Phone/Email | `src/components/Footer.svelte` | 26-29 |
| Colors | Any `.svelte` file | Search `#2d5016` |

---

## 🎨 Sections on the Website

```
1. HEADER - Navigation menu (sticky)
2. HERO - Big welcome with "Join us Sunday" button
3. MEETINGS - Service times (Wed 5pm, Fri 5pm, Sat 5:30pm, Sun 9am)
4. SERMONS - Latest church messages
5. GIVING - Bank accounts for donations
6. LOCATION - Map showing Ilaro, Ogun State
7. FOOTER - Links and contact info
```

---

## ✅ What's Included

✅ Clean, modern design
✅ Fully responsive (mobile, tablet, desktop)
✅ Interactive map with Leaflet
✅ Service schedule display
✅ Sermon showcase
✅ Giving section with account details
✅ Smooth animations
✅ Navigation menu
✅ Contact information
✅ Social media links

---

## 🌐 Deployment

**Easy Option - Netlify:**
1. Push your code to GitHub
2. Connect GitHub to Netlify
3. Deploy with one click!

**See `INSTALLATION.md` for more options**

---

## 🔧 Customize in 5 Minutes

1. **Update Bank Accounts**
   - Open: `src/components/Giving.svelte`
   - Find: `const accounts: Account[] = [`
   - Replace account numbers

2. **Update Service Times**
   - Open: `src/components/Meetings.svelte`
   - Find: `const meetings: Meeting[] = [`
   - Change times

3. **Add Your Contact Info**
   - Open: `src/components/Location.svelte`
   - Find phone, email sections
   - Replace with your details

4. **Change Colors**
   - Search for: `#2d5016`
   - Replace with your color

5. **Save & Refresh Browser**
   - Changes appear instantly!

---

## 📞 Contact Details

Update these in `src/components/Location.svelte`:
- **Current Phone**: +234 (0) 123 456 7890
- **Current Email**: info@christmissionchurch.org
- **Current Location**: Ilaro, Ogun State, Nigeria

---

## 🎯 Hero Section Call-to-Action

**Current**: "Join us this Sunday"

To change:
1. Open: `src/components/Hero.svelte`
2. Find: `Join us this Sunday`
3. Replace text
4. Save & refresh

---

## 💡 Tips

- **Saves automatically?** No - remember to save files (Ctrl+S)
- **Changes not showing?** Refresh browser (F5)
- **Port 5173 busy?** Use `npm run dev -- --port 3000`
- **Mobile testing?** Open `localhost:5173` on your phone
- **Need help?** See `CUSTOMIZATION.md` for examples

---

## 📚 Full Documentation

- `README.md` - Project overview
- `INSTALLATION.md` - Setup & deployment
- `PROJECT-SUMMARY.md` - Complete details
- `CUSTOMIZATION.md` - How to customize
- `FILES-CHECKLIST.md` - Component list

---

## 🚀 Deploy Today

```powershell
# Build for production
npm run build

# Files ready in 'dist' folder
# Upload to your hosting provider
```

---

## ❌ If Something Goes Wrong

**npm install fails:**
```powershell
npm cache clean --force
npm install --legacy-peer-deps
```

**Port already in use:**
```powershell
npm run dev -- --port 3000
```

**Styles not loading:**
```powershell
npm run build
npm run preview
```

---

## 🎉 YOU'RE READY!

Your Christ Mission Church website is ready to launch!

**Next: Double-click `start.bat` and see your beautiful new website!**

Questions? See the documentation files included in this folder.

Happy launching! 🙏
