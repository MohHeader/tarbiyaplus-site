#!/bin/bash
# Generates sitemap.xml by scanning all HTML files in the website directory
# Excludes templates. Runs automatically as Vercel build step.

SITE_URL="https://tarbiyaplus.com"
DIR="$(cd "$(dirname "$0")" && pwd)"
OUTPUT="$DIR/sitemap.xml"

cat > "$OUTPUT" << 'HEADER'
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
HEADER

# Find all HTML files, exclude templates
find "$DIR" -name "*.html" -not -path "*/templates/*" | sort | while read -r file; do
    # Get path relative to website dir
    rel_path="${file#$DIR/}"

    # Build URL: index.html -> /, other files keep their path
    if [ "$rel_path" = "index.html" ]; then
        url="$SITE_URL/"
    else
        url="$SITE_URL/$rel_path"
    fi

    # Get last modified date from git, fallback to file modification date
    lastmod=$(git -C "$DIR" log -1 --format="%aI" -- "$file" 2>/dev/null | cut -d'T' -f1)
    if [ -z "$lastmod" ]; then
        lastmod=$(date -r "$file" +%Y-%m-%d 2>/dev/null || date -d @"$(stat -c %Y "$file")" +%Y-%m-%d)
    fi

    cat >> "$OUTPUT" << EOF
  <url>
    <loc>$url</loc>
    <lastmod>$lastmod</lastmod>
  </url>
EOF
done

echo "</urlset>" >> "$OUTPUT"
echo "Sitemap generated: $OUTPUT"
