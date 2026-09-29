# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

A Minecraft Java Edition data pack template supporting 1.21 through 26.3 (data pack formats 48–121). There is no compiler, linter, or test suite — the game is the runtime.

- Build: `./build.sh [Name]` zips `pack.mcmeta`, `data/`, and `pack.png` (if present) into `<Name>.zip` (zips are gitignored).
- Test: copy the zip (or the folder) into `<world>/datapacks/` and run `/reload`; `/datapack list` shows whether it loaded, and load errors appear in the game log.
- Editor support comes from the Spyglass VS Code extension (`spgoding.datapack-language-server`, recommended in `.vscode/extensions.json`).

## Structure

- `data/minecraft/tags/function/load.json` and `tick.json` are the entry points: they register `template:load` (runs on world load and every `/reload`) and `template:tick` (runs every tick). New per-tick logic should be called from `tick.mcfunction` rather than added as extra tag entries.
- `data/template/` is the placeholder namespace. When turning the template into a real pack, rename the folder and every `template:` / `template.` reference together, or the tags will point at missing functions.
- Folder names under a namespace are singular (`function`, `recipe`, `advancement`, `loot_table`, …) — required since 1.21, which is this template's floor.

## Version compatibility

`pack.mcmeta` intentionally carries both metadata schemes: `pack_format` + `supported_formats` (read by 1.21–1.21.8) and `min_format` + `max_format` (read by 1.21.9+). Keep the two ranges in sync when changing supported versions; the format table is in README.md.

Because the range spans many versions, command, NBT, component, and JSON schemas may differ between them. When a file needs version-specific syntax, check https://minecraft.wiki and put the variant in an overlay directory declared under `overlays` in `pack.mcmeta` (entries need both `formats` and `min_format`/`max_format` while pre-1.21.9 versions are supported).
