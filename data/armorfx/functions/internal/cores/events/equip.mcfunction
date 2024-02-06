#> armorfx:internal/cores/events/equip
#--------------------
# internal/check/add
#--------------------

$data merge storage armorfx:var {cores:{item:"$(item)", part:"$(part)"}}

execute unless data storage armorfx:var cores{part:"chestplate"} run return run data remove storage armorfx:var cores

say equip

execute if data storage armorfx:var cores{item:"minecraft:iron_chestplate"} run return run function armorfx:internal/cores/iron/equip

data remove storage armorfx:var cores