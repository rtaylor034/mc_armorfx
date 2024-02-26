#> armorfx:internal/cores/events/sneak
#--------------------
# @advancement : internal/sneak
#--------------------

advancement revoke @s only armorfx:internal/unsneak

data remove storage armorfx:var cores
data modify storage armorfx:var cores.item set from entity @s Inventory[{Slot:102b}]
execute unless data storage armorfx:var cores.item run return 0

#execute if data storage armorfx:var cores.item{id:"minecraft:leather_chestplate"} run return run function armorfx:internal/cores/leather/sneak
