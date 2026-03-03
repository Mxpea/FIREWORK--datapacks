#必须参数:distance / steps command(因为复用ring所以往ring里面传就行,其他地方调用请往计分板里面写)
# 效果入口：检查步数配置等并调用生成
execute unless score never_show_ball firework_settings matches 1 if score steps ball matches -1 run tellraw @a [{text:"你没有设置球型步数 此处数据不变  ",color:"red"},{text:"[点击此处设置]",color:"aqua",click_event:{action: "suggest_command",command:"/scoreboard players set steps ball "}}]
execute unless score never_show_ball firework_settings matches 1 if score distance ball matches -1 run tellraw @a [{text:"你没有设置球型半径 此处数据*0.1  ",color:"red"},{text:"[点击此处设置]",color:"aqua",click_event:{action: "suggest_command",command:"/scoreboard players set distance ball "}}]
execute unless score never_show_ball firework_settings matches 1 run tellraw @a [{text:"[点击此处不再显示]",color:"gray",click_event:{action: "run_command",command:"/scoreboard players set never_show_ball firework_settings 1"}},{"text": "  注意:因为指令执行次数上限,请不要填入大于65的步数",color:"yellow"}]
# 未设置时中止
execute if score steps ball matches -1 run return fail
execute if score distance ball matches -1 run return fail

data modify storage firework:ring command set value "particle minecraft:end_rod"
function firework:ball/ball_gen