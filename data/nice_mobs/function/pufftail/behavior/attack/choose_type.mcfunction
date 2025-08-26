execute on vehicle run scoreboard players set @s nice_mobs.entity.generic_timer 0

execute store result score $nice_mobs.pufftail.effect nice_mobs.technical run random value 1..15

execute if score $nice_mobs.pufftail.effect nice_mobs.technical matches 1 run data modify storage eden:temp nice_mobs.pufftail.effect set value slowness
execute if score $nice_mobs.pufftail.effect nice_mobs.technical matches 2..4 run data modify storage eden:temp nice_mobs.pufftail.effect set value hunger
execute if score $nice_mobs.pufftail.effect nice_mobs.technical matches 5..10 run data modify storage eden:temp nice_mobs.pufftail.effect set value instant_damage
execute if score $nice_mobs.pufftail.effect nice_mobs.technical matches 11..14 run data modify storage eden:temp nice_mobs.pufftail.effect set value poison
execute if score $nice_mobs.pufftail.effect nice_mobs.technical matches 15 run data modify storage eden:temp nice_mobs.pufftail.effect set value darkness

playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ .7 .5

summon tnt ~ ~ ~ {fuse:4,explosion_power:1,Tags:["nice_mobs.pufftail.projectile"],block_state:{Name:"minecraft:air"}}
execute as @e[type=item_display,tag=aj.pufftail.root] at @s positioned ^ ^-1.5 ^ run function nice_mobs:pufftail/behavior/attack/shoot with storage eden:temp nice_mobs.pufftail
