#> armorfx:internal/cores/golden/each_distance
#--------------------
# ./main
#--------------------

$execute positioned ^ ^ ^$(distance) as @e[type=item,tag=_armorfx-golden.item,distance=..1,sort=nearest] run function armorfx:internal/cores/golden/item_tp

data remove storage armorfx:var golden.distances[-1]
execute if data storage armorfx:var golden.distances[] anchored eyes run function armorfx:internal/cores/golden/each_distance with storage armorfx:var golden.distances[-1]