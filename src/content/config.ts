import { z, defineCollection } from 'astro:content';

const examplesCollection = defineCollection({});

export const collections = {
  examples: examplesCollection,
};
