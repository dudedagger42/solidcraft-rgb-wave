# RGB Wave

A colour wave for SolidCraft. One hue wave runs across the window: the ribbon's command
icons take it, the ribbon button blocks and the UI panels are washed with it, and it moves
left to right.

This is version 2.0.0 for SolidCraft 0.49.1 and newer. It is a plugin on the stock build
(a tint shader, `shaders@0.2`), not part of the all-in-one build.

## Install

Needs SolidCraft **0.49.1 or newer**.

1. Open Preferences > Plugins.
2. Click **Install plugin...** and pick `rgb-wave-2.0.2.zip`.
3. On the RGB Wave card, tick **Tint: RGB wave**.

## Settings

The card has a check box and four sliders. Values show as plain numbers with two decimals.

- **Tint: RGB wave** (check box, host-provided): turns the wave on or off.
- **Wave length (pt)**, 300 to 8000, default 2400: the length of one full colour cycle on
  screen, in points.
- **Speed (pt/s)**, 10 to 1500, default 150: how fast the wave travels across the window,
  in points per second.
- **Buttons**, 0 to 1, default 0: how strongly ribbon button blocks are filled with the wave.
  0 is off; 1 is the full fill.
- **Panels**, 0 to 1, default 1: how strongly panels are washed with the wave. 0 is off;
  1 is the full wash.

Icons are always tinted while the check box is on.

## What differs from the 0.48 all-in-one version

- It is a stock plugin: the all-in-one's `effects@0.1` "hue-wave" effect became a
  `shaders@0.2` tint shader (`rgb-wave.wgsl`). The shader id is `rgb-wave`, named "RGB wave".
- Icons are always tinted while the wave is on. The Icons switch is gone.
- The Buttons switch is now a 0 to 1 slider. The default 0 matches the old "off".
- The Panels switch is now a 0 to 1 slider. The default 1 matches the old "on"; values in
  between are new.
- The SolidCraft logo is no longer tinted. A tint shader only colours ribbon icons, ribbon
  buttons and panels.
- Panels are tinted on a grid of points up to 48 pt apart and blended between them, one
  frame late. At the default wave length this is not visible.
- The wave is driven by the host's clock, which returns to 0 once an hour, so the wave jumps
  once an hour.
- The card's text is the stock card: the on/off line reads "Tint: RGB wave", and the sliders
  show two decimals with no unit or step.
- The plugin version is 2.0.0 (the all-in-one was 1.0.0).

## Licence

MIT. Copyright (c) 2026 dudedagger42. See `LICENSE`.
