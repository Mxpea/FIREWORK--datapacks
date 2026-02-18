tag @p add nearest
function mot:poz

execute as @s at @s store result score @s rad_x run scoreboard players get @p x2
execute as @s run execute as @s store result score @s rad_store run random value -10000..10000
execute as @s run scoreboard players operation @s rad_x += @s rad_store

execute as @s at @s store result score @s rad_y run scoreboard players get @p y2
execute as @s run execute as @s store result score @s rad_store run random value -10000..10000
execute as @s run scoreboard players operation @s rad_y += @s rad_store

execute as @s at @s store result score @s rad_z run scoreboard players get @p z2
execute as @s run execute as @s store result score @s rad_store run random value -10000..10000
execute as @s run scoreboard players operation @s rad_z += @s rad_store

execute as @s at @s store result entity @s Motion[0] double 0.0001 run scoreboard players get @s rad_x
execute as @s at @s store result entity @s Motion[1] double 0.0001 run scoreboard players get @s rad_y
execute as @s at @s store result entity @s Motion[2] double 0.0001 run scoreboard players get @s rad_z
tag @s remove random_mot_big