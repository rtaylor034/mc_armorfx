#> armorfx:internal/cores/golden/main
#--------------------
# internal/cores/main
#--------------------

execute store result storage armorfx:var golden.reach float .01 run attribute @s player.block_interaction_range get 100

data modify storage armorfx:var golden.player_pos set from entity @s Pos

function armorfx:internal/cores/golden/main.1 with storage armorfx:var golden

data remove storage armorfx:var golden