#> armorfx:internal/cores/events/hurt
#--------------------
# @advancement : internal/hurt
#--------------------
advancement revoke @s only armorfx:internal/hurt

data remove storage armorfx:var cores
data modify storage armorfx:var cores.item set from entity @s Inventory[{Slot:102b}]
execute unless data storage armorfx:var cores.item run return 0

execute if data storage armorfx:var cores.item{id:"minecraft:iron_chestplate"} run return run function armorfx:internal/cores/iron/hurt
