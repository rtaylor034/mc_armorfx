#> armorfx:internal/check/add
#--------------------
# ./trigger
#--------------------

function armorfx:internal/cores/events/equip with storage armorfx:var check.add

$data modify storage armorfx:var check.armor_entry.$(part).id set from storage armorfx:var check.add.item

$data modify storage armorfx:var check.add.armor_set set from storage armorfx:data internal.cache.sets[{parts:{$(part):"$(item)"}}]

execute if data storage armorfx:var check.add.armor_set.attributes[] run function armorfx:internal/check/add.for with storage armorfx:var check.add

data remove storage armorfx:var check.add