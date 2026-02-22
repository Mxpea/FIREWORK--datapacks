#Target使用UUID,as目标实体运行function: firework:tools/UUID_get 将自动传入 不传入视为无目标
$summon armor_stand ~ ~ ~ {Tags:["ray",$(tag)],NoGravity:1b,Invisible:1b,Marker:1b}
$scoreboard players set @n[type=armor_stand,tag=ray] ray_life $(lifetime)
$scoreboard players set @n[type=armor_stand,tag=ray] ray_speed $(Speed)
scoreboard players operation @n[type=armor_stand,tag=ray] firework_uuid.0 = UUID0 firework_uuid.temp
scoreboard players operation @n[type=armor_stand,tag=ray] firework_uuid.1 = UUID1 firework_uuid.temp
scoreboard players operation @n[type=armor_stand,tag=ray] firework_uuid.2 = UUID2 firework_uuid.temp
scoreboard players operation @n[type=armor_stand,tag=ray] firework_uuid.3 = UUID3 firework_uuid.temp
data modify storage firework:ray Target set value ""