# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.bloomer.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'bloomer', 'function_path': 'animated_java:bloomer/set_default_pose'}
execute on passengers if entity @s[tag=aj.bloomer.bone.head] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0f,0f,1f,0f,-0.5f,-1.2246467991473532e-16f,0f,-1f,0f,0f,0f,0f,1f], start_interpolation: -1}
execute on passengers if entity @s[tag=aj.bloomer.bone.leg0] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-0.12499999999999997f,0f,1f,0f,-1.25f,-1.2246467991473532e-16f,0f,-1f,-0.25f,0f,0f,0f,1f], start_interpolation: -1}
execute on passengers if entity @s[tag=aj.bloomer.bone.leg1] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0.12500000000000003f,0f,1f,0f,-1.25f,-1.2246467991473532e-16f,0f,-1f,-0.24999999999999997f,0f,0f,0f,1f], start_interpolation: -1}
execute on passengers if entity @s[tag=aj.bloomer.bone.leg2] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-0.12500000000000003f,0f,1f,0f,-1.25f,-1.2246467991473532e-16f,0f,-1f,0.24999999999999997f,0f,0f,0f,1f], start_interpolation: -1}
execute on passengers if entity @s[tag=aj.bloomer.bone.leg3] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0.12499999999999997f,0f,1f,0f,-1.25f,-1.2246467991473532e-16f,0f,-1f,0.25f,0f,0f,0f,1f], start_interpolation: -1}
execute on passengers if entity @s[tag=aj.bloomer.bone.body] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0f,0f,1f,0f,-1.625f,-1.2246467991473532e-16f,0f,-1f,0f,0f,0f,0f,1f], start_interpolation: -1}