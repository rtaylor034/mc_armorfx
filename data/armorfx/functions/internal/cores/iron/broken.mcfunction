#> armorfx:internal/cores/iron/broken
#--------------------
# ./hurt
#--------------------

data modify storage armorfx:var iron.time set from storage armorfx:settings iron.full_cooldown
function armorfx:internal/cores/iron/starttime with entity @s

execute if entity @s[tag=_armorfx-iron.shielded] run playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 0.3 0.8
execute if entity @s[tag=_armorfx-iron.shielded] run playsound block.chain.place player @a ~ ~ ~ 0.6 0.8

tag @s remove _armorfx-iron.shielded