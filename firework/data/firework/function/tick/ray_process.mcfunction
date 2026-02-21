execute unless entity @e[type=armor_stand,tag=ray] run return fail
scoreboard players remove @s ray_life 1
execute if score @s ray_life matches ..0 run kill @s
function firework:ray/ray_step_facing with entity @s
function firework:ray/ray_step_go with entity @s