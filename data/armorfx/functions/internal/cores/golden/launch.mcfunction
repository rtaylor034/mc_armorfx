#> armorfx:internal/cores/golden/launch
#--------------------
# ./as_pickup.1
#--------------------

execute as @p run data modify storage gssen:in negate.in.vector set from entity @s Rotation
function gssen:api/vector/rotation/negate with storage gssen:in negate

data modify storage gssen:in to_space.in.vector set from storage gssen:out negate.result
data modify storage gssen:in to_space.in.magnitude set from storage gssen:var golden.item_distance
function gssen:api/vector/rotation/to_space with storage gssen:in to_space

data modify entity @s Motion set from storage gssen:out to_space.result
data merge entity @s {PickupDelay:0s}

# NOT GOOD, REIMPLEMENT PLEASE YES