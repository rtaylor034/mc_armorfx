#> armorfx:internal/cores/golden/pickup_tag
#--------------------
# ./main.1
#--------------------

tag @s add _armorfx-golden.item
data modify storage armorfx:var golden.call.in.b set from entity @s Pos

function gssen:api/vector/space/distance with storage armorfx:var golden.call

data modify storage armorfx:var golden.distances append value {distance:0}
data modify storage armorfx:var golden.distances[-1].distance set from storage gssen:out distance.result
