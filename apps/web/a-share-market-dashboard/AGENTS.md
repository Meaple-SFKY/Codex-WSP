# Agent Rules

## Role

Codex CLI is the local implementation agent for this app.

## Read First

Before implementation, read:

- SPEC.md
- TASKS.md
- DESIGN.md
- UI_RULES.md
- MARKET_DATA.md
- INDICATOR_RULES.md
- SIGNAL_RULES.md
- TESTING.md

## Governance Protection

Do not modify governance Markdown files:

- README.md
- README.zh-CN.md
- AGENTS.md
- SPEC.md
- TASKS.md
- DESIGN.md
- UI_RULES.md
- MARKET_DATA.md
- INDICATOR_RULES.md
- SIGNAL_RULES.md
- TESTING.md
- prompts/*.md

These files are maintained by ChatGPT through GitHub.

## Implementation Principles

- Build a production-grade web app.
- Prefer maintainable architecture.
- Keep market data providers pluggable.
- Keep indicator calculation deterministic and testable.
- Keep signal analysis explainable.
- Do not present financial signals as guaranteed investment advice.

## Windows Browser Target

The app should run well on Windows browsers, especially Edge and Chrome.
