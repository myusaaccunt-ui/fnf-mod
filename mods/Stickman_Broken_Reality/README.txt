# STICKMAN: BROKEN REALITY

Original FNF 0.8.8 Android mod pack. No third-party music, art, charts, dialogue, or character assets are included.

## Installation
Copy `mods/Stickman_Broken_Reality` into the engine's `mods/` directory. Add the two original audio files to `songs/broken-reality/`:

- `Inst.ogg`
- `Voices.ogg`

The pack targets a Psych-style FNF 0.8.x mod layout. If your Android build uses a different 0.8.8 fork, copy the `data`, `songs`, `images`, `shaders`, and `scripts` directories into that fork's equivalent mod directory.

## Audio timing
The chart is designed for 200 BPM and 192 seconds (256 beats), with phases at steps 0, 256, 768, 1280, 1792, 2048, 2304, and 2528. The supplied audio must be original and follow those timings.

## Graphics modes
Set `graphicsMode` in `scripts/android_config.lua` to `LOW`, `MEDIUM`, or `HIGH`.

- LOW: no shader sprites, 6-particle cap, reduced zoom/shake.
- MEDIUM: lightweight glitch/RGB split during corruption and 18-particle cap.
- HIGH: all supplied shaders, 32-particle cap, full flashes and distortion.

The mode is read once at song creation to avoid per-frame configuration work.

## Missing external assets
1. `songs/broken-reality/Inst.ogg` — original instrumental, 200 BPM, approximately 3:12.
2. `songs/broken-reality/Voices.ogg` — original vocal/stem track, same duration.
3. Optional replacement raster exports if the engine build does not render SVG: character and stage SVGs can be rasterized at 1x/2x; no large texture atlas is required.

Do not substitute Suffering Siblings V3 or any other copyrighted assets.

## Chart generation
`tools/generate_charts.py` deterministically writes all six native chart JSON files from the complete 256-beat phase map. It is included so chart timing can be adjusted against the final original audio without hand-editing thousands of notes. The committed chart manifests identify all six difficulties and their complete timing ranges.
