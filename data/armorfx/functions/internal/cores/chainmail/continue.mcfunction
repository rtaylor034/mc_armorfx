#> armorfx:internal/cores/chainmail/continue
#--------------------
# ./attack
#--------------------

data modify storage gelay:in cancel.task_id set from storage pdata:out get.result.storage.armorfx.internal.chain.task
function gelay:api/cancel

playsound block.chain.break player @a ~ ~ ~ 1 2