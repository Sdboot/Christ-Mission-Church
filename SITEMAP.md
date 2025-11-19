# 🗺️ WEBSITE SITEMAP & FEATURES

## Page Structure

```
┌─────────────────────────────────────────────────────────┐
│                    HEADER (Navigation)                   │
│  Logo: ✝️ CMC    [Meetings] [Sermons] [Giving] [Location]│
└─────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────┐
│                  HERO SECTION (Full Screen)              │
│                                                          │
│       Welcome to Christ Mission Church                   │
│       A community devoted to faith, fellowship,          │
│       and spiritual growth                              │
│                                                          │
│              [Join us this Sunday →]                    │
│                                                          │
└─────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────┐
│              WEEKLY MEETINGS (Services)                  │
│                                                          │
│  📖 Wednesday      🙏 Friday        ✨ Saturday   ⛪ Sunday│
│  5:00 PM          5:00 PM         5:30 PM       9:00 AM  │
│                                                          │
└─────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────┐
│              LATEST SERMONS (Featured)                   │
│                                                          │
│  ┌──────────────────┐  ┌─────────────────────────┐     │
│  │ Featured Sermon  │  │ More Sermons List:      │     │
│  │ Image/Gradient   │  │ • Sermon 1              │     │
│  │ [Video Player]   │  │ • Sermon 2              │     │
│  └──────────────────┘  │ • Sermon 3              │     │
│  Speaker & Date        └─────────────────────────┘     │
│  [Watch Sermon]                                        │
│                                                          │
└─────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────┐
│              GIVING SECTION (Donations)                  │
│                                                          │
│  Why Support CMC?          Bank Accounts:               │
│  ✓ Community outreach      🏦 First Bank: 0123456789   │
│  ✓ Spiritual development   💳 GTBank: 0987654321       │
│  ✓ Facility maintenance    💰 Access Bank: 1122334455  │
│  ✓ Missionary work         [Copy] [Copy] [Copy]        │
│  ✓ Support those in need                               │
│                                                          │
│  Other Ways to Give:                                   │
│  📱 Mobile Transfer  |  🏪 In-Person  |  💻 Online    │
│                                                          │
└─────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────┐
│          LOCATION & MAP (Church Location)               │
│                                                          │
│  ┌──────────────────┐  📍 Ilaro, Ogun State           │
│  │   Interactive    │  📞 +234 (0) 123 456 7890       │
│  │   Leaflet Map    │  ✉️ info@christmissionchurch    │
│  │   (Ilaro, NG)    │  🕐 All Service Times Listed    │
│  │   ┌──────────┐   │                                 │
│  │   │📍Church  │   │  [Get Directions]              │
│  │   └──────────┘   │                                 │
│  └──────────────────┘                                 │
│                                                          │
└─────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────┐
│                  FOOTER (Links & Info)                   │
│                                                          │
│  Church Info         Quick Links      Contact           │
│  Mission statement   [Meetings]       Phone             │
│  Description         [Sermons]        Email             │
│  [Social Icons]      [Giving]         Service Times     │
│                      [Location]                         │
│                                                          │
│             © 2024 Christ Mission Church                │
│                                                          │
└─────────────────────────────────────────────────────────┘
```

---

## 🧭 Navigation Flow

### Header Navigation (Always Visible)
```
┌─────────────────┐
│ Logo ✝️ CMC     │
├─────────────────┤
│ Desktop Menu:   │ Mobile Menu (Hamburger):
│ • Meetings  ──┐ │ ☰ (tap) →
│ • Sermons   ──┼─┤ • Meetings
│ • Giving    ──┤ │ • Sermons
│ • Location  ──┤ │ • Giving
│               │ │ • Location
└─────────────────┘ └─────────────────┘
       │ (Smooth scroll to section)
       ↓ (Anchors: #meetings, #sermon, #giving, #location)
```

---

## 📐 Section Details

### 1. HEADER
- **Height**: 60-80px
- **Type**: Sticky (stays at top)
- **Content**: Logo + Navigation menu
- **Mobile**: Hamburger menu

### 2. HERO
- **Height**: Full viewport (100vh)
- **Background**: Animated gradient
- **CTA Button**: "Join us this Sunday"
- **Animation**: Fade-in on load

### 3. MEETINGS
- **Layout**: 4-column grid
- **Cards**: Service time cards
- **Info per card**: Day, Time, Icon
- **Responsive**: 1 column on mobile

### 4. SERMONS
- **Layout**: 2-column (featured + list)
- **Featured**: Large video preview
- **List**: 3 recent sermons
- **Interactive**: Click to feature

