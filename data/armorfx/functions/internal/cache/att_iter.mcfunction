#> armorfx:internal/cache/att_iter
#--------------------
# ./set_iter
#--------------------

$data modify storage armorfx:var cache.this_att set from storage armorfx:var cache.this_set.attributes[$(i)]


execute store result score *cache.unit armorfx_var run data get storage armorfx:var cache.this_att.unit 10000

function armorfx:internal/cache/att_iter.1 {part:"helmet"}
function armorfx:internal/cache/att_iter.1 {part:"chestplate"}
function armorfx:internal/cache/att_iter.1 {part:"leggings"}
function armorfx:internal/cache/att_iter.1 {part:"boots"}

$data modify storage armorfx:var cache.this_set.attributes[$(i)] set from storage armorfx:var cache.this_att
data modify storage armorfx:data internal.cache.sets append from storage armorfx:var cache.this_set
