# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=minecraft:item_display,tag=aj.jellyfish.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'jellyfish', 'function_path': 'animated_java:jellyfish/animations/default/next_frame'}
execute if score @s aj.default.frame matches 81.. run scoreboard players set @s aj.default.frame 1
data remove storage aj:temp args
execute store result storage aj:temp args.frame int 1 run scoreboard players get @s aj.default.frame
execute at @s run function animated_java:jellyfish/animations/default/zzz/apply_frame with storage aj:temp args
scoreboard players add @s aj.default.frame 1