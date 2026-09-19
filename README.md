# STICKMAN: BROKEN REALITY

This repository contains the original source package for the vanilla FNF 0.8.8-style mod project `STICKMAN: BROKEN REALITY`.

Project goal:
- original Android-friendly mod structure
- original song concept and phase progression
- original stickman protagonist and corrupted opponent
- original stage and visual theme
- full chart framework structure for all difficulties
- required final audio assets remain external and must be added by the user

Important:
- The repository intentionally does not include Psych Engine-only metadata files.
- This is a source structure and implementation scaffold, not a finalized game-ready binary release.
- Final runtime audio and image assets are still required to make the mod playable in an actual FNF 0.8.8 build.

Folder layout:
- `mods/Stickman_Broken_Reality/` is the mod root
- `data/characters/` contains character definitions
- `data/stages/` contains stage config
- `data/weekData/` contains week metadata
- `data/charts/` contains full-length chart skeletons for all difficulties
- `images/` contains original lightweight SVG artwork
- `songs/broken-reality/` is the final audio and runtime song folder
- `shaders/` contains original GLSL shaders for glitch, scanline, and RGB distortion

Missing files the user must provide:
- `mods/Stickman_Broken_Reality/songs/broken-reality/Inst.ogg`
- `mods/Stickman_Broken_Reality/songs/broken-reality/Voices.ogg`
- final sprite sheets / PNG art if the target build requires rasterized character assets
