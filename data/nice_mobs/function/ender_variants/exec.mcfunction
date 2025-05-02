#particles for ender variants
particle minecraft:reverse_portal ~ ~.2 ~ .4 .4 .4 0.01 2

#teleport when damaged or in rain
execute unless predicate eden:entity/has_no_hurttime run function nice_mobs:ender_variants/teleport/init

#damage when in water/rain
execute if predicate eden:entity/is_wet run damage @s 0.25