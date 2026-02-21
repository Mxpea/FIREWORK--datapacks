
execute store result score ran_type temp run random value 1..9

execute if score ran_type temp matches 1 run data modify storage firework:color type set value "_concrete"
execute if score ran_type temp matches 2 run data modify storage firework:color type set value "_concrete_powder"
execute if score ran_type temp matches 3 run data modify storage firework:color type set value "_wool"
execute if score ran_type temp matches 4 run data modify storage firework:color type set value "_terracotta"
execute if score ran_type temp matches 5 run data modify storage firework:color type set value "_carpet"
execute if score ran_type temp matches 6 run data modify storage firework:color type set value "_stained_glass"
execute if score ran_type temp matches 7 run data modify storage firework:color type set value "_stained_glass_pane"
execute if score ran_type temp matches 8 run data modify storage firework:color type set value "_candle"
execute if score ran_type temp matches 9 run data modify storage firework:color type set value "_glazed_terracotta"