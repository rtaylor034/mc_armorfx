#> armorfx:internal/cores/iron/hurt
#--------------------
# internal/cores/hurt
#--------------------

execute store result score *iron.shield armorfx_var run data get entity @s AbsorptionAmount 100

execute if score *iron.shield armorfx_var matches 1.. run function armorfx:internal/cores/iron/partial
execute if score *iron.shield armorfx_var matches ..0 run function armorfx:internal/cores/iron/broken

data remove storage armorfx:var iron
scoreboard players reset *iron.shield armorfx_var