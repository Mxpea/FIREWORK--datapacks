

$execute as @s at @s run tp @s ~ ~ ~ ~$(dx) ~$(dy)
$execute as @s at @s run tp @s ^ ^ ^$(stepl) 

$execute as @s at @s facing $(poz_x) $(poz_y) $(poz_z) run tp @s ^ ^ ^$(att)
$execute as @s at @s run $(command)



#$execute as @s at @s facing $(poz_x) $(poz_y) $(poz_z) run tp ^ ^ ^$(att) }]
$execute positioned $(poz_x) $(poz_y) $(poz_z) if entity @s[distance=..$(attrack2)] run tp @s $(poz_x) $(poz_y) $(poz_z)
$execute positioned $(poz_x) $(poz_y) $(poz_z) if entity @s[distance=..$(attrack2)] run kill @s
$execute positioned $(poz_x) $(poz_y) $(poz_z) if entity @s[distance=..$(attrack2)] run return 1
function firework:lightning/lig_main with storage firework:lig
