# Workspace Upgrade Roadmap

This document defines the future upgrade plan for Codex-WSP.

The goal is to evolve this repository into a stable AI-native software engineering system where:

- ChatGPT maintains product specifications and governance files.
- Codex CLI implements code locally.
- GitHub validates quality through CI and pull requests.
- Applications share reusable packages through a monorepo architecture.

## Priority 1: GitHub Actions CI

### Upgrade Point

Add GitHub Actions workflows for:

- lint
- typecheck
- test
- build
- governance file protection

### Why

Codex CLI may generate code that appears correct but fails to build or test. CI provides an automatic quality gate after each push or pull request.

### How

Create:

```text
.github/workflows/ci.yml
.github/workflows/protect-governance.yml
```

Recommended CI stages:

```text
install dependencies
run lint
run typecheck
run tests
run build
check protected governance files
```

---

## Priority 2: PR-Based AI Development Workflow

### Upgrade Point

Codex should implement changes on feature branches rather than directly on `main`.

### Why

This allows:

- isolated experiments
- safer AI-generated changes
- CI validation before merge
- review before main branch updates

### How

Recommended workflow:

```bash
git checkout -b feat/<app-name>/<feature-name>
cd apps/<type>/<app-name>
codex exec "$(cat prompts/implement.md)"
git add .
git commit -m "Implement <feature>"
git push -u origin feat/<app-name>/<feature-name>
```

Then open a pull request and review before merge.

---

## Priority 3: Shared Packages Architecture

### Upgrade Point

Add shared monorepo packages:

```text
packages/ui
packages/shared
packages/reader-core
packages/search-core
packages/ai-services
```

### Why

Multiple applications will eventually share:

- UI components
- reader logic
- book parsing
- search services
- AI utilities
- common types

Without shared packages, apps will duplicate logic and drift over time.

### How

Start with lightweight package placeholders, then move repeated code into shared packages as apps mature.

Recommended order:

1. `packages/shared`
2. `packages/reader-core`
3. `packages/search-core`
4. `packages/ui`
5. `packages/ai-services`

---

## Priority 4: Playwright UI Testing for Web Apps

### Upgrade Point

Add Playwright-based end-to-end UI tests for web applications.

### Why

AI coding often creates code that compiles but produces poor or broken UI behavior. Browser automation can verify real user flows.

### How

For `apps/web/apple-books-web-reader`, add tests for:

- opening bookshelf
- searching books
- importing local files
- opening reader view
- changing theme
- changing font size
- preserving progress

Recommended files:

```text
apps/web/apple-books-web-reader/e2e/
apps/web/apple-books-web-reader/playwright.config.ts
```

---

## Priority 5: UI Governance Documents

### Upgrade Point

Add deeper UI governance files per app:

```text
COMPONENT_RULES.md
ANIMATION_RULES.md
ACCESSIBILITY.md
```

### Why

AI agents can satisfy functional requirements while producing inconsistent UI. Explicit design governance improves UI quality and consistency.

### How

For each UI-heavy app, maintain:

- component rules
- spacing rules
- animation rules
- accessibility requirements
- responsive behavior rules

---

## Priority 6: Turbo Remote Cache

### Upgrade Point

Enable remote caching for Turborepo.

### Why

Builds and tests can be reused across local machines and CI, reducing repeated work.

### How

After CI is stable, configure Turborepo remote cache provider and environment variables.

---

## Priority 7: Multi-Agent Review Pipeline

### Upgrade Point

Introduce a staged AI review workflow:

```text
Codex implements
ChatGPT reviews specifications and architecture
CI validates
Human approves
```

### Why

Implementation agents are good at generating code, but review agents are better at catching inconsistencies, architecture drift, and requirement mismatches.

### How

Add review prompts:

```text
prompts/review/architecture-review.md
prompts/review/ui-review.md
prompts/review/security-review.md
prompts/review/test-review.md
```

---

## Priority 8: Application Template System

### Upgrade Point

Create reusable templates for new apps.

### Why

Future apps should automatically follow the same structure, governance rules, and Codex workflow.

### How

Create:

```text
templates/web-app/
templates/swiftui-app/
templates/cli-app/
templates/ai-app/
```

Each template should include:

- README.md
- README.zh-CN.md
- AGENTS.md
- SPEC.md
- TASKS.md
- DESIGN.md
- TESTING.md
- prompts/implement.md

---

## Current Recommended Upgrade Order

1. GitHub Actions CI
2. PR-based workflow
3. Shared packages
4. Playwright UI tests
5. UI governance documents
6. Turbo remote cache
7. Multi-agent review pipeline
8. Application template system

## Maintenance Rule

This roadmap is a governance document. It should be maintained by ChatGPT through GitHub, not modified by local Codex CLI implementation runs.
