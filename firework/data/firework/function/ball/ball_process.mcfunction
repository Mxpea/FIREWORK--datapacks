
execute if score steps1 ball matches ..0 run kill @e[type=armor_stand,tag=ball_poz]
execute if score steps1 ball matches ..0 run kill @s
execute if score steps1 ball matches ..0 run return 1
scoreboard players remove steps1 ball 1

$execute positioned ~ $(y) ~ run function firework:effects/ring/math
function firework:effects/ring/math
function firework:ball/math with storage firework:ball