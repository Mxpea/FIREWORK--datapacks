$data modify storage firework:temp UUID insert 0 value $(UUID0)
$data modify storage firework:temp UUID insert 1 value $(UUID1)
$data modify storage firework:temp UUID insert 2 value $(UUID2)
$data modify storage firework:temp UUID insert 3 value $(UUID3)
function firework:gu/convert with storage firework:temp
function firework:ray/ray_step_facing with storage firework:ray