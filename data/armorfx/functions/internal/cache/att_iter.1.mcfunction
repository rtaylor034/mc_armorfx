#> armorfx:internal/cache/att_iter.1

$execute store result score *cache.mult armorfx_var run data get storage armorfx:settings armor.part_multipliers.$(part)

scoreboard players operation *cache.mult armorfx_var *= *cache.unit armorfx_var

$execute store result storage armorfx:var cache.this_att.$(part) double .0001 run scoreboard players get *cache.mult armorfx_var