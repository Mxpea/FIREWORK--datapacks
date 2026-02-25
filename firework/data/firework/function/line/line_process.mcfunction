execute store result score @s temp run data get entity @s Pos[0] 1000
scoreboard players operation @s temp -= poz_x temp
scoreboard players operation dx line_length = @s temp
execute store result score @s temp run data get entity @s Pos[1] 1000
scoreboard players operation @s temp -= poz_y temp
scoreboard players operation dy line_length = @s temp
execute store result score @s temp run data get entity @s Pos[2] 1000
scoreboard players operation @s temp -= poz_z temp
scoreboard players operation dz line_length = @s temp

scoreboard players operation dx line_length *= dx line_length
scoreboard players operation dy line_length *= dy line_length
scoreboard players operation dz line_length *= dz line_length
scoreboard players operation length line_length = dx line_length
scoreboard players operation length line_length += dy line_length
scoreboard players operation length line_length += dz line_length
execute store result storage firework:math sr_input float 0.000001 run scoreboard players get length line_length
function firework:math/square_root with storage firework:math
execute store result score length line_length run data get storage firework:math sr_output 1000

scoreboard players operation @s line_delta = length line_length
scoreboard players operation @s line_delta /= steps line
execute store result storage firework:line line_length float 0.001 run scoreboard players get @s line_delta

scoreboard players operation @s line_steps = steps line
scoreboard players operation length1 line_length = length line_length
#function firework:line/line_step with storage firework:line
$execute as @s at @s facing $(poz_x) $(poz_y) $(poz_z) run tp @s ~ ~ ~ ~ ~
function firework:line/line_step with storage firework:line
tag @s remove start_line