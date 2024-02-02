#> armorfx:internal/cores/golden/main
#--------------------
# internal/cores/main
#--------------------

execute store result score *golden.reach armorfx_var run attribute @s minecraft:player.block_interaction_range get 100
scoreboard players add *golden.reach armorfx_var 100
execute store result storage armorfx:var golden.reach float .01 run scoreboard players get *golden.reach armorfx_var

data modify storage armorfx:var golden.player_pos set from entity @s Pos

execute anchored eyes positioned ^ ^ ^ run function gssen:api/context/position
data modify storage armorfx:var golden.call.in.a set from storage gssen:out position.result
data modify storage armorfx:var golden.player_eyes set from storage gssen:out position.result

execute anchored eyes run function armorfx:internal/cores/golden/main.1 with storage armorfx:var golden

tag @s add _armorfx-golden.player
execute if data storage armorfx:var golden.distances[] anchored eyes run function armorfx:internal/cores/golden/each_distance with storage armorfx:var golden.distances[-1]

tag @s remove _armorfx-golden.player
data remove storage armorfx:var golden
scoreboard players reset *golden.reach armorfx_var
tag @e[type=item,tag=_armorfx-golden.item] remove _armorfx-golden.item