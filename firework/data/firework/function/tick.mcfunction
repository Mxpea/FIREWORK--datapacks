function firework:effects/rainbow/rainbow_color_gen
function firework:tick/rainbow_tail
function firework:tick/rainbow_fallingblock
execute as @a[tag=set_poz] at @s run function firework:tools/poz_get
execute as @e[type=armor_stand,tag=ray] at @s run function firework:tick/ray_process with storage firework:ray

tag @a remove set_poz