#传入line $(command)
$execute at @s positioned ^ ^ ^$(line_length) run $(command)
scoreboard players operation length1 line_length -= @s line_delta
execute store result storage firework:line line_length float 0.001 run scoreboard players get length1 line_length

scoreboard players remove @s line_steps 1
execute if score @s line_steps matches ..0 run return 1
execute if score @s line_steps matches 0.. run function firework:line/line_step with storage firework:line