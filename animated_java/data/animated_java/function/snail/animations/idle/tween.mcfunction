# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.snail.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'snail', 'function_path': 'animated_java:snail/animations/idle/tween'}
function animated_java:snail/animations/pause_all
tag @s add aj.snail.animation.idle.playing
$scoreboard players set @s aj.tween_duration $(duration)
$scoreboard players set @s aj.idle.frame $(to_frame)
scoreboard players operation #this aj.i = @s aj.tween_duration
tag @s add aj.transforms_only
execute at @s run function animated_java:snail/animations/idle/zzz/apply_frame {frame: 0}
$execute at @s run function animated_java:snail/animations/idle/zzz/apply_frame {frame: $(to_frame)}
tag @s remove aj.transforms_only
execute on passengers store result entity @s interpolation_duration int 1 run scoreboard players get #this aj.i