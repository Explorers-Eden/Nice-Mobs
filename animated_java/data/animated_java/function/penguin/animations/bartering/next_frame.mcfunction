# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.penguin.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'penguin', 'function_path': 'animated_java:penguin/animations/bartering/next_frame'}
execute if score @s aj.bartering.frame matches 21.. run scoreboard players set @s aj.bartering.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.bartering.frame
execute at @s run function animated_java:penguin/animations/bartering/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.bartering.frame 1