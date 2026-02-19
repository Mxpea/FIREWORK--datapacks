#记得传入参数storge firework:ring
execute if score steps rings matches ..0 run tellraw @a [{"text":"Invalid steps value!","color":"red"}]
execute if score steps rings matches ..0 run return fail


$execute as @e[type=armor_stand,tag=center] at @s run summon armor_stand ^ ^ ^$(distance) {Tags:["poz"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
$execute as @e[type=armor_stand,tag=center] at @s run tp @s ~ ~ ~ ~$(angle) ~
scoreboard players remove steps rings 1
execute if score steps rings matches 1.. run function firework:effects/ring/poz with storage firework:ring
execute if score steps rings matches 0 as @e[type=armor_stand,tag=poz] at @s facing entity @e[type=armor_stand,tag=center,sort=nearest,limit=1] feet run tp @s ~ ~ ~
execute if score steps rings matches 0 run kill @e[type=armor_stand,tag=center]