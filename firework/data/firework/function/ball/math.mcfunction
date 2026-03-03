$execute as @s at @s run tp @s ~ ~ ~ ~ ~$(angle)
$execute at @s run summon armor_stand ^ ^ ^$(distance) {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["ball_poz"]}
execute store result score z1 ball run data get entity @s Pos[2] 100
execute store result score z2 ball run data get entity @n[type=armor_stand,tag=ball_poz] Pos[2] 100
scoreboard players operation z2 ball -= z1 ball
execute store result storage firework:ring distance double 0.01 run scoreboard players get z2 ball
data modify storage firework:ball y set from entity @n[type=armor_stand,tag=ball_poz] Pos[1]
kill @e[type=armor_stand,tag=ball_poz]
function firework:ball/ball_process with storage firework:ball