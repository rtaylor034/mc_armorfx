#> armorfx:internal/cores/leather/sneak
#--------------------
# ../events/sneak
#--------------------

execute unless entity @s[tag=_armorfx.ground_reset,nbt={OnGround:0b}] run return 0

execute store result score $x delta.api.launch run data get entity @s Motion[0] 9000
execute store result score $z delta.api.launch run data get entity @s Motion[2] 9000
execute store result score $y delta.api.launch run data get entity @s Motion[1] -10000
scoreboard players add $y delta.api.launch 8000
function delta:api/launch_xyz

playsound entity.generic.wind_burst player @a ~ ~ ~ 0.4 0.8
particle cloud ~ ~ ~ 0.3 0.1 0.3 0.05 10

tag @s add _armorfx.jump_fix
tag @s remove _armorfx.ground_reset