# Product Specification

## Overview

A professional browser-based A-share market dashboard for Windows users.

The product should combine:

- The workflow efficiency of Tonghuashun
- The chart quality of TradingView
- A modern AI-native architecture

## Core Features

### Market Dashboard

- Multi-panel layout
- Resizable panels
- High information density
- Real-time watchlists
- Market overview panels

### Charts

- Intraday charts
- Daily K-line
- Weekly K-line
- Monthly K-line
- Volume overlays
- Technical indicators

### Technical Indicators

Initial indicators:

- MA
- EMA
- MACD
- RSI
- KDJ
- Volume
- Bollinger Bands

### Signal Analysis

The app should provide:

- Educational technical-analysis signals
- Trend analysis
- Indicator crossover analysis
- Momentum analysis
- Volume anomaly analysis

The UI must clearly indicate:

- Confidence level
- Indicator source
- Risk disclaimer

The app must not present outputs as guaranteed financial advice.

### Watchlists

- Multiple watchlists
- Real-time updates
- Sorting and filtering
- Sector grouping

### Search

- Search by stock code
- Search by stock name
- Fuzzy matching

## Architecture Direction

- Next.js
- TypeScript
- TradingView Lightweight Charts or equivalent
- WebSocket-ready architecture
- Real-time data abstraction layer
- Modular indicator engine

## Future Features

- AI summary
- AI market commentary
- Multi-screen layouts
- Cloud sync
- Strategy backtesting
- Alert system
- Replay mode
