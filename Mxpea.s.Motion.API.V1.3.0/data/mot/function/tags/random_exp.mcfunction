execute as @s at @s store result score @s rad_x run random value -10000..10000
execute as @s at @s store result score @s rad_y run random value -10000..10000
execute as @s at @s store result score @s rad_z run random value -10000..10000

execute as @s at @s store result entity @s Motion[0] double 0.00005 run scoreboard players get @s rad_x
execute as @s at @s store result entity @s Motion[1] double 0.00005 run scoreboard players get @s rad_y
execute as @s at @s store result entity @s Motion[2] double 0.00005 run scoreboard players get @s rad_z
tag @s remove random_exp