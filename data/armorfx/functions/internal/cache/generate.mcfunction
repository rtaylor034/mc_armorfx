#> armorfx:internal/cache/generate
#--------------------
# settings
#--------------------

data remove storage armorfx:data internal.cache

data modify storage gssen:in repeat.in.function set value "armorfx:internal/cache/set_iter"
execute store result storage gssen:in repeat.in.n int 1 if data storage armorfx:settings armor.sets[]
function gssen:api/inline/repeat with storage gssen:in repeat
