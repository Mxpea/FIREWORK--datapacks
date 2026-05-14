#必须参数:attrack/stepl/delta
# 如果吸引强度过低可能导致无法正常收敛，推荐吸引强度>步长
execute unless score never_lig firework_settings matches 1 if score attrack lightning matches -1 run tellraw @a [{text:"你没有设置吸引强度 此处数据*0.01  ",color:"red"},{text:"[点击此处设置]",color:"aqua",click_event:{action: "suggest_command",command:"/scoreboard players set attrack lightning "}}]
execute unless score never_lig firework_settings matches 1 if score stepl lightning matches -1 run tellraw @a [{text:"你没有设置步长 此处数据*0.01  ",color:"red"},{text:"[点击此处设置]",color:"aqua",click_event:{action: "suggest_command",command:"/scoreboard players set stepl lightning "}}]
execute unless score never_lig firework_settings matches 1 if score delta lightning matches -1 run tellraw @a [{text:"你没有设置随机范围 此处不变  ",color:"red"},{text:"[点击此处设置]",color:"aqua",click_event:{action: "suggest_command",command:"/scoreboard players set delta lightning "}}]
execute unless score never_show_line firework_settings matches 1 run tellraw @a [{text:"[设置当前坐标为闪电终点]",color:"gold",click_event:{action: "run_command",command:"/tag @s add set_poz"}}]
execute unless score never_lig firework_settings matches 1 run tellraw @a [{text:"[点击此处不再显示]",color:"gray",click_event:{action: "run_command",command:"/scoreboard players set never_lig firework_settings 1"}},{"text": "  ",color:"yellow"}]
# 未设置时中止
execute if score attrack lightning matches -1 run return fail
execute if score stepl lightning matches -1 run return fail

data modify storage firework:lig command set value "particle minecraft:end_rod ~ ~ ~ 0.01 0.01 0.01 0.01 1 force"
function firework:lightning/lig_prep with storage firework:lig