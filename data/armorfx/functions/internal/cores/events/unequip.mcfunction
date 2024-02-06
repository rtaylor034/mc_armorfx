#> armorfx:internal/cores/events/unequip
#--------------------
# internal/check/remove
#--------------------

$data merge storage armorfx:var {cores:{item:"$(item)", part:"$(part)"}}

execute unless data storage armorfx:var cores{part:"chestplate"} run return run data remove storage armorfx:var cores

execute if data storage armorfx:var cores{item:"minecraft:iron_chestplate"} run return run function armorfx:internal/cores/iron/unequip

data remove storage armorfx:var cores