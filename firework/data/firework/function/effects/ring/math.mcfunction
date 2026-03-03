execute if score steps rings matches ..0 run return fail

scoreboard players set angle rings 360000
scoreboard players operation angle rings /= steps rings
scoreboard players operation distance1 rings = distance rings
scoreboard players operation distance1 rings *= 1000 C
scoreboard players operation steps1 rings = steps rings

execute store result storage firework:ring angle double 0.001 run scoreboard players get angle rings
execute store result storage firework:ring distance double 0.001 run scoreboard players get distance1 rings
summon armor_stand ~ ~ ~ {Tags:["center"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}

function firework:effects/ring/poz with storage firework:ring