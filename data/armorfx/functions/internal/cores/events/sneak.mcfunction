#> armorfx:internal/cores/events/sneak
#--------------------
# @ADVANCEMENT : internal/sneak
#--------------------

data remove storage armorfx:var cores
data modify storage armorfx:var cores.item set from entity @s Inventory[{Slot:102b}]
execute unless data storage armorfx:var cores.item run return 0

advancement revoke @s only armorfx:internal/unsneak