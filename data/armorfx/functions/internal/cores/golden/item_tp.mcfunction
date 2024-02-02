#> armorfx:internal/cores/golden/item_tp
#--------------------
# ./each_distance
#--------------------

tp @s @a[tag=_armorfx-golden.player,limit=1]
data merge entity @s {PickupDelay:0s}

tag @s remove _armorfx-golden.item