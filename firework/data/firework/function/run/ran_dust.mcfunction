# 随机双配色 dust：初始化像素参数并生成粒子
data modify storage firework:temp pixel_size set value 0
data modify storage firework:temp pixel_scale set value 1

# 生成两组随机颜色后交给 ran_dust_gen 处理
function firework:effects/random_first_color
function firework:effects/random_second_color
function firework:effects/ran_dust_gen with storage firework:temp