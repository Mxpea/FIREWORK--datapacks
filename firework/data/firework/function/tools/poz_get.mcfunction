execute store result score poz_x temp run data get entity @s Pos[0] 1000
execute store result score poz_y temp run data get entity @s Pos[1] 1000
execute store result score poz_z temp run data get entity @s Pos[2] 1000
data modify storage firework:line poz_x set from entity @s Pos[0]
data modify storage firework:line poz_y set from entity @s Pos[1]
data modify storage firework:line poz_z set from entity @s Pos[2]