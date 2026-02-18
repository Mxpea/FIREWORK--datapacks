tellraw @a [{"text": "Firework Loaded!   ","color":"green"},{"text": "now it's time!","color":"yellow"}]


scoreboard objectives add firework_discount dummy
scoreboard objectives add BPM dummy
scoreboard objectives add firework_settings trigger


scoreboard players set pokopoko BPM -1
scoreboard players set pokopoko firework_discount -1
scoreboard players set @a firework_settings 0
stopsound @a record fireworks:music.pokopoko