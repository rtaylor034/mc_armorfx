#> armorfx:internal/cores/main
#--------------------
# internal/tick
#--------------------

data remove storage armorfx:var cores
data modify storage armorfx:var cores.this_player set from entity @s
data modify storage armorfx:var cores.item set from storage armorfx:var cores.this_player.Inventory[{Slot:102b}]

execute unless data storage armorfx:var cores.item run return 0

execute if data storage armorfx:var cores.this_player{HurtTime:9s} run function armorfx:internal/cores/events/hurt

execute if data storage armorfx:var cores.item{id:"minecraft:golden_chestplate"} run return run function armorfx:internal/cores/golden/main
execute if data storage armorfx:var cores.item{id:"minecraft:leather_chestplate"} run return run function armorfx:internal/cores/leather/main
execute if data storage armorfx:var cores.item{id:"minecraft:diamond_chestplate"} run return run function armorfx:internal/cores/diamond/main
execute if data storage armorfx:var cores.item{id:"minecraft:iron_chestplate"} run return run function armorfx:internal/cores/iron/main
execute if data storage armorfx:var cores.item{id:"minecraft:netherite_chestplate"} run return run function armorfx:internal/cores/netherite/main
execute if data storage armorfx:var cores.item{id:"minecraft:chainmail_chestplate"} run return run function armorfx:internal/cores/chainmail/main




