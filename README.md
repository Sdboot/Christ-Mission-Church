# Christ Mission Church Website

A beautiful, modern website for Christ Mission Church built with Svelte and Vite.

## Features

- ✨ **Clean Hero Section** - Eye-catching landing section with call-to-action
- 📅 **Weekly Meetings** - Display service times (Wednesday 5PM, Friday 5PM, Saturday 5:30PM, Sunday 9AM)
- 🎙️ **Latest Sermons** - Showcase recent sermon videos and messages
- 💝 **Giving Section** - Bank account details with copy-to-clipboard functionality
- 🗺️ **Interactive Map** - Location and directions to Ilaro, Ogun State
- 📱 **Fully Responsive** - Optimized for all devices

## Getting Started

### Prerequisites
- Node.js (v16 or higher)
- npm or yarn

### Installation

1. Navigate to the project directory:
```bash
cd "christ mission church"
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm run dev
```

The website will open in your browser at `http://localhost:5173`

## Building for Production

```bash
npm run build
```

The built files will be in the `dist` directory.

## Preview Production Build

```bash
npm run preview
```

## Project Structure

```
src/
  ├── components/
  │   ├── Header.svelte        # Navigation header
  │   ├── Hero.svelte          # Hero section with CTA
  │   ├── Meetings.svelte      # Weekly service schedule
  │   ├── Sermon.svelte        # Latest sermons showcase
  │   ├── Giving.svelte        # Donation info & accounts
  │   ├── Location.svelte      # Map & contact info
  │   └── Footer.svelte        # Footer
  ├── App.svelte               # Main app component
  └── main.ts                  # Entry point
```

## Design Highlights

- **Colors**: Professional green (#2d5016) and neutral tones
- **Typography**: Clean, modern sans-serif fonts
- **Animations**: Smooth transitions and hover effects
- **Layout**: Responsive grid-based layouts
- **Accessibility**: Semantic HTML and keyboard navigation

## Technologies Used

- **Svelte 4** - Reactive component framework
- **Vite** - Fast build tool
- **TypeScript** - Type safety
- **Leaflet** - Interactive mapping
- **CSS3** - Modern styling with animations

## Customization

### Change Colors
Edit the color values in each component's `<style>` section or the global styles in `App.svelte`.

### Update Bank Accounts
Edit the `accounts` array in `src/components/Giving.svelte`.

### Modify Service Times
Update the `meetings` array in `src/components/Meetings.svelte`.

### Update Church Info
- Location: Edit `src/components/Location.svelte`
- Sermons: Update `src/components/Sermon.svelte`
- Footer: Edit `src/components/Footer.svelte`

## Deployment

The built website can be deployed to any static hosting service:
- Vercel
- Netlify
- GitHub Pages
- Firebase Hosting
- AWS S3

Simply upload the contents of the `dist` folder after building.

## License

© 2024 Christ Mission Church. All rights reserved.

## Support

For questions or issues, please contact: info@christmissionchurch.org
