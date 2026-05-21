# Design System

## Product Direction

A modern professional A-share market terminal for Windows browsers.

The experience should combine:

- The workflow efficiency of Tonghuashun
- The chart clarity of TradingView
- Modern AI-native architecture
- High-performance real-time interaction

## Design Goals

- High information density
- Fast market scanning
- Clear hierarchy
- Stable layout
- Minimal clutter
- Professional aesthetics
- Low-latency interaction feel

## Core Principles

### Information First

Market information must always be prioritized over decorative visuals.

### Stable Layout

Avoid excessive layout movement during real-time updates.

### Fast Scanning

Users should quickly identify:

- Rising stocks
- Falling stocks
- Volume anomalies
- Signal triggers
- Market trend changes

### Professional Feel

The application should feel closer to a professional trading terminal than a casual finance website.

## Layout Rules

### Primary Layout

Recommended structure:

- Left: watchlists and navigation
- Center: charts and indicators
- Right: order flow, signals, market panels
- Bottom: detailed data panels

### Panels

- Panels should be resizable.
- Panels should support collapse.
- Chart area should remain stable.
- Navigation should remain persistent.

## Theme

### Default Theme

Dark professional trading theme.

### Optional Theme

Light mode.

## Color Rules

### Market Colors

- Red for rising prices
- Green for falling prices
- Neutral gray for inactive states

### Signal Colors

- Avoid excessive saturation
- Avoid misleading certainty visuals
- Keep risk indicators visually distinct

## Typography

- Compact but readable
- Strong numeric readability
- Monospace support for price data
- Clear hierarchy between titles and data

## Chart Experience

### Requirements

- Smooth zooming
- Smooth panning
- Stable FPS under updates
- Accurate crosshair
- Clear candlestick rendering
- Multi-timeframe switching

### Indicators

Indicators should:

- Render smoothly
- Support overlays
- Support separate panels
- Remain readable under dense layouts

## Interaction Rules

### Keyboard Support

The app should support keyboard-friendly workflows.

### Low-Latency Feel

Interactions should feel immediate.

### Minimal Disruption

Avoid excessive:

- popups
- animations
- notifications
- modal interruptions

## Performance Goals

- Stable under large watchlists
- Stable under rapid market updates
- Smooth chart interaction
- Efficient rendering

## Future Direction

Prepare the architecture and UI system for:

- Multi-monitor layouts
- AI summaries
- Strategy systems
- Replay systems
- Cloud sync
- Custom workspaces
