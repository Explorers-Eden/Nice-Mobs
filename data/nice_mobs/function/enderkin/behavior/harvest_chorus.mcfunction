execute if data storage eden:settings nice_mobs.behavior{enderkinchorus:"disabled"} run return run scoreboard players set @s nice_mobs.enderkin.chorus_timer 0
setblock ~ ~ ~ chorus_flower destroy
scoreboard players set @s nice_mobs.enderkin.chorus_timer 0
particle minecraft:end_rod ~ ~.5 ~ .4 .4 .4 0.01 5