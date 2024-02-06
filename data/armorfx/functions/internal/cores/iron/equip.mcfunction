#> armorfx:internal/cores/iron/equip
#--------------------
# cores/events/equip
#--------------------

data modify storage armorfx:var iron.time set from storage armorfx:settings iron.full_cooldown
function armorfx:internal/cores/iron/starttime with entity @s

data remove storage armorfx:var iron