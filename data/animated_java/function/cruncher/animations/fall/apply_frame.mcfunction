# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
data remove storage aj:temp args
$execute store result storage aj:temp args.frame int 1 run scoreboard players set @s aj.fall.frame $(frame)
execute at @s run function animated_java:cruncher/animations/fall/zzz/apply_frame with storage aj:temp args