execute store result score $trap_type eden.technical run random value 1..4

execute if score $trap_type eden.technical matches 1 run data modify storage eden:temp trap.type set value "cat"
execute if score $trap_type eden.technical matches 2 run data modify storage eden:temp trap.type set value "wolf"
execute if score $trap_type eden.technical matches 3 run data modify storage eden:temp trap.type set value "chicken"
execute if score $trap_type eden.technical matches 4 run data modify storage eden:temp trap.type set value "cow"