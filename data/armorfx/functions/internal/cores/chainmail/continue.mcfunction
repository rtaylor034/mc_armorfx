#> armorfx:internal/cores/chainmail/continue
#--------------------
# ./attack
#--------------------

data modify storage gelay:in cancel.task_id set from storage pdata:out get.result.storage.armorfx.internal.chain.task
function gelay:api/cancel

playsound entity.snowball.throw player @a ~ ~ ~ 0.7 2
playsound block.chain.break player @a ~ ~ ~ 0.7 1.8