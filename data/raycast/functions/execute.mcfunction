# Initialise raycast_step to 5 times raycast_max as we do steps in 0.2 block increments
execute unless score @s raycast_max matches 1.. run scoreboard players set @s raycast_max 5
scoreboard players set @s raycast_step 5
scoreboard players operation @s raycast_step *= @s raycast_max

# Cast those rays
execute at @s positioned ~ ~1.6 ~ run function raycast:do_loop

# Reset the max raycast so that consumers need to set it expicitly each time to
# get the non-default max
scoreboard players reset @s raycast_max
