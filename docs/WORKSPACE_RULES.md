# Codex-WSP Workspace Rules

This document is the canonical entry point for future ChatGPT sessions.

When a new ChatGPT conversation starts, the user only needs to ask ChatGPT to read this file first. After reading it, ChatGPT should understand how this repository is organized, how applications are created, and how governance files are maintained.

## Repository Role

`Meaple-SFKY/Codex-WSP` is an AI-native monorepo application factory.

The repository is used to create and manage multiple applications with a clear separation between:

- Governance and product specification work handled by ChatGPT through GitHub.
- Local code implementation handled by Codex CLI on the user's machine.

## Core Workflow

The standard workflow is:

1. The user describes a new application or requirement to ChatGPT.
2. ChatGPT reads the relevant workspace and app governance files.
3. ChatGPT updates the necessary Markdown governance files in GitHub.
4. The user pulls the latest repository locally.
5. The user enters the target app directory.
6. The user runs Codex CLI with the app implementation prompt.
7. Codex CLI implements code locally without modifying governance files.

Recommended local command inside an app directory:

```bash
codex exec "$(cat prompts/implement.md)"
```

For stronger task isolation, prefer:

```bash
codex exec --ephemeral "$(cat prompts/implement.md)"
```

## Monorepo Layout

```text
apps/        Applications grouped by platform/type
packages/    Shared packages and reusable logic
prompts/     Global prompts and review prompts
templates/   App scaffolding templates
docs/        Workspace governance and documentation
.github/     GitHub metadata, CODEOWNERS, and future workflows
.githooks/   Local Git hooks
```

Applications should be created under:

```text
apps/<app-type>/<app-name>/
```

Examples:

```text
apps/web/apple-books-web-reader/
apps/apple/apple-books-swiftui-reader/
```

## Current Applications

- `apps/web/apple-books-web-reader`
- `apps/apple/apple-books-swiftui-reader`

## Required App Governance Files

Each app should contain, when applicable:

- `README.md`
- `README.zh-CN.md`
- `AGENTS.md`
- `SPEC.md`
- `TASKS.md`
- `DESIGN.md`
- `UI_RULES.md`
- `READER_EXPERIENCE.md`
- `TESTING.md`
- `prompts/implement.md`

For non-UI apps, UI-specific files may be omitted or replaced with domain-specific equivalents.

## File Responsibilities

### README.md / README.zh-CN.md

Human-readable application or workspace documentation. Both English and Chinese versions should be kept in sync.

### AGENTS.md

Rules for AI agents working inside the directory. Codex may read this file but must not modify it.

### SPEC.md

The source of truth for product requirements. Highest priority for product behavior.

### TASKS.md

The current implementation plan, phases, and task priorities.

### DESIGN.md

Design system, visual direction, product feel, and UX principles.

### UI_RULES.md

Detailed UI construction rules, mainly for web or UI-heavy apps.

### READER_EXPERIENCE.md

Reading-specific experience requirements for reader apps.

### TESTING.md

Testing requirements and expected verification behavior.

### prompts/implement.md

Codex CLI execution entry prompt. It should tell Codex what files to read and how to implement, but it is not the source of truth for product requirements.

## Requirement Change Rules

The user should not manually edit app governance files unless explicitly choosing to do so.

When requirements change:

- ChatGPT should update `SPEC.md` for product behavior changes.
- ChatGPT should update `TASKS.md` for implementation phase or task changes.
- ChatGPT should update `DESIGN.md`, `UI_RULES.md`, or domain UX files for design or experience changes.
- ChatGPT should update `AGENTS.md` for AI behavior or coding policy changes.
- ChatGPT should update `prompts/implement.md` only when Codex execution strategy changes.
- ChatGPT should update both English and Chinese README files when public-facing documentation changes.

## Governance File Protection

Governance files are maintained by ChatGPT through GitHub and should be read-only for Codex CLI.

Protected file examples:

```text
README.md
README.zh-CN.md
AGENTS.md
SPEC.md
TASKS.md
DESIGN.md
UI_RULES.md
READER_EXPERIENCE.md
TESTING.md
prompts/*.md
docs/*.md
```

Codex CLI may read these files but should not modify them.

The repository includes local Git hook support. After cloning, the user should run:

```bash
git config core.hooksPath .githooks
```

This helps prevent local commits that modify protected governance files.

## ChatGPT Responsibilities

ChatGPT should:

- Read this document first in new sessions.
- Read relevant app governance files before making changes.
- Maintain Markdown governance files through GitHub.
- Keep English and Chinese README files synchronized.
- Decide which governance files need updates based on the user's requirement.
- Maintain workspace roadmap and workflow documents.
- Avoid relying on chat memory as the source of truth.
- Treat the GitHub repository as the canonical state.

## Codex CLI Responsibilities

Codex CLI should:

- Run locally on the user's machine.
- Implement code according to the app governance files.
- Avoid modifying governance Markdown files.
- Focus on code, tests, build scripts, and implementation assets.
- Run from the specific app directory, not from the repository root, unless the task is workspace-wide.

Recommended command:

```bash
codex exec --ephemeral "$(cat prompts/implement.md)"
```

## User Responsibilities

The user should:

- Tell ChatGPT new requirements.
- Let ChatGPT update governance files in GitHub.
- Pull changes locally.
- Run Codex CLI from the correct app directory.
- Use separate branches for implementation work.
- Configure local hooks after cloning.
- Configure GitHub branch protection, secrets, and external service tokens when needed.

## Session Recovery Instruction

In a new ChatGPT session, the user can say:

```text
请读取 Meaple-SFKY/Codex-WSP 仓库中的 docs/WORKSPACE_RULES.md，并按照其中规则继续维护这个 workspace。
```

After reading this file, ChatGPT should then inspect the relevant app directory and its governance files before making updates.

## Branch and App Isolation

To prevent cross-app context pollution:

- Run Codex CLI inside the target app directory.
- Prefer `--ephemeral` for each task.
- Use a separate feature branch per app and per feature.
- Do not use `resume --last` across different apps.
- Do not run app-specific implementation tasks from the repository root.

## Upgrade Roadmap

Future upgrades are documented in:

```text
docs/WORKSPACE_UPGRADE_ROADMAP.md
```

ChatGPT should maintain that roadmap as the workspace evolves.

## Current Philosophy

This repository follows an AI-native software engineering model:

- ChatGPT acts as product manager, architect, and governance maintainer.
- Codex CLI acts as local implementation agent.
- GitHub acts as the canonical source of truth.
- The user controls execution, review, credentials, and local environment.
