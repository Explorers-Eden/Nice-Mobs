##purge temp storage
data remove storage eden:temp nice_mobs

##default technical scoreboard
scoreboard objectives add eden.technical dummy

##additional scoreboards
scoreboard objectives add nice_mobs.entity.generic_timer dummy
scoreboard objectives add nice_mobs.player.butterfly_effect dummy
scoreboard objectives add nice_mobs.player.health dummy
scoreboard objectives add nice_mobs.player.vulture_timer dummy
scoreboard objectives add nice_mobs.pufftail.bossbar dummy
scoreboard objectives add nice_mobs.item.time_since_placed dummy
scoreboard objectives add nice_mobs.cruncher.ores_holding dummy
scoreboard objectives add nice_mobs.enderkin.chorus_timer dummy

##schedule reload on first load to prevent frozen animations
execute unless score $init_reload eden.technical matches 1 run schedule function nice_mobs:reload 1t

##add storage for gamerules
execute unless data storage eden:settings nice_mobs run function nice_mobs:default_values