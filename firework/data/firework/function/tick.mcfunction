function firework:effects/rainbow_color_gen
function firework:tick/rainbow_tail
execute unless score start firework_settings matches 1..2 run return fail
#此处截断
execute if score start firework_settings matches 1 run scoreboard players set pokopoko firework_discount 4560
execute if score start firework_settings matches 1 run scoreboard players set pokopoko BPM 8
execute as @a if score start firework_settings matches 1 run stopsound @s record fireworks:music.pokopoko
execute as @a if score start firework_settings matches 1 run playsound fireworks:music.pokopoko record
execute if score start firework_settings matches 1 run tellraw @a [{"text": "提示：","color":"yellow"},{"text": "通过 选项-声音-音符盒/唱片机 滑块调整BGM大小！","color":"green"}]
execute if score start firework_settings matches 1 run scoreboard players set start firework_settings 2

execute if score pokopoko BPM matches 0 run scoreboard players set pokopoko BPM 8
function firework:pokopoko
execute if score pokopoko firework_discount matches -1 run scoreboard players set pokopoko BPM -1
execute if score pokopoko firework_discount matches 0.. run scoreboard players remove pokopoko BPM 1
execute if score pokopoko firework_discount matches 0.. run scoreboard players remove pokopoko firework_discount 1

