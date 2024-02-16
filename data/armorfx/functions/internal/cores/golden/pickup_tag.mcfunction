#> armorfx:internal/cores/golden/pickup_tag
#--------------------
# ./main.1
#--------------------

tag @s add _armorfx-golden.item
data modify storage armorfx:var golden.call.in.b set from entity @s Pos

data modify storage gssen:in distance set from storage armorfx:var golden.call.in
function gssen:api/vector/space/distance

data modify storage armorfx:var golden.distances append value {distance:0}
data modify storage armorfx:var golden.distances[-1].distance set from storage gssen:out distance.result
