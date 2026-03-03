
$tp @s ~ ~ ~ ~ ~$(angle)
$execute at @s run summon armor_stand ^ ^ ^$(distance) {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["ball_poz"]}
execute store result score x1 ball run data get entity @s Pos[0] 100
execute store result score z1 ball run data get entity @s Pos[2] 100
execute store result score x2 ball run data get entity @n[type=armor_stand,tag=ball_poz] Pos[0] 100
execute store result score z2 ball run data get entity @n[type=armor_stand,tag=ball_poz] Pos[2] 100
scoreboard players operation x1 ball -= x2 ball
scoreboard players operation z1 ball -= z2 ball
scoreboard players operation x1 ball *= x1 ball
scoreboard players operation z1 ball *= z1 ball
scoreboard players operation x1 ball += z1 ball

execute store result storage firework:math sr_input int 1 run scoreboard players get x1 ball
function firework:math/square_root with storage firework:math
execute store result score distance rings run data get storage firework:math sr_output 0.0001
data modify storage firework:ball y set from entity @n[type=armor_stand,tag=ball_poz] Pos[1]
function firework:ball/ball_process with storage firework:ball