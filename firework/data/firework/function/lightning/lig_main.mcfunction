
$execute store result score dx lightning run random value -$(delta)..$(delta)
$execute store result score dy lightning run random value -$(delta)..$(delta)
#$execute store result score dz lightning run random value -$(delta)..$(delta)



execute store result storage firework:lig dx int 1 run scoreboard players get dx lightning
execute store result storage firework:lig dy int 1 run scoreboard players get dy lightning

#$execute positioned $(poz_x) $(poz_y) $(poz_z) if entity @s[distance=..$(attrack2)] run kill @s

scoreboard players remove steps lightning 1
execute if score steps lightning matches ..0 run kill @s
execute if score steps lightning matches ..0 run return 1

function firework:lightning/lig_branch with storage firework:lig