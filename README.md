# Raycast v0.1 for Minecraft 1.13+

A datapack for Minecraft 1.13+ which provides a utility for calculating
raycasts.

## How to setup

1. Download the zip file for the [latest release](https://github.com/DrHenchman/raycast/releases/download/v0.1/raycast.zip) of the datapack
2. Place the zip file in in the `<world>/datapacks/` folder
3. Run `/reload` on your server to detect the new datapack

## How to use

Execute the following command to perform as the current entity

    function raycast:execute

The result of the raycast will be stored against the entity in the `raycast_x`, `raycast_y` and `raycast_z` scoreboards.

You can also set the max distance (in blocks) of the raycast using the `raycast_max` scoreboard on the player

    scoreboard players set @s raycast_max 20
    function raycast:execute

By default the `raycast_max` will be set to `5`. The scoreboard is reset as part of the process, so you will
need to set `raycast_max` on each invocation.

## Credits

* DrHenchman - Creator of the datapack

