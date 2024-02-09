#> armorfx:internal/cores/leather/sneak
#--------------------
# ../events/sneak
#--------------------

execute unless entity @s[tag=_armorfx.ground_reset,nbt={OnGround:0b}] run return 0


scoreboard players set $x delta.api.launch 0
scoreboard players set $z delta.api.launch 0
execute store result score $y delta.api.launch run data get entity @s Motion[1] -10000
scoreboard players add $y delta.api.launch 8000
function delta:api/launch_xyz

playsound entity.breeze.wind_burst player @a ~ ~ ~ 0.3 0.8
playsound ui.toast.in player @a ~ ~ ~ 1 1.5
particle cloud ~ ~ ~ 0.3 0.1 0.3 0.05 10

tag @s remove _armorfx.ground_reset
