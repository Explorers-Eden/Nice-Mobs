execute store result score $trap_type nice_mobs.technical run random value 1..4

execute if score $trap_type nice_mobs.technical matches 1 run data modify storage eden:temp trap.type set value "cat"
execute if score $trap_type nice_mobs.technical matches 2 run data modify storage eden:temp trap.type set value "wolf"
execute if score $trap_type nice_mobs.technical matches 3 run data modify storage eden:temp trap.type set value "chicken"
execute if score $trap_type nice_mobs.technical matches 4 run data modify storage eden:temp trap.type set value "cow"

execute if data storage eden:temp trap{type:"chicken"} run data modify storage eden:temp trap.scale set value 0.5d
execute if data storage eden:temp trap{type:"cat"} run data modify storage eden:temp trap.scale set value 0.5d
execute if data storage eden:temp trap{type:"wolf"} run data modify storage eden:temp trap.scale set value 0.7d
execute if data storage eden:temp trap{type:"cow"} run data modify storage eden:temp trap.scale set value 0.8d