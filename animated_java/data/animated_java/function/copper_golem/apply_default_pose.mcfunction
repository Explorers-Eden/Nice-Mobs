# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.copper_golem.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'copper_golem', 'function_path': 'animated_java:copper_golem/apply_default_pose'}
execute on passengers if entity @s[tag=aj.copper_golem.bone.left_foot] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0.15625f,0f,1f,0f,-1.3125f,-1.2246467991473532e-16f,0f,-1f,1.9135106236677395e-17f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.copper_golem.bone.right_foot] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-0.15625f,0f,1f,0f,-1.3125f,-1.2246467991473532e-16f,0f,-1f,-1.9135106236677392e-17f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.copper_golem.bone.antenna] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0.03125f,0f,1f,0f,-0.5625f,-1.2246467991473532e-16f,0f,-1f,3.827021247335479e-18f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.copper_golem.bone.nose] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-2.0816681711721685e-17f,0f,1f,0f,-0.8125f,-1.2246467991473532e-16f,0f,-1f,0.1875f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.copper_golem.bone.head] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0.03125f,0f,1f,0f,-0.875f,-1.2246467991473532e-16f,0f,-1f,3.827021247335479e-18f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.copper_golem.bone.left_arm] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,-0.3125f,0f,1f,0f,-0.9375f,-1.2246467991473532e-16f,0f,-1f,-3.827021247335479e-17f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.copper_golem.bone.right_arm] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0.3125f,0f,1f,0f,-0.9375f,-1.2246467991473532e-16f,0f,-1f,3.827021247335479e-17f,0f,0f,0f,1f], start_interpolation: 0}
execute on passengers if entity @s[tag=aj.copper_golem.bone.body] run data merge entity @s {transformation: [-1f,0f,1.2246467991473532e-16f,0.03125f,0f,1f,0f,-1.5625f,-1.2246467991473532e-16f,0f,-1f,3.827021247335479e-18f,0f,0f,0f,1f], start_interpolation: 0}