# 彩虹粒子入口：先取颜色，再按 storage 参数生成
function firework:effects/rainbow/ranbow_color_get
#data modify storage firework:temp count set value 1
#data modify storage firework:temp pixel_size set value 0
#data modify storage firework:temp pixel_scale set value 1
function firework:effects/rainbow/rainbow_par_summon with storage firework:temp