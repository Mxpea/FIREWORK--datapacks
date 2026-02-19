function firework:letters/extra
tellraw @a [{"text": "FIREWORK! ","color":"gold",bold: true,italic: true},{"text": "datapack","color":"green"},{"text": " by ","color":"white"},{"text": "Aurelith/Mxpea","color":"yellow"},{"text": " | ","color":"white"},{"text": "[Github]","color":"aqua", click_event:{action: "open_url",url: "https://github.com/Mxpea"}}]

scoreboard objectives remove temp

scoreboard objectives add firework_discount dummy
scoreboard objectives add rainbow dummy
scoreboard objectives add firework_settings trigger
scoreboard objectives add C dummy
scoreboard objectives add temp dummy
scoreboard objectives add rings dummy

scoreboard players set pokopoko firework_discount -1
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

scoreboard players set 31 C 31
scoreboard players set -1 C -1
scoreboard players set 1000 C 1000
scoreboard players set 6 C 6
scoreboard players set 360 C 360

data modify storage firework:color tag set value ""