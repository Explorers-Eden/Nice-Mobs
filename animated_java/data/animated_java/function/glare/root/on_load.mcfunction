# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.glare.root] run return 0
execute on passengers if entity @s[tag=aj.glare.data] unless data entity @s {data:{rigHash: 'fce074860628cd1d8fc6273451a7c871895850f3e3104e07d6d6633ccef2cc2d'}} on vehicle run function animated_java:glare/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1