#写在前面：
#1.如果你要在你自己的datapack里面使用该datapack的功能，请不要调用/run下的函数，而是参照其中的写法自行调用（参考/example文件夹下的调用）
#除此之外，强烈建议您在动手调用之前手动在游戏中运行一下/run里面的函数，这能帮助你更好地理解它们的运行机制

execute unless score never_show firework_settings matches 1 run function firework:letters/extra
execute unless score never_show firework_settings matches 1 run tellraw @a [{"text": "FIREWORK! ","color":"gold",bold: true,italic: true},{"text": "datapack","color":"green"},{"text": " by ","color":"white"},{"text": "Aurelith/Mxpea","color":"yellow"},{"text": " | ","color":"white"},{"text": "[Github]","color":"aqua", click_event:{action: "open_url",url: "https://github.com/Mxpea/FIREWORK--datapacks"}}]
execute unless score never_show firework_settings matches 1 run tellraw @a {text:"[点击这里不再显示]",color:"gray",click_event:{action: "run_command",command:"/scoreboard players set never_show firework_settings 1"}}

function firework:gu/zzz/load

scoreboard objectives remove temp

scoreboard objectives add firework_discount dummy
scoreboard objectives add rainbow dummy
scoreboard objectives add firework_settings dummy
scoreboard objectives add C dummy
scoreboard objectives add temp dummy
scoreboard objectives add rings dummy
scoreboard objectives add ray_life dummy
scoreboard objectives add ray_settings dummy
scoreboard objectives add ray_speed dummy
scoreboard objectives add firework_ray.offset_x dummy
scoreboard objectives add firework_ray.offset_y dummy
scoreboard objectives add line dummy
scoreboard objectives add line_length dummy
scoreboard objectives add line_delta dummy
scoreboard objectives add line_steps dummy
scoreboard objectives add math dummy
scoreboard objectives add ball dummy
#scoreboard objectives add ball_angle dummy

scoreboard players set @a firework_settings 0
scoreboard players set R rainbow 0
scoreboard players set G rainbow 0
scoreboard players set B rainbow 0
scoreboard players set i rainbow 0
scoreboard players set ran_type temp -1
scoreboard players set falling_block_type temp 0
scoreboard players set steps rings -1
scoreboard players set angle rings 0
scoreboard players set distance rings 1
scoreboard players set speed ray_settings -1
scoreboard players set lifetime ray_settings -1
scoreboard players set offset_x ray_settings 0
scoreboard players set offset_y ray_settings 0
scoreboard players set steps line -1

scoreboard players set 31 C 31
scoreboard players set -1 C -1
scoreboard players set 1000 C 1000
scoreboard players set 6 C 6
scoreboard players set 360 C 360
scoreboard players set 2 C 2

data modify storage firework:color tag set value ""
data modify storage firework:ray UUID set value ""
data modify storage firework:ray tag set value "NULL"
data modify storage firework:line poz_x set value ""
data modify storage firework:line poz_y set value ""
data modify storage firework:line poz_z set value ""