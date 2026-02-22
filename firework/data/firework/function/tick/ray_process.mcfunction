scoreboard players remove @s ray_life 1
execute if score @s ray_life matches ..0 run kill @s

execute store result storage firework:temp Speed float 0.01 run scoreboard players get @s ray_speed


#function firework:ray/ray_uuid_transform <-- 已废弃，将逐步删除
function firework:ray/ray_step_facing
function firework:ray/ray_step_go with storage firework:temp