##default technical scoreboard
scoreboard objectives add eden.technical dummy
scoreboard objectives add nice_mobs.entity.is_hurt dummy
scoreboard objectives add nice_mobs.entity.timer dummy
scoreboard objectives add nice_mobs.entity.action dummy

##init schedules
schedule function nice_mobs:misc/run 3t
schedule function nice_mobs:entity_ambient_sounds 5s
schedule function nice_mobs:mushling/run 5t
schedule function nice_mobs:penguin/run 5t
schedule function nice_mobs:snail/run 5t