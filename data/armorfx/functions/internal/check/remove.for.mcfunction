#> armorfx:internal/check/remove.for

$attribute @s $(name) modifier remove $(guuid)

data remove storage armorfx:var check.remove.attributes[-1]
execute if data storage armorfx:var check.remove.attributes[] run function armorfx:internal/check/remove.for with storage armorfx:var check.remove.attributes[-1]
