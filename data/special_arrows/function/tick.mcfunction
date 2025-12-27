# On Flight (Trail)
execute as @e[type=minecraft:arrow,nbt={data:{water_arrow:1b},inGround:0b}] at @s run function special_arrows:water_trail
execute as @e[type=minecraft:arrow,nbt={data:{lava_arrow:1b},inGround:0b}] at @s run function special_arrows:lava_trail
execute as @e[type=minecraft:arrow,nbt={data:{slime_arrow:1b},inGround:0b}] at @s run function special_arrows:slime_trail
execute as @e[type=minecraft:arrow,nbt={data:{lightning_arrow:1b},inGround:0b}] at @s run function special_arrows:lightning_trail

# On Ground (Spawn Block)
execute as @e[type=minecraft:arrow,nbt={inGround:1b,item:{components:{"minecraft:custom_data":{water_arrow:1b}}}}] at @s run function special_arrows:place_water
execute as @e[type=minecraft:arrow,nbt={inGround:1b,item:{components:{"minecraft:custom_data":{lava_arrow:1b}}}}] at @s run function special_arrows:place_lava
execute as @e[type=minecraft:arrow,nbt={inGround:1b,item:{components:{"minecraft:custom_data":{slime_arrow:1b}}}}] at @s run function special_arrows:place_slime
execute as @e[type=minecraft:arrow,nbt={inGround:1b,item:{components:{"minecraft:custom_data":{lightning_arrow:1b}}}}] at @s run function special_arrows:place_lightning

# On Impact
# execute as @e[type=minecraft:arrow,nbt={data:{lightning_arrow:1b}}] at @s if entity @e[type=!arrow,distance=..1] run function special_arrows:place_lightning