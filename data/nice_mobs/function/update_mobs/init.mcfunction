tellraw @s [{"bold":false,"color":"#89CFF0","italic":false,"text":"▊ "},{"bold":false,"color":"white","italic":false,"text":"Loaded Nice Mobs entities updated to latest version."}]
playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2

execute as @e[type=creeper,tag=nice_mobs.bloomer.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"2.0"} at @s run function nice_mobs:update_mobs/exec {mob_type:"bloomer"}
execute as @e[type=pig,tag=nice_mobs.cruncher.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"2.0"} at @s run function nice_mobs:update_mobs/exec {mob_type:"cruncher"}
execute as @e[type=villager,tag=nice_mobs.dirt_golem.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"2.0"} at @s run function nice_mobs:update_mobs/exec {mob_type:"dirt_golem"}
execute as @e[type=pillager,tag=nice_mobs.glare.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"2.0"} at @s run function nice_mobs:update_mobs/exec {mob_type:"glare"}
execute as @e[type=wither_skeleton,tag=nice_mobs.jellyfish.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"2.0"} at @s run function nice_mobs:update_mobs/exec {mob_type:"jellyfish"}
execute as @e[type=pig,tag=nice_mobs.mushling.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"2.0"} at @s run function nice_mobs:update_mobs/exec {mob_type:"mushling"}
execute as @e[type=pig,tag=nice_mobs.nautilus_crab.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"2.0"} at @s run function nice_mobs:update_mobs/exec {mob_type:"nautilus_crab"}
execute as @e[type=chicken,tag=nice_mobs.penguin.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"2.0"} at @s run function nice_mobs:update_mobs/exec {mob_type:"penguin"}
execute as @e[type=pig,tag=nice_mobs.piggy_bank.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"2.0"} at @s run function nice_mobs:update_mobs/exec {mob_type:"piggy_bank"}
execute as @e[type=vex,tag=nice_mobs.pufftail.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"2.0"} at @s run function nice_mobs:update_mobs/exec {mob_type:"pufftail"}
execute as @e[type=pig,tag=nice_mobs.rat.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"2.0"} at @s run function nice_mobs:update_mobs/exec {mob_type:"rat"}
execute as @e[type=pig,tag=nice_mobs.snail.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"2.0"} at @s run function nice_mobs:update_mobs/exec {mob_type:"snail"}
execute as @e[type=villager,tag=nice_mobs.tuff_golem.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"2.0"} at @s run function nice_mobs:update_mobs/exec {mob_type:"tuff_golem"}
execute as @e[type=pig,tag=nice_mobs.enderkin.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"2.0"} at @s run function nice_mobs:update_mobs/exec {mob_type:"enderkin"}
execute as @e[type=phantom,tag=nice_mobs.vulture.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"2.0"} at @s run function nice_mobs:update_mobs/exec {mob_type:"vulture"}
execute as @e[type=pig,tag=nice_mobs.hedgehog.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"2.0"} at @s run function nice_mobs:update_mobs/exec {mob_type:"hedgehog"}