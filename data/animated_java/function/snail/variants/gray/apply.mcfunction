# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=minecraft:item_display,tag=aj.snail.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'snail', 'function_path': 'animated_java:snail/variants/gray/apply'}
execute on passengers if entity @s[tag=aj.snail.bone.head] run function animated_java:snail/variants/gray/zzz/apply_to_bone_head
execute on passengers if entity @s[tag=aj.snail.bone.tail] run function animated_java:snail/variants/gray/zzz/apply_to_bone_tail
execute on passengers if entity @s[tag=aj.snail.bone.shell] run function animated_java:snail/variants/gray/zzz/apply_to_bone_shell
execute on passengers if entity @s[tag=aj.snail.bone.left_eye] run function animated_java:snail/variants/gray/zzz/apply_to_bone_left_eye
execute on passengers if entity @s[tag=aj.snail.bone.right_eye] run function animated_java:snail/variants/gray/zzz/apply_to_bone_right_eye
return 1