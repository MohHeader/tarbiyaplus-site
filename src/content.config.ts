import { defineCollection, z } from 'astro:content';
import { glob } from 'astro/loaders';

const articles = defineCollection({
    loader: glob({ pattern: '**/*.mdx', base: './src/content/articles' }),
    schema: z.object({
        title: z.string(),
        description: z.string(),
        keywords: z.string(),
        category: z.string(),
        tags: z.array(z.string()),
        datePublished: z.coerce.date(),
        dateModified: z.coerce.date(),
        coverImage: z.string(),
        coverAlt: z.string(),
        excerpt: z.string(),
    }),
});

export const collections = { articles };
