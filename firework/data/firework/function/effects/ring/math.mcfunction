execute if score steps rings matches ..0 unless score ignore_ring_warning firework_settings matches 1 run tellraw @a [{"text":"步数数据非法，你需要先指定步数！","color":"red"}]
execute if score steps rings matches ..0 unless score ignore_ring_warning firework_settings matches 1 run tellraw @a [{text:"[点击这里设置步数]    ",color:"yellow",click_event:{action: "suggest_command",command:"/scoreboard players set steps rings "}},{text:"[不再显示]",color:"gray",click_event: {action: "run_command", command:"/scoreboard players set ignore_ring_warning firework_settings 1"}}]
execute if score steps rings matches ..0 run return fail

scoreboard players operation angle rings = 360 C
scoreboard players operation angle rings *= 1000 C
scoreboard players operation angle rings /= steps rings
scoreboard players operation distance1 rings = distance rings
scoreboard players operation distance1 rings *= 1000 C

execute store result storage firework:ring angle double 0.001 run scoreboard players get angle rings
execute store result storage firework:ring distance double 0.001 run scoreboard players get distance1 rings
summon armor_stand ~ ~ ~ {Tags:["center"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}

function firework:effects/ring/poz with storage firework:ring