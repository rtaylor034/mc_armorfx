#>armorfx:settings

#declare storage armorfx:settings
#>-------------------
#> armor.sets
#-------------------
#~ defines attributes for sets of armor
#-------------------
# ...
#-------------------
# DEFAULT: 
#-------------------
data modify storage armorfx:settings armor.sets set value []
data modify storage armorfx:settings armor.sets append value {parts:[{id:"leather_boots"},{id:"leather_leggings"},{id:"leather_chestplate"},{id:"leather_helmet"}], attributes:[{name:"generic.movement_speed", unit:.2,operation:1}]}
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
data modify storage armorfx:settings armor.part_multipliers set value {chestplate:1, leggings: 0.7, boots: 0.4, helmet: 0.55}
#>-------------------