# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
scoreboard players remove @s aj.tween_duration 1
execute if score @s aj.tween_duration matches 1.. run return 1
execute if score @s aj.tween_duration matches 0 on passengers run data modify entity @s interpolation_duration set value 2
execute if score @s aj.idle_angry.frame matches -1 run function animated_java:copper_golem/animations/idle_angry/zzz/commands_keyframe_loop_patch
data remove storage aj:temp args
execute store result storage aj:temp args.frame int 1 run scoreboard players get @s aj.idle_angry.frame
function animated_java:copper_golem/animations/idle_angry/zzz/apply_frame with storage aj:temp args
execute if score @s aj.idle_angry.frame matches 39.. run return run scoreboard players set @s aj.idle_angry.frame -1
scoreboard players add @s aj.idle_angry.frame 1