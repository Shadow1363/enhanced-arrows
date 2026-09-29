# Data Pack Template

A minimal, reusable starting point for Minecraft Java data packs targeting **1.21 through 26.3** (data pack formats 48–121).

## Using the template

1. Rename the namespace folder `data/template/` to your pack's namespace (lowercase, `a-z0-9_-.`).
2. Replace every `template:` / `template.` reference with your namespace:
   `grep -rl template data | xargs sed -i '' 's/template/<your_namespace>/g'`
3. Edit `description` in `pack.mcmeta`, and add a 64×64 `pack.png` icon if you want one.
4. Put setup in `load.mcfunction` and per-tick logic in `tick.mcfunction`.

## Layout

```
pack.mcmeta                          Pack metadata and supported version range
data/minecraft/tags/function/        load.json / tick.json hook your functions into the game
data/template/function/              load.mcfunction, tick.mcfunction, and your own functions
```

Other content (recipes, advancements, loot tables, predicates, item modifiers, tags…) goes under `data/<namespace>/<type>/`. Since 1.21 these folder names are **singular** (`function`, `recipe`, `advancement`, `loot_table`, `predicate`…).

## Version range

`pack.mcmeta` declares the range twice on purpose:

- `pack_format` + `supported_formats` — read by 1.21–1.21.8 (formats 48–81)
- `min_format` + `max_format` — read by 1.21.9 and newer (formats 88.0+)

| Version        | Format |
| -------------- | ------ |
| 1.21–1.21.1    | 48     |
| 1.21.2–1.21.3  | 57     |
| 1.21.4         | 61     |
| 1.21.5         | 71     |
| 1.21.6         | 80     |
| 1.21.7–1.21.8  | 81     |
| 1.21.9–1.21.10 | 88.0   |
| 1.21.11        | 94.1   |
| 26.1–26.1.2    | 101.1  |
| 26.2           | 107.1  |
| 26.3           | 121.0  |

To narrow or extend the range, change all four values together. If a file's syntax differs between versions, put the version-specific copy in an [overlay](https://minecraft.wiki/w/Data_pack#Overlays) directory and list it under `overlays` in `pack.mcmeta`.

## Building

```sh
./build.sh            # -> <folder-name>.zip
./build.sh MyPack     # -> MyPack.zip
```

Copy the zip into `<world>/datapacks/`, then run `/reload` in-game.

## Resources

- https://misode.github.io/ — generators for pack JSON
- https://minecraft.wiki/w/Data_pack
- https://minecraft.wiki/w/Pack_format
