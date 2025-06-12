$data modify storage eden:settings nice_mobs.spawning merge value {bloomer:$(bloomer),butterfly:$(butterfly),copper_golem:$(copper_golem),cruncher:$(cruncher),dirt_golem:$(dirt_golem),glare:$(glare),jellyfish:$(jellyfish),moth:$(moth),mushling:$(mushling),nautilus_crab:$(nautilus_crab),penguin:$(penguin),piggy_bank:$(piggy_bank),pufftail:$(pufftail),rat:$(rat),snail:$(snail),tuff_golem:$(tuff_golem),wisp:$(wisp),hedgehog:$(hedgehog),enderkin:$(enderkin),vulture:$(vulture)}

execute if data storage eden:settings nice_mobs.spawning{bloomer:"enabled"} run data modify storage eden:settings nice_mobs.spawning.bloomer_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{bloomer:"enabled"} run data modify storage eden:settings nice_mobs.spawning.bloomer_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{butterfly:"enabled"} run data modify storage eden:settings nice_mobs.spawning.butterfly_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{butterfly:"enabled"} run data modify storage eden:settings nice_mobs.spawning.butterfly_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{copper_golem:"enabled"} run data modify storage eden:settings nice_mobs.spawning.copper_golem_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{copper_golem:"enabled"} run data modify storage eden:settings nice_mobs.spawning.copper_golem_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{cruncher:"enabled"} run data modify storage eden:settings nice_mobs.spawning.cruncher_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{cruncher:"enabled"} run data modify storage eden:settings nice_mobs.spawning.cruncher_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{dirt_golem:"enabled"} run data modify storage eden:settings nice_mobs.spawning.dirt_golem_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{dirt_golem:"enabled"} run data modify storage eden:settings nice_mobs.spawning.dirt_golem_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{glare:"enabled"} run data modify storage eden:settings nice_mobs.spawning.glare_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{glare:"enabled"} run data modify storage eden:settings nice_mobs.spawning.glare_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{jellyfish:"enabled"} run data modify storage eden:settings nice_mobs.spawning.jellyfish_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{jellyfish:"enabled"} run data modify storage eden:settings nice_mobs.spawning.jellyfish_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{moth:"enabled"} run data modify storage eden:settings nice_mobs.spawning.moth_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{moth:"enabled"} run data modify storage eden:settings nice_mobs.spawning.moth_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{mushling:"enabled"} run data modify storage eden:settings nice_mobs.spawning.mushling_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{mushling:"enabled"} run data modify storage eden:settings nice_mobs.spawning.mushling_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{nautilus_crab:"enabled"} run data modify storage eden:settings nice_mobs.spawning.nautilus_crab_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{nautilus_crab:"enabled"} run data modify storage eden:settings nice_mobs.spawning.nautilus_crab_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{penguin:"enabled"} run data modify storage eden:settings nice_mobs.spawning.penguin_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{penguin:"enabled"} run data modify storage eden:settings nice_mobs.spawning.penguin_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{piggy_bank:"enabled"} run data modify storage eden:settings nice_mobs.spawning.piggy_bank_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{piggy_bank:"enabled"} run data modify storage eden:settings nice_mobs.spawning.piggy_bank_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{pufftail:"enabled"} run data modify storage eden:settings nice_mobs.spawning.pufftail_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{pufftail:"enabled"} run data modify storage eden:settings nice_mobs.spawning.pufftail_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{rat:"enabled"} run data modify storage eden:settings nice_mobs.spawning.rat_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{rat:"enabled"} run data modify storage eden:settings nice_mobs.spawning.rat_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{snail:"enabled"} run data modify storage eden:settings nice_mobs.spawning.snail_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{snail:"enabled"} run data modify storage eden:settings nice_mobs.spawning.snail_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{tuff_golem:"enabled"} run data modify storage eden:settings nice_mobs.spawning.tuff_golem_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{tuff_golem:"enabled"} run data modify storage eden:settings nice_mobs.spawning.tuff_golem_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{wisp:"enabled"} run data modify storage eden:settings nice_mobs.spawning.wisp_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{wisp:"enabled"} run data modify storage eden:settings nice_mobs.spawning.wisp_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{hedgehog:"enabled"} run data modify storage eden:settings nice_mobs.spawning.hedgehog_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{hedgehog:"enabled"} run data modify storage eden:settings nice_mobs.spawning.hedgehog_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{enderkin:"enabled"} run data modify storage eden:settings nice_mobs.spawning.enderkin_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{enderkin:"enabled"} run data modify storage eden:settings nice_mobs.spawning.enderkin_initial set value "true"

execute if data storage eden:settings nice_mobs.spawning{vulture:"enabled"} run data modify storage eden:settings nice_mobs.spawning.vulture_initial set value "false"
execute unless data storage eden:settings nice_mobs.spawning{vulture:"enabled"} run data modify storage eden:settings nice_mobs.spawning.vulture_initial set value "true"