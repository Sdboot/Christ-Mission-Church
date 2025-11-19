# INSTALLATION & SETUP GUIDE

## Quick Start

Your Christ Mission Church website is ready! Follow these steps to get it running:

### Step 1: Install Dependencies

Open PowerShell in the project directory and run:
```powershell
npm install --legacy-peer-deps
```

Or simply run the provided batch file:
```powershell
.\start.bat
```

### Step 2: Start Development Server

After installation completes, run:
```powershell
npm run dev
```

The website will automatically open at `http://localhost:5173`

### Step 3: Build for Production

When ready to deploy:
```powershell
npm run build
```

## What's Included

### 📁 Project Structure
```
christ mission church/
├── src/
│   ├── components/
│   │   ├── Header.svelte          # Navigation with smooth scrolling
│   │   ├── Hero.svelte            # Clean, animated hero section
│   │   ├── Meetings.svelte        # Weekly service schedule
│   │   ├── Sermon.svelte          # Latest sermons showcase
│   │   ├── Giving.svelte          # Donations & bank details
│   │   ├── Location.svelte        # Map & contact info
│   │   └── Footer.svelte          # Footer with links
│   ├── App.svelte                 # Main component
│   └── main.ts                    # Entry point
├── index.html                     # HTML template
├── package.json                   # Dependencies
├── vite.config.ts                 # Build configuration
├── tsconfig.json                  # TypeScript config
└── README.md                      # Documentation
```

### ✨ Key Features

1. **Hero Section** 
   - Mind-blowingly clean design
   - Animated gradient background
   - Prominent "Join us this Sunday" CTA button
   - Smooth fade-in animation

2. **Weekly Meetings Schedule**
   - Wednesday: 5:00 PM
   - Friday: 5:00 PM
   - Saturday: 5:30 PM
   - Sunday: 9:00 AM

3. **Latest Sermons**
   - Featured sermon display
   - Sermon list with metadata
   - Click to select and view details

4. **Giving Section**
   - Multiple bank account options
   - Copy-to-clipboard functionality
   - Account details clearly displayed
   - Inspiring message about giving

5. **Interactive Map**
   - Location: Ilaro, Ogun State, Nigeria
   - Leaflet-powered interactive map
   - Pinpoint location marker
   - Responsive design

6. **Responsive Design**
   - Mobile-first approach
   - Works on all devices
   - Touch-friendly navigation

## Customization

### Update Church Information

**Contact Details** (`src/components/Location.svelte`):
```typescript
// Line ~40
<p>+234 (0) 123 456 7890</p>  // Update phone
<p>info@christmissionchurch.org</p>  // Update email
```

**Bank Accounts** (`src/components/Giving.svelte`):
```typescript
const accounts: Account[] = [
  {
    bank: 'First Bank',
    accountName: 'Christ Mission Church',
    accountNumber: '0123456789',  // Update account number
    icon: '🏦'
  },
  // Add more accounts as needed
];
```

**Service Times** (`src/components/Meetings.svelte`):
```typescript
const meetings: Meeting[] = [
  { day: 'Wednesday', time: '5:00 PM', icon: '📖' },
  { day: 'Friday', time: '5:00 PM', icon: '🙏' },
  { day: 'Saturday', time: '5:30 PM', icon: '✨' },
  { day: 'Sunday', time: '9:00 AM', icon: '⛪' }
];
```

**Sermons** (`src/components/Sermon.svelte`):
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
  // Add more sermons
];
```

### Change Colors

Edit the color schemes in any component's `<style>` section. Key colors used:
- Primary Green: `#2d5016` (church branding)
- Dark Green: `#1f3610` (hover states)
- Text Dark: `#1a1a1a`
- Text Light: `#666` or `#999`

Example in `Hero.svelte`:
```css
background: linear-gradient(135deg, #2d5016 0%, #1f3610 100%);
```

### Add Your Own Sermons

1. Upload sermon videos to a platform (YouTube, Vimeo)
2. Update the `sermons` array in `Sermon.svelte`
3. Add gradient backgrounds or image URLs
4. Set the correct speaker and dates

## Deployment Options

### Netlify (Recommended for Beginners)
1. Push your code to GitHub
2. Connect GitHub to Netlify
3. Set build command: `npm run build`
4. Set publish directory: `dist`
5. Deploy!

### Vercel
```bash
npm install -g vercel
vercel
```

### GitHub Pages
```bash
npm run build
# Push dist folder to gh-pages branch
```

### AWS S3 + CloudFront
```bash
npm run build
# Upload dist folder to S3
```

## Troubleshooting

### npm install fails
```powershell
npm cache clean --force
npm install --legacy-peer-deps
```

### Port 5173 already in use
```powershell
npm run dev -- --port 3000
```

### Build errors
```powershell
npm run check  # Check for TypeScript errors
```

## Support & Help

- **Svelte Docs**: https://svelte.dev/docs
- **Vite Docs**: https://vitejs.dev
- **Leaflet Docs**: https://leafletjs.com

## Performance Optimizations

✓ Lazy-loading images
✓ Code splitting with Vite
✓ CSS minification
✓ Tree-shaking unused code
✓ Responsive images

## Browser Support

- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Mobile browsers

## License

© 2024 Christ Mission Church. All rights reserved.
