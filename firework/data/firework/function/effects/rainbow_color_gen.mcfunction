
scoreboard players add i rainbow 1000
execute if score i rainbow matches 32000 run scoreboard players set i rainbow 0
scoreboard players operation t rainbow = i rainbow
scoreboard players operation t rainbow /= 31 C
scoreboard players operation h rainbow = t rainbow
scoreboard players operation h rainbow *= 6 C
scoreboard players operation n rainbow = h rainbow
scoreboard players operation n rainbow /= 1000 C
scoreboard players operation f rainbow = n rainbow
scoreboard players operation f rainbow *= 1000 C
scoreboard players operation f rainbow -= h rainbow
scoreboard players operation f rainbow *= -1 C

execute if score n rainbow matches 0 run scoreboard players set R rainbow 1000
execute if score n rainbow matches 0 run scoreboard players operation G rainbow = f rainbow
execute if score n rainbow matches 0 run scoreboard players set B rainbow 0

execute if score n rainbow matches 1 run scoreboard players set R rainbow 1000
execute if score n rainbow matches 1 run scoreboard players operation R rainbow -= f rainbow
execute if score n rainbow matches 1 run scoreboard players set G rainbow 1000
execute if score n rainbow matches 1 run scoreboard players set B rainbow 0

execute if score n rainbow matches 2 run scoreboard players set R rainbow 0
execute if score n rainbow matches 2 run scoreboard players set G rainbow 1000
execute if score n rainbow matches 2 run scoreboard players operation B rainbow = f rainbow

execute if score n rainbow matches 3 run scoreboard players set R rainbow 0
execute if score n rainbow matches 3 run scoreboard players set G rainbow 1000
execute if score n rainbow matches 3 run scoreboard players operation G rainbow -= f rainbow
execute if score n rainbow matches 3 run scoreboard players set B rainbow 1000

execute if score n rainbow matches 4 run scoreboard players operation R rainbow = f rainbow
execute if score n rainbow matches 4 run scoreboard players set G rainbow 0
execute if score n rainbow matches 4 run scoreboard players set B rainbow 1000

execute if score n rainbow matches 5 run scoreboard players set R rainbow 1000
execute if score n rainbow matches 5 run scoreboard players set G rainbow 0
execute if score n rainbow matches 5 run scoreboard players set B rainbow 1000
execute if score n rainbow matches 5 run scoreboard players operation B rainbow -= f rainbow