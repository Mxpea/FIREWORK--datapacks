# 彩虹圆环：将环形每步命令设置为调用 run/rainbow
data modify storage firework:ring command set value "function firework:run/rainbow"
# 调用 ring 计算流程执行圆环绘制
function firework:effects/ring/math