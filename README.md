# Codex-WSP

AI-native monorepo workspace for building multiple applications with Codex.

## Workspace Layout

```text
apps/        Applications grouped by platform/type
packages/    Shared libraries and reusable utilities
prompts/     Global AI agent prompts
templates/   Reusable scaffolding templates
docs/        Workspace documentation
```

## Applications

### Web
- `apps/web/apple-books-web-reader`

### Apple Platforms
- `apps/apple/apple-books-swiftui-reader`

## Workflow

```bash
git clone https://github.com/Meaple-SFKY/Codex-WSP.git
cd Codex-WSP
```

Run Codex inside a target app:

```bash
cd apps/web/apple-books-web-reader
codex exec
```

or:

```bash
cd apps/apple/apple-books-swiftui-reader
codex exec
```

Each application contains:

- `AGENTS.md`
- `SPEC.md`
- `ARCHITECTURE.md`
- `TASKS.md`
- `TESTING.md`
- `prompts/`
