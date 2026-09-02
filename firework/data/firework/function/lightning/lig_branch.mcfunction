

#$execute as @s at @s run tp @s ~ ~ ~ ~$(dx) ~$(dy)
#$execute as @s at @s run tp @s ^ ^ ^$(stepl) 

#execute as @s at @s run function firework:lightning/m_tp with storage firework:lig

$execute at @s positioned ^ ^ ^$(stepl) run tp @s ~ ~ ~ ~$(dx) ~$(dy)
$execute at @s facing $(poz_x) $(poz_y) $(poz_z) run tp @s ^ ^ ^$(att)
$execute at @s run $(command)



#$execute as @s at @s facing $(poz_x) $(poz_y) $(poz_z) run tp ^ ^ ^$(att) }]
#$execute positioned $(poz_x) $(poz_y) $(poz_z) if entity @s[distance=..$(attrack2)] run tp @s $(poz_x) $(poz_y) $(poz_z)

$execute positioned $(poz_x) $(poz_y) $(poz_z) if entity @s[distance=..$(attrack2)] as @s run kill @s
$execute positioned $(poz_x) $(poz_y) $(poz_z) if entity @s[distance=..$(attrack2)] run return 1

#$execute positioned $(poz_x) $(poz_y) $(poz_z) if entity @s[distance=..$(attrack2)] run function firework:lightning/m_end

function firework:lightning/lig_main with storage firework:lig
