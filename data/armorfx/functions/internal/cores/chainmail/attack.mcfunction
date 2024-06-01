#> armorfx:internal/cores/chainmail/attack
#--------------------
# ../events/attack
#--------------------

data modify storage gelay:in schedule.command set value "function armorfx:internal/cores/chainmail/end"
data modify storage gelay:in schedule.ticks set from storage armorfx:settings chain.max_interval
function gelay:api/schedule

function pdata:api/self/get
data modify storage pdata:in set.storage set from storage pdata:out get.result.storage

execute if entity @s[tag=_armorfx.chain-attacking] run function armorfx:internal/cores/chainmail/continue
execute if entity @s[tag=!_armorfx.chain-attacking] run function armorfx:internal/cores/chainmail/start

data modify storage pdata:in set.storage.armorfx.internal.chain.task set from storage gelay:out schedule.result
function pdata:api/self/set