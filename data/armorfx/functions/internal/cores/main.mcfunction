#> armorfx:internal/cores/main
#--------------------
# internal/tick
#--------------------

data remove storage armorfx:var cores
data modify storage armorfx:var cores.item set from entity @s Inventory[{Slot:102b}]
execute unless data storage armorfx:var cores.item run return 0

execute if data storage armorfx:var cores.item{id:"minecraft:leather_chestplate"} run return run function armorfx:internal/cores/leather/main
execute if data storage armorfx:var cores.item{id:"minecraft:diamond_chestplate"} run return run function armorfx:internal/cores/diamond/main
execute if data storage armorfx:var cores.item{id:"minecraft:netherite_chestplate"} run return run function armorfx:internal/cores/netherite/main
execute if data storage armorfx:var cores.item{id:"minecraft:chainmail_chestplate"} run return run function armorfx:internal/cores/chainmail/main

