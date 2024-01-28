#>armorfx:settings

#declare storage armorfx:settings
#>-------------------
#> armor.sets
#-------------------
#~ defines attributes for sets of armor
#-------------------
# - 'operation' is the operation-text in the 'attribute' command (add|multiply|multiply_base)
#-------------------
# DEFAULT: 
#-------------------
data modify storage armorfx:settings armor.sets set value []
data modify storage armorfx:settings armor.sets append value {parts:{boots:"leather_boots",leggings:"leather_leggings",chestplate:"leather_chestplate",helmet:"leather_helmet"}, attributes:[{name:"generic.movement_speed", unit:.025,operation:"multiply_base"}]}
#>-------------------

#>-------------------
#> armor.part_multipliers
#-------------------
#~ defines attributes for sets of armor
#-------------------
# ...
#-------------------
# DEFAULT: 
#-------------------
data modify storage armorfx:settings armor.part_multipliers set value {chestplate:8, leggings: 7, boots: 4, helmet: 5}
#>-------------------

function armorfx:internal/cache/generate