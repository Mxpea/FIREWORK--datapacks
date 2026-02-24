#传入line
$execute at @s positioned ^ ^ ^$(length) run $(command)
scoreboard players operation @s line_length -= @s line_delta
execute if score @s line_steps matches ..0 run return 1
execute if score @s line_steps matches 0.. run function firework:line/line_step with storage firework:line