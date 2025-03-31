##default technical scoreboard
scoreboard objectives add eden.technical dummy
scoreboard objectives add nice_mobs.entity.is_hurt dummy
scoreboard objectives add nice_mobs.entity.timer dummy
scoreboard objectives add nice_mobs.entity.action dummy
scoreboard objectives add nice_mobs.pufftail.bossbar dummy

##init schedules
function nice_mobs:schedules/init
schedule function nice_mobs:schedules/init_after_1t 1t
schedule function nice_mobs:schedules/init_after_2t 2t
schedule function nice_mobs:schedules/init_after_3t 3t
schedule function nice_mobs:schedules/init_after_4t 4t


##purge temp storage
data remove storage eden:temp nice_mobs