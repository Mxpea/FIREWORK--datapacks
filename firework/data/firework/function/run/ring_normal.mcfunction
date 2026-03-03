execute if score steps rings matches ..0 unless score ignore_ring_warning firework_settings matches 1 run tellraw @a [{"text":"步数数据非法，你需要先指定步数！","color":"red"}]
execute if score steps rings matches ..0 unless score ignore_ring_warning firework_settings matches 1 run tellraw @a [{text:"[点击这里设置步数]    ",color:"yellow",click_event:{action: "suggest_command",command:"/scoreboard players set steps rings "}},{text:"[不再显示]",color:"gray",click_event: {action: "run_command", command:"/scoreboard players set ignore_ring_warning firework_settings 1"}}]
# 普通圆环：将环形每步命令设置为 end_rod 粒子
data modify storage firework:ring command set value "particle minecraft:end_rod"
# 调用 ring 计算流程执行圆环绘制
function firework:effects/ring/math