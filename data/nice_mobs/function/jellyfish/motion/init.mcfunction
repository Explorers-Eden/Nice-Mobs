execute store result storage eden:temp nice_mobs.jellyfish.motion_0 float 0.0001 run random value -1200..1200
execute store result storage eden:temp nice_mobs.jellyfish.motion_1 float 0.0001 run random value 1500..4500
execute store result storage eden:temp nice_mobs.jellyfish.motion_2 float 0.0001 run random value -1200..1200
execute store result storage eden:temp nice_mobs.jellyfish.spin int 1 run random value -180..180
execute store result storage eden:temp nice_mobs.jellyfish.rotation_1 int 1 run random value -15..15

function nice_mobs:jellyfish/motion/exec with storage eden:temp nice_mobs.jellyfish