##update old mobs pre v1.7
schedule function nice_mobs:update_mobs/init 6s

##purge temp storage
data remove storage eden:temp nice_mobs

##default technical scoreboard
scoreboard objectives add eden.technical dummy

##additional scoreboards
scoreboard objectives add nice_mobs.entity.generic_timer dummy
scoreboard objectives add nice_mobs.player.butterfly_effect dummy
scoreboard objectives add nice_mobs.pufftail.bossbar dummy
scoreboard objectives add nice_mobs.item.time_since_placed dummy
scoreboard objectives add nice_mobs.cruncher.ores_holding dummy
scoreboard objectives add nice_mobs.enderkin.chorus_timer dummy

##Migration from previous versions
scoreboard objectives remove nice_mobs.cruncher.stone_block_type
scoreboard objectives remove nice_mobs.cruncher.total_ore_count
scoreboard objectives remove nice_mobs.cruncher.coal
scoreboard objectives remove nice_mobs.cruncher.copper
scoreboard objectives remove nice_mobs.cruncher.iron
scoreboard objectives remove nice_mobs.cruncher.redstone
scoreboard objectives remove nice_mobs.cruncher.lapis
scoreboard objectives remove nice_mobs.cruncher.diamond
scoreboard objectives remove nice_mobs.cruncher.gold
scoreboard objectives remove nice_mobs.cruncher.emerald
scoreboard objectives remove nice_mobs.entity.action
scoreboard objectives remove nice_mobs.entity.is_hurt

##add storage for gamerules
execute unless data storage eden:gamerule nice_mobs run return run function nice_mobs:gamerule/default_settings