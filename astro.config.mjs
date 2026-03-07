import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';
import sitemap from '@astrojs/sitemap';

export default defineConfig({
  site: 'https://tarbiyaplus.com',
  integrations: [mdx(), sitemap()],
  redirects: {
    '/sitemap.xml': '/sitemap-index.xml',
    '/about.html': '/about/',
    '/privacy.html': '/privacy/',
    '/articles/sleep-training.html': '/articles/sleep-training/',
    '/articles/ramadan-child-sleep.html': '/articles/ramadan-child-sleep/',
    '/articles/teaching-kids-to-fast.html': '/articles/teaching-kids-to-fast/',
    '/articles/ramadan-activities-for-kids.html': '/articles/ramadan-activities-for-kids/',
    '/articles/teaching-kids-prayer.html': '/articles/teaching-kids-prayer/',
    '/articles/screen-time-for-kids.html': '/articles/screen-time-for-kids/',
  },
});
