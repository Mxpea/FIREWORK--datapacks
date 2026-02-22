#execute store result score UUID.0 firework_uuid.temp run data get entity @s UUID[0]
#execute store result score UUID.1 firework_uuid.temp run data get entity @s UUID[1]
#execute store result score UUID.2 firework_uuid.temp run data get entity @s UUID[2]
#execute store result score UUID.3 firework_uuid.temp run data get entity @s UUID[3]

#used for whole data pack
data modify storage firework:ray UUID set from entity @s UUID

#data modify storage firework:test UUID insert 0 value 1

function firework:gu/convert with storage firework:ray

execute unless score uuid_feedback firework_settings matches 1 run tellraw @a [{text:"已选中UUID: ",color:"yellow"},{storage: "firework:ray",nbt: UUID,color: "aqua"},{text:" 记得清除",color: "yellow"}]
execute unless score uuid_feedback firework_settings matches 1 run tellraw @a [{text:"[点击此处不再显示]",color:"gray",click_event:{action: "run_command",command:"/scoreboard players set uuid_feedback firework_settings 1"}}]