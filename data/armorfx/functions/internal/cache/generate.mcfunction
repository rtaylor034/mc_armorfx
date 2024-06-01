#> armorfx:internal/cache/generate
#--------------------
# settings
#--------------------

data remove storage armorfx:data internal.cache

data modify storage gssen:in repeat.function set value "armorfx:internal/cache/set_iter"
execute store result storage gssen:in repeat.n int 1 if data storage armorfx:settings armor.sets[]
function gssen:api/inline/repeat
