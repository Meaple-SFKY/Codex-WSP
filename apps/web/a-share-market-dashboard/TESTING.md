# Testing Requirements

## UI Testing

Verify:

- Dashboard layout stability
- Panel resizing
- Watchlist rendering
- Chart rendering
- Responsive behavior
- Theme switching

## Chart Testing

Verify:

- Intraday chart rendering
- Daily K-line rendering
- Weekly K-line rendering
- Monthly K-line rendering
- Crosshair behavior
- Zoom behavior
- Pan behavior

## Market Data Testing

Verify:

- Mock provider support
- Provider abstraction behavior
- Polling updates
- Reconnect behavior
- Cached data behavior
- Graceful disconnect handling

## Indicator Testing

Verify:

- MA calculations
- EMA calculations
- MACD calculations
- RSI calculations
- KDJ calculations
- Bollinger Band calculations
- Volume calculations

Indicators should:

- Produce deterministic results
- Support multiple timeframes
- Render consistently

## Signal Testing

Verify:

- Signal trigger logic
- Confidence score rendering
- Signal explanation rendering
- Risk disclaimer rendering

Signals should:

- Avoid false certainty
- Explain trigger conditions
- Remain readable during rapid updates

## Performance Testing

Verify:

- Large watchlists
- Smooth scrolling
- Stable chart FPS
- Rapid update handling
- Efficient rerender behavior

## Browser Testing

Primary targets:

- Microsoft Edge
- Google Chrome

## Future Testing Direction

Prepare for:

- Playwright E2E testing
- Visual regression testing
- Multi-window testing
- Replay testing
