# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.tuff_golem.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'tuff_golem', 'function_path': 'animated_java:tuff_golem/animations/end_holding/set_frame'}
$execute store result storage aj:temp frame int 1 run scoreboard players set @s aj.end_holding.frame $(frame)
execute at @s run function animated_java:tuff_golem/animations/end_holding/zzz/set_frame with storage aj:temp