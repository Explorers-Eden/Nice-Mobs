# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.dirt_golem.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'dirt_golem', 'function_path': 'animated_java:dirt_golem/remove/this'}
function #animated_java:dirt_golem/as_root/on_remove
execute on passengers run kill @s
kill @s