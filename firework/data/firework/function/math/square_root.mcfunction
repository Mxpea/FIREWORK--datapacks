 #牛顿迭代法初始值
execute store result storage firework:math sr_input float 100 run data get storage firework:math sr_input
execute store result score sr_input math run data get storage firework:math sr_input
execute store result score sr_temp.1 math run data get storage firework:math sr_input

scoreboard players operation sr_temp.1 math /= 2 C

 #迭代10次
scoreboard players set sr_temp.0 math 2
#scoreboard players operation sr_temp.0 math /= sr_temp.1 math
scoreboard players operation sr_temp.1 math += sr_temp.0 math
scoreboard players operation sr_temp.1 math /= 2 C
scoreboard players operation sr_temp.0 math = sr_input math

scoreboard players operation sr_temp.0 math /= sr_temp.1 math
scoreboard players operation sr_temp.1 math += sr_temp.0 math
scoreboard players operation sr_temp.1 math /= 2 C
scoreboard players operation sr_temp.0 math = sr_input math

scoreboard players operation sr_temp.0 math /= sr_temp.1 math
scoreboard players operation sr_temp.1 math += sr_temp.0 math
scoreboard players operation sr_temp.1 math /= 2 C
scoreboard players operation sr_temp.0 math = sr_input math

scoreboard players operation sr_temp.0 math /= sr_temp.1 math
scoreboard players operation sr_temp.1 math += sr_temp.0 math
scoreboard players operation sr_temp.1 math /= 2 C
scoreboard players operation sr_temp.0 math = sr_input math

scoreboard players operation sr_temp.0 math /= sr_temp.1 math
scoreboard players operation sr_temp.1 math += sr_temp.0 math
scoreboard players operation sr_temp.1 math /= 2 C
scoreboard players operation sr_temp.0 math = sr_input math

scoreboard players operation sr_temp.0 math /= sr_temp.1 math
scoreboard players operation sr_temp.1 math += sr_temp.0 math
scoreboard players operation sr_temp.1 math /= 2 C
scoreboard players operation sr_temp.0 math = sr_input math

scoreboard players operation sr_temp.0 math /= sr_temp.1 math
scoreboard players operation sr_temp.1 math += sr_temp.0 math
scoreboard players operation sr_temp.1 math /= 2 C
scoreboard players operation sr_temp.0 math = sr_input math

scoreboard players operation sr_temp.0 math /= sr_temp.1 math
scoreboard players operation sr_temp.1 math += sr_temp.0 math
scoreboard players operation sr_temp.1 math /= 2 C
scoreboard players operation sr_temp.0 math = sr_input math

scoreboard players operation sr_temp.0 math /= sr_temp.1 math
scoreboard players operation sr_temp.1 math += sr_temp.0 math
scoreboard players operation sr_temp.1 math /= 2 C
scoreboard players operation sr_temp.0 math = sr_input math

scoreboard players operation sr_temp.0 math /= sr_temp.1 math
scoreboard players operation sr_temp.1 math += sr_temp.0 math
scoreboard players operation sr_temp.1 math /= 2 C
scoreboard players operation sr_temp.0 math = sr_input math

execute store result storage firework:math sr_output float 0.1 run scoreboard players get sr_temp.1 math
execute store result storage firework:math sr_input float 0.01 run data get storage firework:math sr_input