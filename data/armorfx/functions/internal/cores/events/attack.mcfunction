#> armorfx:internal/cores/events/attack
#--------------------
# @advancement : internal/attack
#--------------------

advancement revoke @s only armorfx:internal/attack

data remove storage armorfx:var cores
data modify storage armorfx:var cores.item set from entity @s Inventory[{Slot:102b}]
execute unless data storage armorfx:var cores.item run return 0

execute if data storage armorfx:var cores.item{id:"minecraft:chainmail_chestplate"} run return run function armorfx:internal/cores/chainmail/attack

