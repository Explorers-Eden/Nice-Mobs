# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.pufftail.root] run return 0
execute on passengers if entity @s[tag=aj.pufftail.data] unless data entity @s {data:{rigHash: 'a92c2e9a39678e00b00889731fba4160e264ad575b482839086d2fd74d4253d4'}} on vehicle run function animated_java:pufftail/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1