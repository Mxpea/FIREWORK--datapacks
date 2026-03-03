execute if score steps1 ball matches ..0 run kill @s
execute if score steps1 ball matches ..0 run return 1
scoreboard players remove steps1 ball 1

scoreboard players operation steps1 rings = steps ball
$execute positioned ~ $(y) ~ run summon armor_stand ~ ~ ~ {Tags:["center"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
$execute positioned ~ $(y) ~ run function firework:effects/ring/poz with storage firework:ring
function firework:ball/math with storage firework:ball