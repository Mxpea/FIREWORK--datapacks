
execute as @s store result score @s x1 run data get entity @s Pos[0] 10000
execute as @s store result score @s y1 run data get entity @s Pos[1] 10000
execute as @s store result score @s z1 run data get entity @s Pos[2] 10000

execute as @s at @s facing entity @p eyes run summon minecraft:item_display ^ ^ ^5 {Tags:["motion"]}
execute as @s at @s store result score @s x2 run data get entity @e[limit=1,tag=motion,sort=nearest,distance=4.99..5.01,type=minecraft:item_display] Pos[0] 10000
execute as @s at @s store result score @s y2 run data get entity @e[limit=1,tag=motion,sort=nearest,distance=4.99..5.01,type=minecraft:item_display] Pos[1] 10000
execute as @s at @s store result score @s z2 run data get entity @e[limit=1,tag=motion,sort=nearest,distance=4.99..5.01,type=minecraft:item_display] Pos[2] 10000
execute as @s run scoreboard players operation @s x2 -= @s x1
execute as @s run scoreboard players operation @s y2 -= @s y1
execute as @s run scoreboard players operation @s z2 -= @s z1
kill @e[type=minecraft:item_display,tag=motion]
execute as @s at @s store result entity @s Motion[0] double 0.00002 run scoreboard players get @s x2
execute as @s at @s store result entity @s Motion[1] double 0.00002 run scoreboard players get @s y2
execute as @s at @s store result entity @s Motion[2] double 0.00002 run scoreboard players get @s z2
tag @e remove trace