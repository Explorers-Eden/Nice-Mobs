#increase attack timer
execute as @s[predicate=nice_mobs:percentages/33] if entity @e[type=player,gamemode=!creative,gamemode=!spectator,distance=..48] run scoreboard players add @s nice_mobs.entity.generic_timer 1

#set rotations of passengers
execute store result entity @n[type=item_display,tag=aj.pufftail.root,distance=..5] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000
execute unless entity @e[type=player,gamemode=!creative,gamemode=!spectator,distance=..48] on passengers run data modify entity @s Rotation[1] set value 0f
execute if entity @e[type=player,gamemode=!creative,gamemode=!spectator,distance=..48] on passengers run rotate @s facing entity @p[distance=..48] eyes

#play fly/idle animations
execute as @s unless data entity @s data.nice_mobs{animation:"idle"} unless predicate nice_mobs:entity/is_flying run function nice_mobs:pufftail/behavior/idle
execute as @s unless data entity @s data.nice_mobs{animation:"fly"} if predicate nice_mobs:entity/is_flying run function nice_mobs:pufftail/behavior/fly

#apply textures when hurt or not
execute if data entity @s data.nice_mobs{hurt: 0b} unless predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:pufftail/behavior/hurt/start with entity @s data.nice_mobs
execute if data entity @s data.nice_mobs{hurt: 1b} if predicate nice_mobs:entity/has_no_hurttime run function nice_mobs:pufftail/behavior/hurt/end with entity @s data.nice_mobs

#shoot/attack
execute as @s[scores={nice_mobs.entity.generic_timer=30..}] if entity @e[type=player,gamemode=!creative,gamemode=!spectator,distance=..48] on passengers run function nice_mobs:pufftail/behavior/attack/choose_type
execute as @e[type=player,distance=..3,predicate=nice_mobs:percentages/25] at @s run damage @s 2.5 minecraft:drown by @n[type=vex,tag=nice_mobs.pufftail.vehicle]

#play particles
particle end_rod ~ ~2 ~ 1 1 1 0 1
particle dust{color:[1.000,1.000,1.000],scale:2} ~ ~2 ~ 1 1 1 0 3
particle dust{color:[0.361,0.827,1.000],scale:3} ~ ~2 ~ 1 1 1 0 3

#show/hide bossbar
function nice_mobs:pufftail/bossbar/visibility/init