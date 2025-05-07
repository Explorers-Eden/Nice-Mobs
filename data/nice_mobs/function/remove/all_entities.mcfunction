execute as @e[tag=nice_mobs.base] run function nice_mobs:misc/kill
function animated_java:global/remove/everything
tellraw @s [{"bold":false,"color":"#FF4A4A","italic":false,"text":"▊ "},{"bold":false,"color":"white","italic":false,"text":"Removed loaded Nice Mobs Entities"}]