# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
data modify storage aj:temp args set value {variant:'', animation:'', frame: 0}
$execute store success score #success aj.i run data modify storage aj:temp args set value $(args)
summon minecraft:item_display ~ ~ ~ { Tags:['aj.new','aj.global.entity','aj.global.root','aj.mushling.root'], teleport_duration: 0, interpolation_duration: 1, Passengers:[{id:"minecraft:marker",Tags:["aj.global.node","aj.global.data","aj.mushling.data"],data:{rigHash:"c02990075987bb27d37f3c337fc95fbd604a529657a6e24edfe563ec553c881a",locators:{},cameras:{},bones:{data_data:"",bone_leg_right:"",bone_leg_left:"",bone_hat:"",bone_body:""}}},{Tags:["aj.global.bone","aj.global.bone.leg_right.tree","aj.global.bone.leg_right.tree.bone","aj.global.display_node.leg_right","aj.global.entity","aj.global.node","aj.global.node.leg_right","aj.global.root.child","aj.global.root.child.bone","aj.mushling.bone","aj.mushling.bone.leg_right","aj.mushling.bone.leg_right.tree","aj.mushling.bone.leg_right.tree.bone","aj.mushling.display_node.leg_right","aj.mushling.entity","aj.mushling.node","aj.mushling.node.leg_right"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",Count:1,components:{"minecraft:item_model":"animated_java:blueprint/mushling/leg_right","minecraft:custom_model_data":{strings:["default"]}}},height:48f,width:48f},{Tags:["aj.global.bone","aj.global.bone.leg_left.tree","aj.global.bone.leg_left.tree.bone","aj.global.display_node.leg_left","aj.global.entity","aj.global.node","aj.global.node.leg_left","aj.global.root.child","aj.global.root.child.bone","aj.mushling.bone","aj.mushling.bone.leg_left","aj.mushling.bone.leg_left.tree","aj.mushling.bone.leg_left.tree.bone","aj.mushling.display_node.leg_left","aj.mushling.entity","aj.mushling.node","aj.mushling.node.leg_left"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",Count:1,components:{"minecraft:item_model":"animated_java:blueprint/mushling/leg_left","minecraft:custom_model_data":{strings:["default"]}}},height:48f,width:48f},{Tags:["aj.global.bone","aj.global.bone.hat.tree","aj.global.bone.hat.tree.bone","aj.global.display_node.hat","aj.global.entity","aj.global.node","aj.global.node.hat","aj.global.root.child","aj.global.root.child.bone","aj.mushling.bone","aj.mushling.bone.hat","aj.mushling.bone.hat.tree","aj.mushling.bone.hat.tree.bone","aj.mushling.display_node.hat","aj.mushling.entity","aj.mushling.node","aj.mushling.node.hat"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",Count:1,components:{"minecraft:item_model":"animated_java:blueprint/mushling/hat","minecraft:custom_model_data":{strings:["default"]}}},height:48f,width:48f},{Tags:["aj.global.bone","aj.global.bone.body.tree","aj.global.bone.body.tree.bone","aj.global.display_node.body","aj.global.entity","aj.global.node","aj.global.node.body","aj.global.root.child","aj.global.root.child.bone","aj.mushling.bone","aj.mushling.bone.body","aj.mushling.bone.body.tree","aj.mushling.bone.body.tree.bone","aj.mushling.display_node.body","aj.mushling.entity","aj.mushling.node","aj.mushling.node.body"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",Count:1,components:{"minecraft:item_model":"animated_java:blueprint/mushling/body","minecraft:custom_model_data":{strings:["default"]}}},height:48f,width:48f}], }
execute as @e[type=item_display,tag=aj.new,limit=1,distance=..0.01] run function animated_java:mushling/zzz/0