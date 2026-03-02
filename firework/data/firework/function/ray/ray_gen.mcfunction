$summon armor_stand ~ ~ ~ {Tags:["ray",$(tag)],NoGravity:1b,Invisible:1b,Marker:1b}
$scoreboard players set @n[type=armor_stand,tag=ray] ray_life $(lifetime)
$scoreboard players set @n[type=armor_stand,tag=ray] ray_speed $(Speed)
$scoreboard players set @n[type=armor_stand,tag=ray] firework_ray.offset_x $(offset_x)
$scoreboard players set @n[type=armor_stand,tag=ray] firework_ray.offset_y $(offset_y)

data modify storage firework:ray Target set value ""