#> armorfx:internal/check/trigger
#--------------------
# @gvent : invtr:on_inventory_change
#--------------------

$data modify storage armorfx:var check.invtr set value $(info)

data modify storage armorfx:var check.added append from storage armorfx:var check.invtr.added[{Slot:100b}]
data modify storage armorfx:var check.added append from storage armorfx:var check.invtr.added[{Slot:101b}]
data modify storage armorfx:var check.added append from storage armorfx:var check.invtr.added[{Slot:102b}]
data modify storage armorfx:var check.added append from storage armorfx:var check.invtr.added[{Slot:103b}]

data modify storage armorfx:var check.removed append from storage armorfx:var check.invtr.removed[{Slot:100b}]
data modify storage armorfx:var check.removed append from storage armorfx:var check.invtr.removed[{Slot:101b}]
data modify storage armorfx:var check.removed append from storage armorfx:var check.invtr.removed[{Slot:102b}]
data modify storage armorfx:var check.removed append from storage armorfx:var check.invtr.removed[{Slot:103b}]

execute store result storage armorfx:var check.macro.player_index int 1 run scoreboard players get @s pdata-index
function armorfx:internal/check/trigger.1 with storage armorfx:var check.macro
data remove storage armorfx:var check