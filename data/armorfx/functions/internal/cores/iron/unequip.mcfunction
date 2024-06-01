#> armorfx:internal/cores/iron/unequip
#--------------------
# cores/events/unequip
#--------------------

effect clear @s absorption

function pdata:api/self/get
data modify storage gelay:in cancel.task_id set from storage pdata:out get.result.storage.armorfx.internal.iron.task
function gelay:api/cancel

tag @s remove _armorfx-iron.shielded