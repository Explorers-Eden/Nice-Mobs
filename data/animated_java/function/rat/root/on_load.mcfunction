# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.rat.root] run return 0
execute on passengers if entity @s[tag=aj.rat.data] unless data entity @s {data:{rigHash: 'be50eec5a98172038f88586d7bbe07a82c2361be7b1c30f809f94afb24bc6359'}} on vehicle run function animated_java:rat/root/zzz/check_rig_hash
scoreboard players set @s aj.is_rig_loaded 1