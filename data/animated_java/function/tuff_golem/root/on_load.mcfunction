# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.tuff_golem.root] run return 0
execute on passengers if entity @s[tag=aj.tuff_golem.data] unless data entity @s {data:{rigHash: 'b7b9d2061703970c4301c12da3d595817f348f9378189ee1d13fb66e3f9c37c3'}} on vehicle run function animated_java:tuff_golem/root/zzz/check_rig_hash
scoreboard players set @s aj.is_rig_loaded 1