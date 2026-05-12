# Protected Governance Files

This repository uses protected governance files to keep AI implementation agents from accidentally changing product and workflow specifications.

## Rule

The following files are maintained by ChatGPT through GitHub and must be treated as read-only by local coding agents such as Codex CLI:

- `README.md`
- `README.zh-CN.md`
- `AGENTS.md`
- `docs/**/*.md`
- `prompts/**/*.md`
- `templates/**/*.md`
- `apps/**/README.md`
- `apps/**/README.zh-CN.md`
- `apps/**/AGENTS.md`
- `apps/**/SPEC.md`
- `apps/**/TASKS.md`
- `apps/**/DESIGN.md`
- `apps/**/UI_RULES.md`
- `apps/**/READER_EXPERIENCE.md`
- `apps/**/TESTING.md`
- `apps/**/prompts/**/*.md`

## Local Enforcement

Enable repository hooks after cloning:

```bash
git config core.hooksPath .githooks
```

Then commits that modify protected governance files will be rejected locally.

## Codex CLI Rule

Codex CLI may read these files, but must not edit them. If requirements change, ask ChatGPT to update the governance files in GitHub first, then run:

```bash
codex exec "$(cat prompts/implement.md)"
```
