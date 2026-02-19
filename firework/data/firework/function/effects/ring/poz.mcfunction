#记得传入参数storge firework:ring
execute if score steps rings matches ..0 run tellraw @a [{"text":"Invalid steps value!","color":"red"}]
execute if score steps rings matches ..0 run return fail

summon armor_stand ~ ~ ~ {Tags:["center"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}


scoreboard players remove steps rings 1
execute if score steps rings matches 1.. run function firework:effects/ring/poz