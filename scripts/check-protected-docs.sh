#!/bin/bash

set -e

protected_patterns='README.md|README.zh-CN.md|AGENTS.md|SPEC.md|TASKS.md|DESIGN.md|UI_RULES.md|READER_EXPERIENCE.md|TESTING.md|prompts/.*\.md|docs/.*\.md'

changed=$(git diff --name-only HEAD~1 HEAD || true)

violations=$(echo "$changed" | grep -E "$protected_patterns" || true)

if [ ! -z "$violations" ]; then
  echo "Protected governance files changed:"
  echo "$violations"
  exit 1
fi

exit 0
