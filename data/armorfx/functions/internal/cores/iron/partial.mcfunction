#> armorfx:internal/cores/iron/partial
#--------------------
# ./hurt
#--------------------

data modify storage armorfx:var iron.time set from storage armorfx:settings iron.partial_cooldown
function armorfx:internal/cores/iron/starttime with entity @s

playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 0.2 1.6