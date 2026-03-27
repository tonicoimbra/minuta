# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This App Does

**Gerador de Minutas** is a decision-tree-based tool for the **Tribunal de Justiça do Paraná (TJPR)**. Judicial staff answer guided questions about case preparation irregularities, and the app assembles a standardized legal document (minuta) by concatenating the text snippets associated with each selected option.

## Commands

```bash
npm run dev      # Start Vite dev server on http://localhost:3000
npm run build    # Production build (output: /dist)
npm run preview  # Preview production build locally
npm run lint     # TypeScript type-check only (tsc --noEmit) — no ESLint
npm run clean    # Remove dist directory
```

No test runner is configured.

The app is deployed to GitHub Pages at `/minuta/` (the `base` in `vite.config.ts` must stay `/minuta/`).

## Architecture

### Core Data Flow

All logic is declarative and stateless:

1. `src/data/flow.ts` — defines the entire decision tree as a `Flow` object (`Record<string, Question>`). Each node has a `pergunta` (question) and an array of `opcoes` (options), each option carrying a `snippet` string and a `proximo` key pointing to the next node. The tree terminates at a special `"final"` key.

2. `src/App.tsx` — walks the tree. State: `etapaAtual` (current node key), `historico` (stack of visited nodes for back-navigation), `snippetsSelecionados` (accumulated snippets). On completion, the final minuta is the `snippetsSelecionados` array joined with spaces.

3. `src/components/TJPR.tsx` — reusable component library (TJPRCard, TJPRButton, TJPRInput, TJPRHeader, TJPRBadge, TJPRFormGroup, TJPRModal, CookieConsent). No external component library — all components are custom-built here.

### Styling

- Tailwind CSS 4 (via `@tailwindcss/vite` plugin) + CSS custom properties in `src/index.css`.
- TJPR design tokens use CSS variables named `--tjpr-navy-*`, `--tjpr-gold-*`, etc. Border radius is 0 (sharp institutional look).
- Dark mode via Tailwind's `dark:` prefix, toggled by adding/removing the `dark` class on `<html>`.
- Material Icons loaded via Google Fonts CDN in `index.html`.

### Adding New Decision Tree Branches

To extend the flow, edit `src/data/flow.ts` only — add new nodes to the `fluxo` object. The UI in `App.tsx` is completely driven by the data structure and requires no changes for new branches.

### Environment Variables

Copy `.env.example` to `.env.local`. `GEMINI_API_KEY` and `APP_URL` are defined but the Gemini integration (`@google/genai`) is not yet wired into the UI.

### Docker / Production

Multi-stage `Dockerfile`: Node 20 Alpine builds, Nginx Alpine serves. `nginx.conf` handles SPA routing (all routes → `index.html`).
