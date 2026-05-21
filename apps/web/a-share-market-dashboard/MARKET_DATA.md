# Market Data Rules

## Architecture

Use a pluggable provider architecture.

The application must not hardcode a single market data provider.

## Initial Provider Strategy

- Mock provider for development
- Replaceable real provider layer
- WebSocket-ready architecture

## Data Types

Support:

- Intraday data
- Daily K-line
- Weekly K-line
- Monthly K-line
- Volume
- Market overview
- Watchlists

## Requirements

- Handle delayed or disconnected data gracefully.
- Prevent UI freezes during updates.
- Cache recent market data locally.

## Real-Time Updates

The app should support:

- polling mode
- push/WebSocket mode

through a unified abstraction layer.
