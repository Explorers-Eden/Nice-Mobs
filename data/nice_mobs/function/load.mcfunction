##default technical scoreboard
scoreboard objectives add eden.technical dummy
scoreboard objectives add nice_mobs.player.butterfly_effect dummy
scoreboard objectives add nice_mobs.entity.is_hurt dummy
scoreboard objectives add nice_mobs.entity.timer dummy
scoreboard objectives add nice_mobs.entity.action dummy
scoreboard objectives add nice_mobs.pufftail.bossbar dummy
scoreboard objectives add nice_mobs.item.time_since_placed dummy
scoreboard objectives add nice_mobs.cruncher.stone_block_type dummy
scoreboard objectives add nice_mobs.cruncher.total_ore_count dummy
scoreboard objectives add nice_mobs.cruncher.coal dummy
scoreboard objectives add nice_mobs.cruncher.copper dummy
scoreboard objectives add nice_mobs.cruncher.iron dummy
scoreboard objectives add nice_mobs.cruncher.redstone dummy
scoreboard objectives add nice_mobs.cruncher.lapis dummy
scoreboard objectives add nice_mobs.cruncher.diamond dummy
scoreboard objectives add nice_mobs.cruncher.gold dummy
scoreboard objectives add nice_mobs.cruncher.emerald dummy

##init schedules
function nice_mobs:schedules/init
schedule function nice_mobs:schedules/init_after_1t 1t
schedule function nice_mobs:schedules/init_after_2t 2t
schedule function nice_mobs:schedules/init_after_3t 3t
schedule function nice_mobs:schedules/init_after_4t 4t


##purge temp storage
data remove storage eden:temp nice_mobs