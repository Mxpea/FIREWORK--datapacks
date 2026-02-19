execute store result storage firework:temp ran_type int 1 run random value 0..1
execute if score ran_type temp matches 0 run data modify storage firework:firework_effects twinkle set value 0b
execute if score ran_type temp matches 1 run data modify storage firework:firework_effects twinkle set value 1b