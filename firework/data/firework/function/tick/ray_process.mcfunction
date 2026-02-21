execute unless entity @e[type=armor_stand,tag=ray] run return fail
scoreboard players remove @s ray_life 1
execute if score @s ray_life matches ..0 run kill @s 
function firework:ray/ray_step with entity @s

#execute unless score @s ray_init matches 1 run return 1
#scoreboard players set @s ray_init 1