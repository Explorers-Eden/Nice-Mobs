# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute store result storage aj:temp x int 1 store result score #this.x aj.i run data get entity @s Pos[0] 1
execute store result storage aj:temp y int 1 store result score #this.y aj.i run data get entity @s Pos[1] 1
execute store result storage aj:temp z int 1 store result score #this.z aj.i run data get entity @s Pos[2] 1
function animated_java:snail/root/outdated_tellraw with storage aj:temp
data modify entity @s data.rigHash set value 'd625b0184a9ed214ae709b863d07bae40fbcf7dca6afe043b8e8baa62abb417d'
execute on passengers run data merge entity @s {Glowing: 1b, glow_color_override: 16711680}
summon minecraft:text_display ~ ~ ~ {Tags:['aj.global.entity', 'aj.outdated_rig_text_display', 'aj.new'], text:'["",{"text":"This rig instance is outdated!\\nIt will not function correctly and should be removed or re-summoned.","color":"red"}]', billboard: "vertical", transformation:{translation:[0f,3f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
ride @e[type=minecraft:text_display,tag=aj.new,limit=1,distance=..0.01] mount @s
tag @e[type=minecraft:text_display,tag=aj.new,limit=1,distance=..0.01] remove aj.new