# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.butterfly.root] run return 0
execute on passengers if entity @s[tag=aj.butterfly.data] unless data entity @s {data:{rigHash: '97a758a46c02bc6f2ecd0d0d21af34ab4e7b15180e8e69b75efef08269b22e59'}} on vehicle run function animated_java:butterfly/root/zzz/check_rig_hash
scoreboard players set @s aj.is_rig_loaded 1