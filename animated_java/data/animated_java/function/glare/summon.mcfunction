# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
data modify storage aj:temp args set value {variant:'', animation:'', frame: 0}
$execute store success score #success aj.i run data modify storage aj:temp args set value $(args)
summon minecraft:item_display ~ ~ ~ { Tags:['aj.new','aj.global.entity','aj.global.root','aj.glare.root'], teleport_duration: 0, interpolation_duration: 1, Passengers:[{id:"minecraft:marker",Tags:["aj.global.node","aj.global.data","aj.glare.data"],data:{rigHash:"fce074860628cd1d8fc6273451a7c871895850f3e3104e07d6d6633ccef2cc2d",locators:{},cameras:{},bones:{data_data:"",bone_head:"",bone_mid:"",bone_lower:""}}},{Tags:["aj.glare.bone","aj.glare.bone.head","aj.glare.bone.head.tree","aj.glare.bone.head.tree.bone","aj.glare.display_node.head","aj.glare.entity","aj.glare.node","aj.glare.node.head","aj.global.bone","aj.global.bone.head.tree","aj.global.bone.head.tree.bone","aj.global.display_node.head","aj.global.entity","aj.global.node","aj.global.node.head","aj.global.root.child","aj.global.root.child.bone"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",Count:1,components:{"minecraft:item_model":"animated_java:blueprint/glare/head","minecraft:custom_model_data":{strings:["default"]}}},height:48f,width:48f},{Tags:["aj.glare.bone","aj.glare.bone.mid","aj.glare.bone.mid.tree","aj.glare.bone.mid.tree.bone","aj.glare.display_node.mid","aj.glare.entity","aj.glare.node","aj.glare.node.mid","aj.global.bone","aj.global.bone.mid.tree","aj.global.bone.mid.tree.bone","aj.global.display_node.mid","aj.global.entity","aj.global.node","aj.global.node.mid","aj.global.root.child","aj.global.root.child.bone"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",Count:1,components:{"minecraft:item_model":"animated_java:blueprint/glare/mid","minecraft:custom_model_data":{strings:["default"]}}},height:48f,width:48f},{Tags:["aj.glare.bone","aj.glare.bone.lower","aj.glare.bone.lower.tree","aj.glare.bone.lower.tree.bone","aj.glare.display_node.lower","aj.glare.entity","aj.glare.node","aj.glare.node.lower","aj.global.bone","aj.global.bone.lower.tree","aj.global.bone.lower.tree.bone","aj.global.display_node.lower","aj.global.entity","aj.global.node","aj.global.node.lower","aj.global.root.child","aj.global.root.child.bone"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",Count:1,components:{"minecraft:item_model":"animated_java:blueprint/glare/lower","minecraft:custom_model_data":{strings:["default"]}}},height:48f,width:48f}], }
execute as @e[type=item_display,tag=aj.new,limit=1,distance=..0.01] run function animated_java:glare/zzz/0