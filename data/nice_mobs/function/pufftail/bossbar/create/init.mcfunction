execute store result storage eden:temp nice_mobs.pufftail.bossbar_id int 1 run scoreboard players add $pufftail_max nice_mobs.pufftail.bossbar 1
scoreboard players operation @s nice_mobs.pufftail.bossbar = $pufftail_max nice_mobs.pufftail.bossbar
execute on vehicle run scoreboard players operation @s nice_mobs.pufftail.bossbar = $pufftail_max nice_mobs.pufftail.bossbar

function nice_mobs:pufftail/bossbar/create/exec with storage eden:temp nice_mobs.pufftail