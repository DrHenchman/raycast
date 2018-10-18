execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["raycaster"]}

execute store result score @s raycast_x run data get entity @e[type=minecraft:area_effect_cloud,distance=..2,tag=raycaster,limit=1] Pos[0] 1
execute store result score @s raycast_y run data get entity @e[type=minecraft:area_effect_cloud,distance=..2,tag=raycaster,limit=1] Pos[1] 1
execute store result score @s raycast_z run data get entity @e[type=minecraft:area_effect_cloud,distance=..2,tag=raycaster,limit=1] Pos[2] 1

kill @e[type=minecraft:area_effect_cloud,distance=..2,tag=raycaster,limit=1]

scoreboard players reset @s raycast_step
