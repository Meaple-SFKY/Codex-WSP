# A 股看盘平台

一个面向 Windows 浏览器环境的专业 A 股看盘平台，参考同花顺与 TradingView 的产品体验。

## 产品目标

- 美观且高效的信息布局
- 支持真实、近实时行情数据（可插拔数据源）
- 自选股
- 分时图
- 日K / 周K / 月K
- 成交量与技术指标
- 基于技术指标的辅助买卖分析

## 产品定位

本产品提供市场可视化与技术分析辅助功能，不承诺投资收益，也不应被视为确定性的投资建议。

## 推荐本地执行方式

```bash
codex exec --ephemeral "$(cat prompts/implement.md)"
```

Codex CLI 负责代码实现，但不允许修改 governance Markdown 文件。
