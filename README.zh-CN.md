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
codex exec "$(cat prompts/implement.md)"
```

或：

```bash
cd apps/apple/apple-books-swiftui-reader
codex exec "$(cat prompts/implement.md)"
```

## AI 工程规范

每个应用目录包含：

- `AGENTS.md`：AI Agent 行为规范
- `SPEC.md`：产品最终需求（最高优先级）
- `TASKS.md`：当前开发阶段与任务
- `DESIGN.md`：设计规范
- `UI_RULES.md`：UI 规则（Web 应用）
- `READER_EXPERIENCE.md`：阅读体验规范
- `TESTING.md`：测试要求
- `prompts/implement.md`：Codex 执行入口 Prompt

## 后续新增需求应该怎么做

不建议只修改 `prompts/implement.md`。

推荐规则：

### 修改产品需求

修改：

```text
SPEC.md
```

用于：

- 新增功能
- 修改功能逻辑
- 修改产品方向
- 修改 UI 风格

---

### 修改开发阶段

修改：

```text
TASKS.md
```

用于：

- 新增开发阶段
- 新增具体任务
- 调整优先级

---

### 修改 AI 执行风格

修改：

```text
AGENTS.md
```

用于：

- 更严格的代码规范
- 更激进的自动化
- 更强调性能
- 更强调 UI

---

### 修改 UI / 设计规范

修改：

```text
DESIGN.md
UI_RULES.md
READER_EXPERIENCE.md
```

---

### prompts/implement.md 的作用

`prompts/implement.md` 主要负责：

- 告诉 Codex 应该读取哪些文件
- 定义执行策略
- 定义当前执行目标
- 定义实现优先级

通常不作为产品需求源。

真正的产品需求来源应该是：

```text
SPEC.md
```

## 推荐执行方式

```bash
codex exec "$(cat prompts/implement.md)"
```

这样 Codex 会自动读取：

- SPEC.md
- TASKS.md
- AGENTS.md
- DESIGN.md
- TESTING.md

并基于最新需求继续实现。
