#> armorfx:internal/cores/iron/main
#--------------------
# ../main
#--------------------

execute if score @s _armorfx-iron_timer matches 0 run function armorfx:internal/cores/iron/reset

execute if score @s _armorfx-iron_stacks matches 2 run particle crit ~ ~1 ~ 0.2 0.5 0.2 0.1 1 force @a

execute if score @s _armorfx-iron_timer matches 0.. run scoreboard players remove @s _armorfx-iron_timer 1