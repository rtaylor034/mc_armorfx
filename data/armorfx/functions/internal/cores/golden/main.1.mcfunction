#> armorfx:internal/cores/golden/main.1

$execute as @e[type=item,distance=0..$(reach),nbt={Age:0s}] unless data entity @s Thrower at @s run function armorfx:internal/cores/golden/pickup_tag
