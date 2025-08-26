$data modify storage eden:settings nice_mobs.behavior merge value {wanderingvariants:$(wanderingvariants),enderkinchorus:$(enderkinchorus),roostercrowing:$(roostercrowing),chickenjockeyvariants:$(chickenjockeyvariants),enderteleport:$(enderteleport),butterflyeffect:$(butterflyeffect)}

execute if data storage eden:settings nice_mobs.behavior{wanderingvariants:"enabled"} run data modify storage eden:settings nice_mobs.behavior.wanderingvariants_initial set value "false"
execute unless data storage eden:settings nice_mobs.behavior{wanderingvariants:"enabled"} run data modify storage eden:settings nice_mobs.behavior.wanderingvariants_initial set value "true"

execute if data storage eden:settings nice_mobs.behavior{enderkinchorus:"enabled"} run data modify storage eden:settings nice_mobs.behavior.enderkinchorus_initial set value "false"
execute unless data storage eden:settings nice_mobs.behavior{enderkinchorus:"enabled"} run data modify storage eden:settings nice_mobs.behavior.enderkinchorus_initial set value "true"

execute if data storage eden:settings nice_mobs.behavior{roostercrowing:"enabled"} run data modify storage eden:settings nice_mobs.behavior.roostercrowing_initial set value "false"
execute unless data storage eden:settings nice_mobs.behavior{roostercrowing:"enabled"} run data modify storage eden:settings nice_mobs.behavior.roostercrowing_initial set value "true"

execute if data storage eden:settings nice_mobs.behavior{chickenjockeyvariants:"enabled"} run data modify storage eden:settings nice_mobs.behavior.chickenjockeyvariants_initial set value "false"
execute unless data storage eden:settings nice_mobs.behavior{chickenjockeyvariants:"enabled"} run data modify storage eden:settings nice_mobs.behavior.chickenjockeyvariants_initial set value "true"

execute if data storage eden:settings nice_mobs.behavior{enderteleport:"enabled"} run data modify storage eden:settings nice_mobs.behavior.enderteleport_initial set value "false"
execute unless data storage eden:settings nice_mobs.behavior{enderteleport:"enabled"} run data modify storage eden:settings nice_mobs.behavior.enderteleport_initial set value "true"

execute if data storage eden:settings nice_mobs.behavior{butterflyeffect:"enabled"} run data modify storage eden:settings nice_mobs.behavior.butterflyeffect_initial set value "false"
execute unless data storage eden:settings nice_mobs.behavior{butterflyeffect:"enabled"} run data modify storage eden:settings nice_mobs.behavior.butterflyeffect_initial set value "true"