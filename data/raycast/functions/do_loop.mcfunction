scoreboard players remove @s raycast_step 1
say do step
summon snowball ~ ~ ~ {NoGravity:1b}
execute if score @s raycast_step matches 1.. unless block ^ ^ ^0.2 minecraft:air run scoreboard players set @s raycast_step 0
execute if score @s raycast_step matches 1.. positioned ^ ^ ^0.2 run function raycast:do_loop
execute if score @s raycast_step matches 0 run function raycast:finish_loop
