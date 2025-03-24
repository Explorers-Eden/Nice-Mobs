execute at @n[type=area_effect_cloud,distance=..3] run particle minecraft:explosion ~ ~ ~ 1 1 1 0 5
execute at @n[type=area_effect_cloud,distance=..3] run place feature minecraft:moss_patch_bonemeal ~ ~ ~
kill @n[type=area_effect_cloud,distance=..3]

effect clear @e[type=player,distance=..3] minecraft:invisibility

function animated_java:bloomer/remove/this