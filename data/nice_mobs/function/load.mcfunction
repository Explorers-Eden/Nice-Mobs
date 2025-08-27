##purge temp storage
data remove storage eden:temp nice_mobs

##default technical scoreboard
scoreboard objectives add nice_mobs.technical dummy

##additional scoreboards
scoreboard objectives add nice_mobs.entity.generic_timer dummy
scoreboard objectives add nice_mobs.player.butterfly_effect dummy
scoreboard objectives add nice_mobs.player.health dummy
scoreboard objectives add nice_mobs.player.vulture_timer dummy
scoreboard objectives add nice_mobs.pufftail.bossbar dummy
scoreboard objectives add nice_mobs.item.time_since_placed dummy
scoreboard objectives add nice_mobs.cruncher.ores_holding dummy
scoreboard objectives add nice_mobs.enderkin.chorus_timer dummy

##add storage for gamerules
execute unless data storage eden:datapack nice_mobs{version:"2.1"} run function nice_mobs:default_values

##start function to remove Copper Golems from older Versions
function nice_mobs:remove_copper_golem

##set data pack version
data modify storage eden:datapack nice_mobs.version set value "2.0"