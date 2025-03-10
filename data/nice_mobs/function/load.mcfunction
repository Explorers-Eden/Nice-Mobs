##default technical scoreboard
scoreboard objectives add eden.technical dummy
scoreboard objectives add nice_mobs.mushling.dig.timer dummy
scoreboard objectives add nice_mobs.mushling.dig.action dummy

##init schedules
schedule function nice_mobs:remove_items 1t
schedule function nice_mobs:mushling/run 5t
schedule function nice_mobs:penguin/run 5t