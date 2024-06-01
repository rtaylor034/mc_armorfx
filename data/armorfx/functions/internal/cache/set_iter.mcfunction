#> armorfx:internal/cache/set_iter
#--------------------
# ./generate
#--------------------

$data modify storage armorfx:var cache.this_set set from storage armorfx:settings armor.sets[$(i)]

data modify storage gssen:in repeat.function set value "armorfx:internal/cache/att_iter"
execute store result storage gssen:in repeat.n int 1 if data storage armorfx:var cache.this_set.attributes[]
function gssen:api/inline/repeat

data remove storage armorfx:var cache
scoreboard players reset *cache.mult armorfx_var
scoreboard players reset *cache.unit armorfx_var
