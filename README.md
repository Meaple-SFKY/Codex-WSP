# Codex-WSP

AI-native monorepo application factory workspace.

## Workspace Layout

```text
apps/        Applications
packages/    Shared components and utilities
prompts/     AI agent prompts
templates/   Project templates
docs/        Workspace documentation
```

## Current Applications

### Web
- `apps/web/apple-books-web-reader`

### Apple Platforms
- `apps/apple/apple-books-swiftui-reader`

## Recommended Workflow

```bash
git clone https://github.com/Meaple-SFKY/Codex-WSP.git
cd Codex-WSP
```

Run Codex inside a target application:

```bash
cd apps/web/apple-books-web-reader
codex exec "$(cat prompts/implement.md)"
```

or:

```bash
cd apps/apple/apple-books-swiftui-reader
codex exec "$(cat prompts/implement.md)"
```

## AI Engineering Conventions

Each application directory may contain:

- `AGENTS.md` — AI agent behavior rules
- `SPEC.md` — Final product requirements (highest priority)
- `TASKS.md` — Current development phases and tasks
- `DESIGN.md` — Design system and visual direction
- `UI_RULES.md` — UI conventions (mostly Web apps)
- `READER_EXPERIENCE.md` — Reading experience requirements
- `TESTING.md` — Testing requirements
- `prompts/implement.md` — Codex execution entry prompt

## How To Add New Requirements

Do not treat `prompts/implement.md` as the main product requirement source.

Recommended workflow:

### Product Requirement Changes

Update:

```text
SPEC.md
```

Used for:

- New features
- Feature logic changes
- Product direction changes
- UI direction changes

---

### Development Phase Changes

Update:

```text
TASKS.md
```

Used for:

- New development phases
- New implementation tasks
- Priority adjustments

---

### AI Execution Style Changes

Update:

```text
AGENTS.md
```

Used for:

- Stricter code quality
- More aggressive automation
- Performance focus
- UI focus

---

### UI / Design Changes

Update:

```text
DESIGN.md
UI_RULES.md
READER_EXPERIENCE.md
```

---

### Purpose of prompts/implement.md

`prompts/implement.md` is mainly responsible for:

- Telling Codex which files to read
- Defining execution strategy
- Defining implementation priorities
- Defining the current execution objective

It should not be treated as the source of truth for product requirements.

The real product requirement source is:

```text
SPEC.md
```

## Recommended Execution Command

```bash
codex exec "$(cat prompts/implement.md)"
```

This allows Codex to automatically read:

- SPEC.md
- TASKS.md
- AGENTS.md
- DESIGN.md
- TESTING.md

and continue implementation based on the latest requirements.
