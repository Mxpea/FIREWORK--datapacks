execute store result score ran_type temp run random value 0..1
execute if score ran_type temp matches 0 run data modify storage firework:firework_effects trail set value 0b
execute if score ran_type temp matches 1 run data modify storage firework:firework_effects trail set value 1b