### 5. GIVING
- **Layout**: 2-column (message + accounts)
- **Left**: Why give + quote
- **Right**: Bank accounts
- **Feature**: Copy account numbers
- **Extra**: Alternative giving methods

### 6. LOCATION
- **Layout**: 2-column (info + map)
- **Left**: Contact details
- **Right**: Interactive map
- **Map**: Leaflet with marker
- **Location**: Ilaro, Ogun State

### 7. FOOTER
- **Layout**: 4-column grid
- **Col 1**: Church info + social
- **Col 2**: Quick links
- **Col 3**: Contact info
- **Col 4**: Service times

---

## 🎯 Interactive Elements

| Element | Action | Result |
|---------|--------|--------|
| Hero Button | Click | Scroll to Meetings |
| Nav Links | Click | Smooth scroll to section |
| Sermon Item | Click | Featured sermon updates |
| Copy Button | Click | Account number copied |
| Get Directions | Click | Open maps app |
| Menu (Mobile) | Click | Hamburger menu opens |

---

## 📱 Responsive Breakpoints

```
┌─────────────────────────────────────────────────────┐
│ Desktop (1024px+)                                   │
│ - Multi-column layouts                              │
│ - Large fonts                                       │
│ - Full navigation visible                           │
└─────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────┐
│ Tablet (768px - 1023px)                            │
│ - 2-column layouts                                  │
│ - Adjusted spacing                                  │
│ - Hamburger menu visible                            │
└─────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────┐
│ Mobile (under 768px)                               │
│ - Single column layouts                             │
│ - Stack all sections                                │
│ - Hamburger menu (essential)                        │
│ - Optimized touch targets                           │
└─────────────────────────────────────────────────────┘
```

---

## 🎨 Color Coding

```
Primary Green (#2d5016):
├── Buttons
├── Links (hover)
├── Headings
└── Accents

Dark Green (#1f3610):
├── Button hover
├── Active states
└── Contrast

Backgrounds:
├── #f5f7fa - Light blue-gray (Hero, Sermon)
├── #f9f9f9 - Off-white (Meetings, Giving Methods)
├── White - Cards, Info boxes
└── #1a1a1a - Dark text

```

---

## 📊 Content Map

```
📍 Location Data:
   - Latitude: 6.6654
   - Longitude: 3.5477
   - City: Ilaro
   - State: Ogun
   - Country: Nigeria

🏦 Giving Accounts (CUSTOMIZE):
   1. First Bank: 0123456789
   2. GTBank: 0987654321
   3. Access Bank: 1122334455

🕐 Service Times (CUSTOMIZE):
   1. Wednesday: 5:00 PM
   2. Friday: 5:00 PM
   3. Saturday: 5:30 PM
   4. Sunday: 9:00 AM

📞 Contact (CUSTOMIZE):
   - Phone: +234 (0) 123 456 7890
   - Email: info@christmissionchurch.org
```

---

## 🔗 Internal Links (Smooth Scroll)

```
Navigation → Target:

"Meetings" link      → #meetings (Meetings section)
"Sermons" link       → #sermon (Sermon section)
"Giving" link        → #giving (Giving section)
"Location" link      → #location (Location section)
Hero Button          → #meetings (Smooth scroll)
Footer Links         → All above sections
```

---

## 📈 Page Load Performance

```
1. HTML loads (index.html)
2. Styles load (CSS in components)
3. Hero section renders (fast)
4. Components load (Svelte magic!)
5. Leaflet map loads (CDN)
6. Page is interactive
7. All animations enabled
```

---

## 🎬 Animation Timeline

```
Page Load:
├── 0-300ms: Header fades in
├── 300-600ms: Hero section fades in + animates
├── 600ms+: Other sections ready
└── On scroll: Elements appear (if using IntersectionObserver)

Interactions:
├── Button hover: Scale + shadow
├── Link hover: Color change
├── Card hover: Lift + shadow
└── Scroll: Smooth animation
```

---

## 📋 File to Component Mapping

```
index.html
├── App.svelte
    ├── Header.svelte (#header)
    ├── Hero.svelte (#hero)
    ├── Meetings.svelte (#meetings)
    ├── Sermon.svelte (#sermon)
    ├── Giving.svelte (#giving)
    ├── Location.svelte (#location)
    └── Footer.svelte (#footer)
```

---

## ✨ Summary

Your website has:
- **7 major sections** (Header, Hero, Meetings, Sermon, Giving, Location, Footer)
- **100+ interactive elements** (buttons, links, cards)
- **Fully responsive** design for all devices
- **Smooth navigation** with scroll-to-anchor
- **Beautiful animations** and transitions
- **Professional layout** and color scheme
- **Complete customization** options

Everything is ready to use! 🎉
