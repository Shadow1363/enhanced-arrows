# Enhanced Arrows

A simple datapack 12.1.11 that adds special craftable arrows, each with their own special on hit ground effect and trails!

## Arrows

### 💧 Water

`water_arrow`
Spawns a water source block where the arrow lands.
Crafted using an arrow and a water bucket.

---

### 🔥 Lava

`lava_arrow`
Spawns a lava source block where the arrow lands.
Crafted using an arrow and a lava bucket.

### 🟢 Slime

`slime_arrow`
Creates a slime block where the arrow lands, launching entities that step on it.
Crafted using an arrow and a slime block.

### ⚡ Lightning

`lightning_arrow`
Summons a lightning strike at the arrow’s impact location.
Crafted using an arrow and a lightning rod.

## Todo's:

- [ ] Add more arrows (Teleportation Arrow, Redstone Arrow)
- [ ] Add hit detection (not just ground impact)
- [ ] Add a proper `pack.png`
- [ ] Create custom art for each arrow
- [ ] Create a cover image for Modrinth and your website

## To build from Source

`zip -r NameOfDataPack.zip data pack.mcmeta`

## To get in creative with commands

`/give @a minecraft:arrow[minecraft:custom_data={<arrow_type>:1b}] <quantity>`

## Credits

- https://misode.github.io/
- https://minecraft.wiki/w/Function_(Java_Edition)
- Debug Script: `/data get entity @e[type=arrow,limit=1,sort=nearest]`
