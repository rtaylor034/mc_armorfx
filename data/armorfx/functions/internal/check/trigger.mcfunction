#> armorfx:internal/check/trigger
#--------------------
# @gvent : invtr:on_inventory_change
#--------------------
#~ Could be made more performant if removed calls to get/merge self and just added a macro layer.

$data modify storage armorfx:var check set value $(info)

function armorfx:internal/check/trigger.1 with entity @s
