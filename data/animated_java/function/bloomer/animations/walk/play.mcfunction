# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
tag @s add aj.bloomer.animation.walk.playing
scoreboard players set @s aj.walk.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:bloomer/animations/walk/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only