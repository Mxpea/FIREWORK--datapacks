summon armor_stand ~ ~ ~ {Tags:["lig_main"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
scoreboard players operation steps lightning = maxstep lightning



$data modify storage firework:line command set value "$(command)"

execute store result storage firework:lig delta int 1 run scoreboard players get delta lightning

execute store result storage firework:lig stepl double 0.01 run scoreboard players get stepl lightning

execute store result storage firework:lig att double 0.01 run scoreboard players get attrack lightning

scoreboard players operation attrack2 lightning = attrack lightning
scoreboard players operation attrack2 lightning *= 2 C
execute store result storage firework:lig attrack2 double 0.01 run scoreboard players get attrack2 lightning
$execute as @n[type=armor_stand,tag=lig_main] at @s run tp @s ~ ~ ~ facing $(poz_x) $(poz_y) $(poz_z)
execute as @n[type=armor_stand,tag=lig_main] at @s run function firework:lightning/lig_main with storage firework:lig