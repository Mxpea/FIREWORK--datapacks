#必须参数:distance / steps command(因为复用ring所以往ring里面传就行,其他地方调用请往计分板里面写)

data modify storage firework:ring command set value "particle minecraft:end_rod"
function firework:ball/ball_gen