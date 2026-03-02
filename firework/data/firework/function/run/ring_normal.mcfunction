# 普通圆环：将环形每步命令设置为 end_rod 粒子
data modify storage firework:ring command set value "particle minecraft:end_rod"
# 调用 ring 计算流程执行圆环绘制
function firework:effects/ring/math