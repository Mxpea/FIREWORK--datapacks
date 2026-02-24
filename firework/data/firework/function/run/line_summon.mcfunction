execute unless score never_show_line firework_settings matches 1 if score steps line matches -1 run tellraw @a [{text:"你没有设置线段步数 此处数据不变  ",color:"red"},{text:"[点击此处设置]",color:"aqua",click_event:{action: "suggest_command",command:"/scoreboard players set steps line "}}]
execute unless score never_show_line firework_settings matches 1 run tellraw @a [{text:"[设置当前坐标为线段终点]",color:"gold",click_event:{action: "suggest_command",command:"/tag @s add set_poz"}}]

execute store result storage firework:line steps int 1 run scoreboard players get steps line