#> armorfx:internal/check/remove
#--------------------
# ./trigger
#--------------------

function armorfx:internal/cores/events/unequip with storage armorfx:var check.remove

$data modify storage armorfx:var check.remove.attributes set from storage armorfx:var check.armor_entry.$(part).modifiers

execute if data storage armorfx:var check.remove.attributes[] run function armorfx:internal/check/remove.for with storage armorfx:var check.remove.attributes[-1]

$data modify storage armorfx:var check.armor_entry.$(part) set value {}
