tag @p add nearest
function mot:poz

execute as @s at @s store result entity @s Motion[0] double 0.00005 run scoreboard players get @p x2
execute as @s at @s store result entity @s Motion[1] double 0.00005 run scoreboard players get @p y2
execute as @s at @s store result entity @s Motion[2] double 0.00005 run scoreboard players get @p z2
tag @s remove mot_slow