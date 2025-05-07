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

scoreboard objectives add nice_mobs.entity.action dummy
scoreboard objectives add nice_mobs.entity.is_hurt dummy

##add storage for gamerules
execute if data storage eden:gamerule nice_mobs run return fail

data modify storage eden:gamerule nice_mobs.spawning.bloomer set value 1b
data modify storage eden:gamerule nice_mobs.spawning.butterfly set value 1b
data modify storage eden:gamerule nice_mobs.spawning.copper_golem set value 1b
data modify storage eden:gamerule nice_mobs.spawning.cruncher set value 1b
data modify storage eden:gamerule nice_mobs.spawning.dirt_golem set value 1b
data modify storage eden:gamerule nice_mobs.spawning.glare set value 1b
data modify storage eden:gamerule nice_mobs.spawning.jellyfish set value 1b
data modify storage eden:gamerule nice_mobs.spawning.moth set value 1b
data modify storage eden:gamerule nice_mobs.spawning.mushling set value 1b
data modify storage eden:gamerule nice_mobs.spawning.nautilus_crab set value 1b
data modify storage eden:gamerule nice_mobs.spawning.penguin set value 1b
data modify storage eden:gamerule nice_mobs.spawning.piggy_bank set value 1b
data modify storage eden:gamerule nice_mobs.spawning.pufftail set value 1b
data modify storage eden:gamerule nice_mobs.spawning.rat set value 1b
data modify storage eden:gamerule nice_mobs.spawning.snail set value 1b
data modify storage eden:gamerule nice_mobs.spawning.tuff_golem set value 1b
data modify storage eden:gamerule nice_mobs.spawning.wisp set value 1b

data modify storage eden:gamerule nice_mobs.behavior.villagercoppergolem set value 1b