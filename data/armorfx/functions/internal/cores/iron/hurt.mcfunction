#> armorfx:internal/cores/iron/hurt
#--------------------
# ../events/hurt
#--------------------

scoreboard players add @s _armorfx-iron_stacks 1
execute store result score @s _armorfx-iron_timer run data get storage armorfx:settings iron.max_hurt_interval

execute if score @s _armorfx-iron_stacks matches 1 run playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 0.2 1.6
execute if score @s _armorfx-iron_stacks matches 2 run playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 0.2 2
execute if score @s _armorfx-iron_stacks matches 2 run playsound entity.iron_golem.hurt player @a ~ ~ ~ 0.3 1.8
execute if score @s _armorfx-iron_stacks matches 3.. run function armorfx:internal/cores/iron/regen