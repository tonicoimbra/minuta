# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This App Does

**Gerador de Minutas** is a decision-tree-based tool for the **Tribunal de Justiça do Paraná (TJPR)**. Judicial staff answer guided questions to classify irregularities in **preparo recursal** (appeal court fees) for exceptional appeals (REsp → STJ, RE → STF). The app navigates four main categories — **complementação**, **pagamento em dobro**, **deserção**, and **intempestivo** — and generates a ready-to-sign standardized decision text (minuta) for the selected path.

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

1. `src/data/flow.ts` — defines the entire decision tree as the exported `fluxo: Flow` object (`{ [key: string]: Question }`). Each node has a `pergunta` (question) and an array of `opcoes` (options), each option carrying a `snippet` string and a `proximo` key pointing to the next node. The tree terminates at a special `"final"` key. Helper `finalOption` shorthand creates options that go directly to `"final"`.

2. `src/App.tsx` — walks the tree. State: `etapaAtual` (current node key), `historico` (stack of `{ step, optionText, snippet }`), `finalizado`, `selectedOption` (radio-button selection before confirming), `copiado` (clipboard feedback), `theme`. On each step the user selects a radio option, then clicks Avançar to commit. On completion `findMinutaByPath` resolves the full minuta template from `historico`. UI features: animated sidebar showing the trail (`STEP_LABELS` / `STEP_ICONS` maps), `renderMinutaComColchetes` highlights `[PLACEHOLDER]` text in red, `useReducedMotion()` disables animations when the OS preference is set. Animations use `motion/react`; icons use `lucide-react`.

3. `src/data/minutaCatalog.ts` — recursively walks `fluxo` and builds a flat `MinutaCatalogEntry[]` catalog of every possible path. Exports `minutaCatalog` and `findMinutaByPath(path: MinutaPathStep[])`. `MinutaPathStep` has fields `{ step: string; optionText: string }`.

4. `src/data/minutaTemplates.ts` — maps each complete path to a `MinutaTemplate` (`{ id, title, text, sourceFiles }`). All body text is extracted verbatim from real TJPR PDF reference documents in `/minutas/`. Variable data is represented as `[PLACEHOLDER]` tokens. Called by `minutaCatalog.ts` via `resolveMinutaTemplate`.

5. `src/components/TJPR.tsx` — reusable component library (TJPRCard, TJPRButton, TJPRInput, TJPRHeader, TJPRBadge, TJPRFormGroup, TJPRModal, CookieConsent). No external component library — all components are custom-built here.

### Styling

- Tailwind CSS 4 (via `@tailwindcss/vite` plugin). Design tokens are declared in the `@theme {}` block in `src/index.css` as `--color-tjpr-navy-*`, `--color-tjpr-gold`, etc., which Tailwind exposes as utility classes (`text-tjpr-navy-900`, `bg-tjpr-gold`, …). Duplicate `:root` CSS custom properties (`--tjpr-navy-*`) are also present for direct CSS usage.
- Dark mode variant is class-based (`@variant dark (&:where(.dark, .dark *))`), toggled by adding/removing the `dark` class on `<html>`. Theme preference is persisted to `localStorage` under `theme-mode`.
- Border radius is 0 throughout (sharp institutional look). Semantic component-level CSS classes (e.g. `question-card-dark`, `trail-panel-light`) are defined in `src/index.css`.
- Material Icons loaded via Google Fonts CDN in `index.html`.

### Adding New Decision Tree Branches

Edit `src/data/flow.ts` and `src/data/minutaTemplates.ts` together:
- `flow.ts`: add new nodes and/or terminal `finalOption` entries; update `STEP_LABELS` and `STEP_ICONS` in `App.tsx` for any new node keys.
- `minutaTemplates.ts`: add a `case` in `resolveMinutaTemplate` for every new terminal path, providing the full `MinutaTemplate` with `id`, `title`, `text` (use `[PLACEHOLDER]` for variable data), and `sourceFiles`.
- `App.tsx` and `minutaCatalog.ts` require no structural changes.

### Environment Variables

Copy `.env.example` to `.env.local`. `GEMINI_API_KEY` and `APP_URL` are defined. The `@google/genai` and `express` dependencies are present but not yet wired into the UI.

### Docker / Production

Multi-stage `Dockerfile`: Node 20 Alpine builds, Nginx Alpine serves. `nginx.conf` handles SPA routing (all routes → `index.html`).
