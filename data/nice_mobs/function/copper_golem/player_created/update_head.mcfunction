execute on vehicle run data modify entity @s item.components."minecraft:profile".properties[0].value set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDk5ODY1MTcxOGIzMThhMmNhNmE0YTIxZWQyMDFmMGM2NWExNGQwZmNkZTdkZDA0NGJhZDMzMTE2Y2Q1ZTAyNiJ9fX0="
particle minecraft:wax_off ~ ~.2 ~ .4 .3 .4 .5 10
playsound minecraft:entity.iron_golem.repair neutral @a ~ ~ ~ .4 2
tag @s add nice_mobs.copper_golem.updated