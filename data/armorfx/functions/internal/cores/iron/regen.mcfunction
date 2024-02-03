#> armorfx:internal/cores/iron/regen
#--------------------
# ./hurt
#--------------------

effect give @s regeneration 4 1 false

particle instant_effect ~ ~1 ~ 0.2 0.5 0.2 1 15 force
playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 0.3 0.6
playsound entity.iron_golem.repair player @a ~ ~ ~ 0.3 2

scoreboard players set @s _armorfx-iron_stacks 0
scoreboard players set @s _armorfx-iron_timer -1