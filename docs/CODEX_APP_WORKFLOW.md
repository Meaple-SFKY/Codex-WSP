# Codex App Workflow

This document defines the recommended workflow for using Codex App with the Codex-WSP repository.

## Goal

Use Codex App as the primary AI agent orchestration environment.

Use ChatGPT for governance maintenance.

Use Codex CLI for automation and long-running implementation tasks.

## Recommended Roles

### ChatGPT

Responsible for:

- Product requirements
- Governance maintenance
- SPEC updates
- TASKS updates
- DESIGN updates
- Prompt updates
- Workflow maintenance
- Architecture guidance

### Codex App

Responsible for:

- Multi-agent orchestration
- Worktree management
- Interactive implementation tasks
- Parallel app development
- Review sessions

### Codex CLI

Responsible for:

- Long-running implementation
- Automation
- Batch tasks
- CI-friendly execution

### VS Code

Optional for:

- Manual debugging
- Manual review
- Small edits

## Important Rule

Do not run app-specific implementation tasks from the repository root.

Always enter the target app directory first.

## Recommended App Workflow

Example:

```text
apps/web/a-share-market-dashboard
```

Open a dedicated Codex App thread or worktree for the app.

Then instruct Codex App:

```text
Read and follow:
- AGENTS.md
- SPEC.md
- TASKS.md
- DESIGN.md
- UI_RULES.md
- TESTING.md

Read prompts/implement.md and implement the current TASKS phase.

Do not modify governance Markdown files.
```

## Why prompts/implement.md Still Matters

`prompts/implement.md` acts as a stable implementation entry point.

Instead of rewriting large prompts repeatedly, future sessions can simply instruct:

```text
Read prompts/implement.md and continue implementation.
```

## Governance Rules

Governance Markdown files are maintained by ChatGPT through GitHub.

Codex App and Codex CLI may read them but should not modify them.

Protected examples:

- README.md
- README.zh-CN.md
- AGENTS.md
- SPEC.md
- TASKS.md
- DESIGN.md
- UI_RULES.md
- TESTING.md
- prompts/*.md
- docs/*.md

## Worktree Isolation

Each major feature should use:

- a dedicated branch
- a dedicated Codex App thread/worktree

This prevents cross-app context pollution.

## Recommended Flow

1. User asks ChatGPT for a new feature.
2. ChatGPT updates governance files in GitHub.
3. User pulls latest changes locally.
4. User opens the target app in Codex App.
5. User creates a dedicated worktree thread.
6. User instructs Codex App to read prompts/implement.md.
7. Codex App performs implementation.
8. User reviews and commits changes.

## Local Validation

Before committing:

```text
pnpm lint
pnpm typecheck
pnpm test
pnpm build
```

## Worktree Safety Check

After creating a new Codex App thread/worktree, verify:

```text
pwd
git branch
git worktree list
```

to ensure the correct worktree and branch are active.

## Current Philosophy

The repository follows:

- Governance Layer
- Implementation Layer
- Source-of-Truth Layer

Where:

- ChatGPT maintains governance
- Codex App manages AI implementation threads
- Codex CLI performs automation
- GitHub stores canonical state
