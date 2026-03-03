summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["ball_center"]}
execute as @e[type=armor_stand,tag=ball_center] at @s run tp @s ~ ~ ~ ~ -90

scoreboard players set angle ball 180000
scoreboard players operation angle ball /= steps ball
scoreboard players operation steps1 ball = steps ball

scoreboard players remove steps1 ball 1

execute store result storage firework:ball angle double 0.001 run scoreboard players get angle ball
execute store result storage firework:ball distance float 0.1 run scoreboard players get distance ball

scoreboard players set angle_ring ball 360000
scoreboard players operation angle_ring ball /= steps ball
execute store result storage firework:ring angle double 0.001 run scoreboard players get angle_ring ball

execute as @e[type=armor_stand,tag=ball_center] at @s run function firework:ball/math with storage firework:ball