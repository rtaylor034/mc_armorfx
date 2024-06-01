#> armorfx:internal/cores/iron/starttime
#--------------------
# ./partial
# ./broken
# ./equip
#--------------------

$data modify storage gelay:in cancel.task_id set from storage pdata:data players[{UUID:$(UUID)}].storage.armorfx.internal.iron.task
function gelay:api/cancel

data modify storage gelay:in schedule.ticks set from storage armorfx:var iron.time
data modify storage gelay:in schedule.command set value "function armorfx:internal/cores/iron/shieldup"
function gelay:api/schedule

$data modify storage pdata:data players[{UUID:$(UUID)}].storage.armorfx.internal.iron.task set from storage gelay:out schedule.result