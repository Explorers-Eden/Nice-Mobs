##default technical scoreboard
scoreboard objectives add eden.technical dummy
scoreboard objectives add nice_mobs.entity.is_hurt dummy
scoreboard objectives add nice_mobs.entity.timer dummy
scoreboard objectives add nice_mobs.entity.action dummy

##init schedules
schedule function nice_mobs:misc/scheduled_spawning 4s
schedule function nice_mobs:misc/run 6t
schedule function nice_mobs:misc/ambient_sounds 5s
schedule function nice_mobs:mushling/run 5t
schedule function nice_mobs:penguin/run 5t
schedule function nice_mobs:snail/run 5t
schedule function nice_mobs:copper_golem/run 5t
schedule function nice_mobs:tuff_golem/run 5t
schedule function nice_mobs:dirt_golem/run 5t
schedule function nice_mobs:glare/run 5t
schedule function nice_mobs:rat/run 5t
schedule function nice_mobs:bloomer/run 5t
schedule function nice_mobs:nautilus_crab/run 5t
schedule function nice_mobs:pufftail/run 5t

##purge temp storage
data remove storage eden:temp nice_mobs