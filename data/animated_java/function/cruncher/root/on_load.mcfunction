# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.cruncher.root] run return 0
execute on passengers if entity @s[tag=aj.cruncher.data] unless data entity @s {data:{rigHash: '35c1faf2b1c14558e8bd4848fdf59c4119a39264fb94411072ef4004dd027243'}} on vehicle run function animated_java:cruncher/root/zzz/check_rig_hash
scoreboard players set @s aj.is_rig_loaded 1