tellraw @a [{"text": "Firework Loaded!   ","color":"green"},{"text": "now it's time!","color":"yellow"}]


scoreboard objectives add firework_discount dummy
scoreboard objectives add BPM dummy
scoreboard objectives add rainbow dummy
scoreboard objectives add firework_settings trigger
scoreboard objectives add C dummy

scoreboard players set pokopoko BPM -1
scoreboard players set pokopoko firework_discount -1
scoreboard players set @a firework_settings 0
scoreboard players set R rainbow 0
scoreboard players set G rainbow 0
scoreboard players set B rainbow 0
scoreboard players set i rainbow 0
scoreboard players set 31 C 31
scoreboard players set 1000 C 1000
scoreboard players set 6 C 6
scoreboard players set -1 C -1
stopsound @a record fireworks:music.pokopoko