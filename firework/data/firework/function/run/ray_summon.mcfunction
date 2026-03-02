# 射线效果入口：检查参数、写入 storage，并调用射线生成器
# 参数未设置时给出可点击提示
execute unless score never_show_ray firework_settings matches 1 if score speed ray_settings matches -1 run tellraw @a [{text:"你没有设置射线速度 此处数据*0.01  ",color:"red"},{text:"[点击此处设置]",color:"aqua",click_event:{action: "suggest_command",command:"/scoreboard players set speed ray_settings "}}]
execute unless score never_show_ray firework_settings matches 1 if score lifetime ray_settings matches -1 run tellraw @a [{text:"你没有设置射线寿命 此处数据不变  ",color:"red"},{text:"[点击此处设置]",color:"aqua",click_event:{action: "suggest_command",command:"/scoreboard players set lifetime ray_settings "}}]
execute unless score never_show_ray firework_settings matches 1 run tellraw @a [{text:"[点击此处设置x偏移]",color:"gold",click_event:{action: "suggest_command",command:"/scoreboard players set offset_x ray_settings "}},{text:"   [点击此处设置y偏移]",color:"gold",click_event:{action: "suggest_command",command:"/scoreboard players set offset_y ray_settings "}}]
execute unless score never_show_ray firework_settings matches 1 if score speed ray_settings matches -1 if score lifetime ray_settings matches -1 run tellraw @a [{text:"[点击此处不再显示]",color:"gray",click_event:{action: "run_command",command:"/scoreboard players set never_show_ray firework_settings 1"}}]

# 关键参数缺失时中止
execute if score speed ray_settings matches -1 run return fail
execute if score lifetime ray_settings matches -1 run return fail

# 读取记分板参数到 storage，供 ray_gen 使用
execute store result storage firework:ray Speed int 1 run scoreboard players get speed ray_settings
execute store result storage firework:ray lifetime int 1 run scoreboard players get lifetime ray_settings
execute store result storage firework:ray offset_x int 1 run scoreboard players get offset_x ray_settings
execute store result storage firework:ray offset_y int 1 run scoreboard players get offset_y ray_settings

#传入运行命令
data modify storage firework:ray command set value "particle end_rod"

function firework:ray/ray_gen with storage firework:ray