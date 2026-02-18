# Row 0 (Y=4): X = 1,2,3
data modify storage firework:temp pixel_Y set value 4
data modify storage firework:temp pixel_X set value 1
function firework:pixel_square/pixel_gen with storage firework:temp
data modify storage firework:temp pixel_X set value 2
function firework:pixel_square/pixel_gen with storage firework:temp
data modify storage firework:temp pixel_X set value 3
function firework:pixel_square/pixel_gen with storage firework:temp

# Row 1 (Y=3): X = 0,4
data modify storage firework:temp pixel_Y set value 3
data modify storage firework:temp pixel_X set value 0
function firework:pixel_square/pixel_gen with storage firework:temp
data modify storage firework:temp pixel_X set value 4
function firework:pixel_square/pixel_gen with storage firework:temp

# Row 2 (Y=2): X = 0,4
data modify storage firework:temp pixel_Y set value 2
data modify storage firework:temp pixel_X set value 0
function firework:pixel_square/pixel_gen with storage firework:temp
data modify storage firework:temp pixel_X set value 4
function firework:pixel_square/pixel_gen with storage firework:temp

# Row 3 (Y=1): X = 0,4
data modify storage firework:temp pixel_Y set value 1
data modify storage firework:temp pixel_X set value 0
function firework:pixel_square/pixel_gen with storage firework:temp
data modify storage firework:temp pixel_X set value 4
function firework:pixel_square/pixel_gen with storage firework:temp

# Row 4 (Y=0): X = 1,2,3,4 (bottom + tail)
data modify storage firework:temp pixel_Y set value 0
data modify storage firework:temp pixel_X set value 1
function firework:pixel_square/pixel_gen with storage firework:temp
data modify storage firework:temp pixel_X set value 2
function firework:pixel_square/pixel_gen with storage firework:temp
data modify storage firework:temp pixel_X set value 3
function firework:pixel_square/pixel_gen with storage firework:temp
data modify storage firework:temp pixel_X set value 4
function firework:pixel_square/pixel_gen with storage firework:temp