#> armorfx:internal/cores/golden/as_pickup
#--------------------
# ./main.1
#--------------------

data modify storage gssen:in distance.in.a set from storage armorfx:var golden.player_pos
execute at @s run data modify storage gssen:in distance.in.b set from entity @s Pos
function gssen:api/vector/space/distance with storage gssen:in distance

data modify storage armorfx:var golden.item_distance set from storage gssen:out distance.result

function armorfx:internal/cores/golden/as_pickup.1 with storage armorfx:var golden