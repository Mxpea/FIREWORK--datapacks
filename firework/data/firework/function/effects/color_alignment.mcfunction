#用于不改变颜色的dust粒子,先更改from_color,再运行此函数
execute store result storage firework:temp random_color_R_to float 1 run data get storage firework:temp random_color_R_from 1
execute store result storage firework:temp random_color_G_to float 1 run data get storage firework:temp random_color_G_from 1
execute store result storage firework:temp random_color_B_to float 1 run data get storage firework:temp random_color_B_from 1