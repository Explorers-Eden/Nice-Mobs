# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.cruncher.root] run return 0
execute on passengers if entity @s[tag=aj.cruncher.data] unless data entity @s {data:{rigHash: 'c5d4fc0278bd5ddeaea2feedbc9ce1265c55222458ddc67c965d136ea66709d8'}} on vehicle run function animated_java:cruncher/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1