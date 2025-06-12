tellraw @s [{"bold":false,"color":"#89CFF0","italic":false,"text":"▊ "},{"bold":false,"color":"white","italic":false,"text":"Loaded Nice Mobs entities updated to latest version."}]
playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2

execute as @e[type=creeper,tag=nice_mobs.bloomer.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/bloomer
execute as @e[type=iron_golem,tag=nice_mobs.copper_golem.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/copper_golem
execute as @e[type=pig,tag=nice_mobs.cruncher.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/cruncher
execute as @e[type=villager,tag=nice_mobs.dirt_golem.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/dirt_golem
execute as @e[type=pillager,tag=nice_mobs.glare.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/glare
execute as @e[type=wither_skeleton,tag=nice_mobs.jellyfish.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/jellyfish
execute as @e[type=pig,tag=nice_mobs.mushling.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/mushling
execute as @e[type=pig,tag=nice_mobs.nautilus_crab.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/nautilus_crab
execute as @e[type=chicken,tag=nice_mobs.penguin.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/penguin
execute as @e[type=pig,tag=nice_mobs.piggy_bank.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/piggy_bank
execute as @e[type=vex,tag=nice_mobs.pufftail.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/pufftail
execute as @e[type=pig,tag=nice_mobs.rat.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/rat
execute as @e[type=pig,tag=nice_mobs.snail.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/snail
execute as @e[type=villager,tag=nice_mobs.tuff_golem.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/tuff_golem
execute as @e[type=pig,tag=nice_mobs.enderkin.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/enderkin
execute as @e[type=phantom,tag=nice_mobs.vulture.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/vulture
execute as @e[type=pig,tag=nice_mobs.hedgehog.vehicle] unless data entity @s data.nice_mobs{spawned_in_version:"1.8"} at @s run function nice_mobs:settings/update_mobs/hedgehog