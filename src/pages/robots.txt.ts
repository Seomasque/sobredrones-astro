import type { APIRoute } from "astro";

// Permite explícitamente los crawlers de IA (GEO): GPTBot, OAI-SearchBot,
// PerplexityBot, ClaudeBot y Google-Extended, además de los buscadores clásicos.
const robots = (siteURL: string) => `User-agent: *
Allow: /

User-agent: GPTBot
Allow: /

User-agent: OAI-SearchBot
Allow: /

User-agent: ChatGPT-User
Allow: /

User-agent: PerplexityBot
Allow: /

User-agent: ClaudeBot
Allow: /

User-agent: Google-Extended
Allow: /

Sitemap: ${siteURL}sitemap-index.xml`;

export const GET: APIRoute = ({ site }) =>
  new Response(robots(site?.toString() ?? "https://sobredrones.es/"), {
    headers: { "Content-Type": "text/plain" },
  });
