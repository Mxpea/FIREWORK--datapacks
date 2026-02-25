#记得传入参数storge firework:ring
execute if score steps1 rings matches ..0 run tellraw @a [{"text":"Invalid steps value!","color":"red"}]
execute if score steps1 rings matches ..0 run return fail


$execute as @e[type=armor_stand,tag=center] at @s positioned ^ ^ ^$(distance) run $(command)
$execute as @e[type=armor_stand,tag=center] at @s run tp @s ~ ~ ~ ~$(angle) ~
scoreboard players remove steps1 rings 1
execute if score steps1 rings matches 1.. run function firework:effects/ring/poz with storage firework:ring
execute if score steps1 rings matches 0 run kill @e[type=armor_stand,tag=center]