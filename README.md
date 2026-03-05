# تربية بلس (Tarbiya Plus) - Website

> لأن ما في manual (Because there's no manual)

The official website for TarbiyaPlus, the #1 Arabic parenting resource connecting Islamic values to modern child development.

## Deployment

**Auto-Deployment**: This repository is connected to Vercel and configured for automatic deployment.

- **Production**: Any push to the `main` branch automatically deploys to production
- **No manual deployment needed**: Vercel watches the GitHub repository and rebuilds on every commit
- **Deployment URL**: Live site is accessible via the Vercel-provided URL (check `.vercel` folder for config)

### Making Updates

1. Make your changes to the HTML/CSS files
2. Commit your changes: `git add . && git commit -m "Your message"`
3. Push to GitHub: `git push origin main`
4. Vercel will automatically detect the push and deploy within 1-2 minutes

## Project Structure

```
tarbiyaplus-site/
├── index.html          # Homepage (hero, about, articles, footer)
├── articles/           # Individual article pages
├── .vercel/            # Vercel deployment configuration
└── README.md           # This file
```

## Design System

**Colors**:
- Primary Green: `#4A7C59`
- Light Green: `#6B9B7F`
- Warm White: `#FFF8F0`
- Soft Cream: `#FEFDF8`

**Typography**:
- Arabic Font: [Tajawal](https://fonts.google.com/specimen/Tajawal) via Google Fonts
- Alternative: Noto Kufi Arabic

**Layout**:
- RTL (Right-to-Left) throughout
- Mobile-first responsive design
- Accessibility-focused

## Content Guidelines

**Tone**: Warm, practical, sincere, with light humor
**Audience**: Arabic-speaking parents in MENA region
**Values**: Islamic values + modern parenting science

## Tech Stack

- Pure HTML5 + CSS3
- Google Fonts (Tajawal)
- Mobile-first responsive design
- Deployed on Vercel
- GitHub integration for auto-deployment

---

**Questions?** Contact the TarbiyaPlus team or check the main project repository.
