##default technical scoreboard
scoreboard objectives add eden.technical dummy
scoreboard objectives add nice_mobs.entity.is_hurt dummy
scoreboard objectives add nice_mobs.entity.timer dummy
scoreboard objectives add nice_mobs.entity.action dummy

##init schedules
schedule function nice_mobs:misc/run 4t
schedule function nice_mobs:misc/ambient_sounds 5s
schedule function nice_mobs:mushling/run 5t
schedule function nice_mobs:penguin/run 5t
schedule function nice_mobs:snail/run 5t
schedule function nice_mobs:copper_golem/run 5t
schedule function nice_mobs:tuff_golem/run 5t
schedule function nice_mobs:dirt_golem/run 5t
schedule function nice_mobs:glare/run 5t

##purge temp storage
data remove storage eden:temp nice_mobs