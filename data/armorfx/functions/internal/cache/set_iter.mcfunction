#> armorfx:internal/cache/set_iter
#--------------------
# ./generate
#--------------------

$data modify storage armorfx:var cache.this_set set from storage armorfx:settings armor.sets[$(i)]

execute store result score *cache.unit armorfx_var run data get storage armorfx:var chache.this_set.unit 10000

function armorfx:internal/cache/set_iter.1 {part:"helmet"}
function armorfx:internal/cache/set_iter.1 {part:"chestplate"}
function armorfx:internal/cache/set_iter.1 {part:"leggings"}
function armorfx:internal/cache/set_iter.1 {part:"boots"}

data modify storage armorfx:data internal.cache.mults.items set from storage armorfx:var cache.this_set.parts

data remove storage armorfx:var cache
scoreboard players reset *cache.mult armorfx_var
scoreboard players reset *cache.unit armorfx_var
