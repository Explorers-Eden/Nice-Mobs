data modify storage eden:settings nice_mobs.spawning set value {\
bloomer:"enabled",bloomer_initial:"false",\
butterfly:"enabled",butterfly_initial:"false",\
cruncher:"enabled",cruncher_initial:"false",\
dirt_golem:"enabled",dirt_golem_initial:"false",\
glare:"enabled",glare_initial:"false",\
jellyfish:"enabled",jellyfish_initial:"false",\
moth:"enabled",moth_initial:"false",\
mushling:"enabled",mushling_initial:"false",\
nautilus_crab:"enabled",nautilus_crab_initial:"false",\
penguin:"enabled",penguin_initial:"false",\
piggy_bank:"enabled",piggy_bank_initial:"false",\
pufftail:"enabled",pufftail_initial:"false",\
rat:"enabled",rat_initial:"false",\
snail:"enabled",snail_initial:"false",\
tuff_golem:"enabled",tuff_golem_initial:"false",\
wisp:"enabled",wisp_initial:"false",\
hedgehog:"enabled",hedgehog_initial:"false",\
enderkin:"enabled",enderkin_initial:"false",\
vulture:"enabled",vulture_initial:"false",\
command_template:"function nice_mobs:dialog/command_template/spawning {bloomer:$(bloomer),butterfly:$(butterfly),cruncher:$(cruncher),dirt_golem:$(dirt_golem),glare:$(glare),jellyfish:$(jellyfish),moth:$(moth),mushling:$(mushling),nautilus_crab:$(nautilus_crab),penguin:$(penguin),piggy_bank:$(piggy_bank),pufftail:$(pufftail),rat:$(rat),snail:$(snail),tuff_golem:$(tuff_golem),wisp:$(wisp),hedgehog:$(hedgehog),enderkin:$(enderkin),vulture:$(vulture)}"\
}

data modify storage eden:settings nice_mobs.behavior set value {\
butterflyeffect:"enabled",butterflyeffect_initial:"false",\
enderteleport:"enabled",enderteleport_initial:"false",\
chickenjockeyvariants:"enabled",chickenjockeyvariants_initial:"false",\
roostercrowing:"enabled",roostercrowing_initial:"false",\
enderkinchorus:"enabled",enderkinchorus_initial:"false",\
wanderingvariants:"enabled",wanderingvariants_initial:"false",\
command_template:"function nice_mobs:dialog/command_template/behavior {wanderingvariants:$(wanderingvariants),enderkinchorus:$(enderkinchorus),roostercrowing:$(roostercrowing),chickenjockeyvariants:$(chickenjockeyvariants),enderteleport:$(enderteleport),butterflyeffect:$(butterflyeffect)}"\
}

data modify storage eden:datapack nice_mobs.version set value "2.0"