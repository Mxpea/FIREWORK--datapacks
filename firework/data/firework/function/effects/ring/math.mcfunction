execute if score steps rings matches ..0 run tellraw @a [{"text":"步数数据非法，你需要先指定步数！","color":"red"}]
execute if score steps rings matches ..0 run return fail

scoreboard players operation angle rings = 360 C
scoreboard players operation angle rings *= 1000 C
scoreboard players operation angle rings /= steps rings
scoreboard players operation distance rings *= 1000 C

execute store result storage firework:ring angle double 0.001 run scoreboard players get angle rings
execute store result storage firework:ring distance double 0.001 run scoreboard players get distance rings