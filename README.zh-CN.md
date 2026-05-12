# Codex-WSP

AI 原生 Monorepo 应用工厂工作区。

## 工作区结构

```text
apps/        所有应用
packages/    共享组件与工具
prompts/     AI Agent 提示词
templates/   工程模板
docs/        工作区文档
```

## 当前应用

### Web
- `apps/web/apple-books-web-reader`

### Apple 平台
- `apps/apple/apple-books-swiftui-reader`

## 推荐工作流

```bash
git clone https://github.com/Meaple-SFKY/Codex-WSP.git
cd Codex-WSP
```

进入具体应用后执行：

```bash
cd apps/web/apple-books-web-reader
codex exec
```

或：

```bash
cd apps/apple/apple-books-swiftui-reader
codex exec
```

每个应用均包含：

- `AGENTS.md`
- `SPEC.md`
- `ARCHITECTURE.md`
- `TASKS.md`
- `TESTING.md`
- `prompts/`
