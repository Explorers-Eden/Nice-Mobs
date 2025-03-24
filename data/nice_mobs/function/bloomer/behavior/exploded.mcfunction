particle minecraft:explosion ~ ~ ~ 1 1 1 0 5

kill @n[type=area_effect_cloud,distance=..5]
effect clear @e[type=player,distance=..5] minecraft:invisibility

place feature minecraft:moss_patch_bonemeal ~ ~ ~

function animated_java:bloomer/remove/this