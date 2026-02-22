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
scoreboard objectives add firework_uuid.1 dummy
scoreboard objectives add firework_uuid.2 dummy
scoreboard objectives add firework_uuid.3 dummy

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

scoreboard players set 31 C 31
scoreboard players set -1 C -1
scoreboard players set 1000 C 1000
scoreboard players set 6 C 6
scoreboard players set 360 C 360

data modify storage firework:color tag set value ""
data modify storage firework:ray UUID set value ""
data modify storage firework:ray tag set value "NULL"