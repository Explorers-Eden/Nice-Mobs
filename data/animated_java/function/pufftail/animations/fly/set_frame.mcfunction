# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=minecraft:item_display,tag=aj.pufftail.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'pufftail', 'function_path': 'animated_java:pufftail/animations/fly/set_frame'}
data remove storage aj:temp args
$execute store result storage aj:temp args.frame int 1 run scoreboard players set @s aj.fly.frame $(frame)
execute at @s run function animated_java:pufftail/animations/fly/zzz/set_frame with storage aj:temp args