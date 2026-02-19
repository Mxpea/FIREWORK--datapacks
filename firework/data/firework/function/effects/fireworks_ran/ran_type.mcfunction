execute store result score ran_type temp run random value 1..5
execute if score ran_type temp matches 1 run data modify storage firework:firework_effects shape set value "small_ball"
execute if score ran_type temp matches 2 run data modify storage firework:firework_effects shape set value "large_ball"
execute if score ran_type temp matches 3 run data modify storage firework:firework_effects shape set value "creeper"
execute if score ran_type temp matches 4 run data modify storage firework:firework_effects shape set value "star"
execute if score ran_type temp matches 5 run data modify storage firework:firework_effects shape set value "burst"