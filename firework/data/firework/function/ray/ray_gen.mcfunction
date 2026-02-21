#Target使用UUID,as目标实体运行function: firework:tools/UUID_get 将自动传入 不传入视为无目标
$summon armor_stand ~ ~ ~ {Tags:["ray",$(tag)],NoGravity:1b,Invisible:1b,Marker:1b,Target:"$(Target)",Speed:"$(Speed)"}
$scoreboard players set @e[type=armor_stand,tag=ray,limit=1,sort=nearest] ray_life $(lifetime)
data modify storage firework:ray Target set value ""