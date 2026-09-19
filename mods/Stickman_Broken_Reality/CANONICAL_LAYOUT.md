# Canonical Polymod migration

Copy `mods/Stickman_Broken_Reality` directly into the game-created `mods` folder. It must contain `_polymod_meta.json` and `assets/` at the same level.

Use the official FNF Android installation location for the build you installed; package IDs differ between APKs. Start the game once and inspect the folder it creates rather than assuming a package name.

This commit adds the canonical `assets/data`, `assets/songs`, and `assets/images` layout. The two original OGG files must be supplied by the user. PNG/atlas exports are also required if the installed build does not load SVG artwork.
