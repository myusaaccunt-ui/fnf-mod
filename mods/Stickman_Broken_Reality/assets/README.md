# Canonical FNF 0.8.x Polymod layout

The runtime mod root is this directory. Content loaded by the game belongs under `assets/`.

Required installation:

`<game data>/mods/Stickman_Broken_Reality/`

Required audio paths:

- `assets/songs/broken-reality/Inst.ogg`
- `assets/songs/broken-reality/Voices.ogg`

The old root-level `data`, `images`, `songs`, and `shaders` directories are retained only as source notes from earlier commits; use the canonical `assets/` tree for the game.

The repository cannot contain the user's private audio until it is uploaded. Do not rename the audio files or place them in `assets/music`; the canonical song resolver uses `assets/songs/<song>/Inst.ogg` and `Voices.ogg`.
