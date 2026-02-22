scoreboard players remove @s ray_life 1
execute if score @s ray_life matches ..0 run kill @s

execute store result storage firework:temp Speed float 0.01 run scoreboard players get @s ray_speed
execute store result storage firework:temp offset_x float 0.01 run scoreboard players get @s firework_ray.offset_x
execute store result storage firework:temp offset_y float 0.01 run scoreboard players get @s firework_ray.offset_y


#function firework:ray/ray_uuid_transform <-- 已废弃，将逐步删除
function firework:ray/ray_step_facing with storage firework:temp
function firework:ray/ray_step_go with storage firework:temp