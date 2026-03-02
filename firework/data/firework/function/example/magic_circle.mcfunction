scoreboard players set steps rings 300
scoreboard players set distance rings 10
data modify storage firework:ring command set value "function firework:run/ran_dust"
function firework:effects/ring/math
scoreboard players set steps rings 200
scoreboard players set distance rings 3
data modify storage firework:ring command set value "function firework:run/ran_dust"
function firework:effects/ring/math
summon armor_stand ~ ~ ~ {Tags:["mag_center"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
execute as @e[type=armor_stand,tag=mag_center] at @s run summon armor_stand ^ ^ ^10 {Tags:["mag_1"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
execute as @e[type=armor_stand,tag=mag_center] at @s run tp @s ~ ~ ~ ~72 ~
execute as @e[type=armor_stand,tag=mag_center] at @s run summon armor_stand ^ ^ ^10 {Tags:["mag_2"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
execute as @e[type=armor_stand,tag=mag_center] at @s run tp @s ~ ~ ~ ~72 ~
execute as @e[type=armor_stand,tag=mag_center] at @s run summon armor_stand ^ ^ ^10 {Tags:["mag_3"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
execute as @e[type=armor_stand,tag=mag_center] at @s run tp @s ~ ~ ~ ~72 ~
execute as @e[type=armor_stand,tag=mag_center] at @s run summon armor_stand ^ ^ ^10 {Tags:["mag_4"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
execute as @e[type=armor_stand,tag=mag_center] at @s run tp @s ~ ~ ~ ~72 ~
execute as @e[type=armor_stand,tag=mag_center] at @s run summon armor_stand ^ ^ ^10 {Tags:["mag_5"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
execute as @e[type=armor_stand,tag=mag_center] at @s run tp @s ~ ~ ~ ~72 ~

scoreboard players set steps line 100

data modify storage firework:line command set value "function firework:run/ran_dust"
execute as @e[type=armor_stand,tag=mag_1] at @s run function firework:tools/poz_get
execute as @e[type=armor_stand,tag=mag_4] at @s run function firework:line/line_gen

execute as @e[type=armor_stand,tag=mag_2] at @s run function firework:tools/poz_get
execute as @e[type=armor_stand,tag=mag_5] at @s run function firework:line/line_gen

execute as @e[type=armor_stand,tag=mag_3] at @s run function firework:tools/poz_get
execute as @e[type=armor_stand,tag=mag_1] at @s run function firework:line/line_gen

execute as @e[type=armor_stand,tag=mag_4] at @s run function firework:tools/poz_get
execute as @e[type=armor_stand,tag=mag_2] at @s run function firework:line/line_gen

execute as @e[type=armor_stand,tag=mag_5] at @s run function firework:tools/poz_get
execute as @e[type=armor_stand,tag=mag_3] at @s run function firework:line/line_gen
kill @e[type=armor_stand,tag=mag_center]
kill @e[type=armor_stand,tag=mag_1]
kill @e[type=armor_stand,tag=mag_2]
kill @e[type=armor_stand,tag=mag_3]
kill @e[type=armor_stand,tag=mag_4]
kill @e[type=armor_stand,tag=mag_5]