# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.data_data set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.penguin.node.tail] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_tail set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.penguin.node.left_wing] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_wing set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.penguin.node.right_wing] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_wing set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.penguin.node.left_foot] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_foot set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.penguin.node.right_foot] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_foot set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.penguin.node.head] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_head set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.penguin.node.body] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_body set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.penguin.node.bartering_item] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.item_display_bartering_item set from storage aj:uuid main.out