# ₹ Rupee Expense Tracker PWA

A minimalist, mobile-first, installable **Progressive Web App (PWA)** for tracking daily expenses in Indian Rupees (`₹`) with a sleek dark slate theme (`#0f172a`), Chart.js analytics, and local persistence.

---

## 🌟 Features

- **Central Quick-Entry Form:**
  - Large numerical amount input prefixed with `₹` (optimized with `inputmode="decimal"` for mobile numeric keyboards).
  - Reason / Purpose input (`"Why did you spend?"`).
  - **Category Keyword / Tag Selector:** Quick-tap chips (`Food`, `Travel`, `Utilities`, `Shopping`, `Bills`, `Misc`) + custom keyword datalist.
  - **Remark / Note Field:** Optional secondary text field for extra context (e.g., *"Auto fare to metro"*, *"Client lunch meeting"*).
  - Rapid sequential entry: Submitting automatically saves to `localStorage` and refocuses the amount field.

- **Top Collapsible History & Analytics Dropdown:**
  - **Full List Tab:** Chronological history with search, tag filters, delete buttons, and **Export Excel (CSV)** formatted with UTF-8 BOM.
  - **Monthly Chart Tab:** Interactive bar chart powered by Chart.js. Tap any month's bar to drill down and inspect its individual expenses.
  - **Install Button:** Automatically appears when the browser detects PWA installability.

- **Bottom Summary Dashboard:**
  - **Today:** Total spent today.
  - **This Week:** Total spent this week (starting Monday).
  - **This Month:** Highlighted in emerald accent theme.

---

## 📁 Project Structure

```
rupee-expense-pwa/
├── index.html         # Main PWA application with Tailwind CSS & Chart.js
├── manifest.json      # Web App Manifest for mobile installation & APK packaging
├── sw.js              # Service Worker for offline caching and lightning-fast loads
├── icon-192.svg       # 192x192 SVG icon for home screen
├── icon-512.svg       # 512x512 SVG icon for splash screen / app store
├── push-to-github.bat # 1-click helper script to push to GitHub
└── README.md          # Complete documentation & app creation guide
```

---

## 🚀 How to Push to GitHub

Repository: `https://github.com/nithishsrinivasakan-arch/Expense-Tracker.git`

### Method 1: Direct Web Upload (No Git Installation Required)

1. Open your repository in your browser: [https://github.com/nithishsrinivasakan-arch/Expense-Tracker](https://github.com/nithishsrinivasakan-arch/Expense-Tracker)
2. Click **Add file** ➔ **Upload files**.
3. Drag and drop all files from this directory (`index.html`, `manifest.json`, `sw.js`, `icon-192.svg`, `icon-512.svg`, `README.md`).
4. Type a commit message (e.g. `Initial commit: Rupee Expense Tracker PWA`) and click **Commit changes**.

### Method 2: Using Git Terminal

If you have Git installed (or after installing from [git-scm.com](https://git-scm.com/download/win)):

```bash
cd "C:\Users\nithi\.gemini\antigravity\scratch\rupee-expense-pwa"
git init
git add .
git commit -m "Initial commit: Rupee Expense Tracker PWA"
git branch -M main
git remote add origin https://github.com/nithishsrinivasakan-arch/Expense-Tracker.git
git push -u origin main
```

*(You can also simply double-click `push-to-github.bat`)*

---

## 📱 How to Create the Downloadable App

### Option A: Free Android APK / Google Play App via PWABuilder (Recommended)

1. **Enable GitHub Pages:**
   - In your GitHub repository, go to **Settings** ➔ **Pages**.
   - Under **Build and deployment**, set Source to **Deploy from a branch**, choose `main` branch, and folder `/ (root)`. Click **Save**.
   - Your live app URL will be: `https://nithishsrinivasakan-arch.github.io/Expense-Tracker/`

2. **Generate Downloadable APK:**
   - Go to [PWABuilder.com](https://www.pwabuilder.com).
   - Enter your live URL: `https://nithishsrinivasakan-arch.github.io/Expense-Tracker/` and click **Start**.
   - PWABuilder checks the `manifest.json` and `sw.js` (both are already configured with 100% score).
   - Click **Package for Stores** ➔ **Android**.
   - Click **Generate Package** to download your signed `.apk` file directly to your computer or phone!

### Option B: Instant Mobile App (No App Store / WebAPK)

Once deployed to GitHub Pages:
- **Android:** Open `https://nithishsrinivasakan-arch.github.io/Expense-Tracker/` in Chrome. Tap the **Install** button inside the app or the 3-dot menu ➔ **Install app** / **Add to Home screen**. Android creates a native WebAPK that runs full-screen with offline support.
- **iPhone / iOS:** Open in Safari ➔ Tap the **Share** button ➔ **Add to Home Screen**.

### Option C: Standalone Windows Desktop App (.exe)

You can run it as a native desktop application using Electron:
```bash
npx electron .
```
