# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute if score @s aj.fall.frame matches 17.. run scoreboard players set @s aj.fall.frame 1
data remove storage aj:temp args
execute store result storage aj:temp args.frame int 1 run scoreboard players get @s aj.fall.frame
execute at @s run function animated_java:cruncher/animations/fall/zzz/apply_frame with storage aj:temp args
scoreboard players add @s aj.fall.frame 1