# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=minecraft:item_display,tag=aj.copper_golem.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'copper_golem', 'function_path': 'animated_java:copper_golem/animations/walk_angry/apply_frame'}
data remove storage aj:temp args
$execute store result storage aj:temp args.frame int 1 run scoreboard players set @s aj.walk_angry.frame $(frame)
execute at @s run function animated_java:copper_golem/animations/walk_angry/zzz/apply_frame with storage aj:temp args