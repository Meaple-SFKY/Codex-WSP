# A-Share Market Dashboard

A Windows-friendly browser-based A-share market dashboard inspired by professional trading terminals such as Tonghuashun and charting tools such as TradingView.

## Product Goals

- Beautiful, efficient, information-dense market interface
- Real and near-real-time A-share market data through pluggable data providers
- Watchlists
- Intraday chart
- Daily / weekly / monthly K-line charts
- Volume and technical indicators
- Educational buy/sell signal analysis based on technical indicators

## Positioning

This app provides market visualization and educational technical-analysis assistance. It must not present any output as guaranteed investment advice or profit prediction.

## Recommended Local Execution

```bash
codex exec --ephemeral "$(cat prompts/implement.md)"
```

Codex CLI may implement code but must not modify governance Markdown files.
