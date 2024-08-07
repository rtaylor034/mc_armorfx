#>armorfx:internal/load
#--------------------
# @LOAD
#--------------------

scoreboard players set *armorfx load.status 1

#settings
execute unless data storage armorfx:settings {PERSIST:true} run function armorfx:settings

#declare storage armorfx:var
#declare storage armorfx:dirty
#declare storage armorfx:in
#declare storage armorfx:out
#declare storage armorfx:data

scoreboard objectives add armorfx_dirty dummy
scoreboard objectives add armorfx_var dummy

scoreboard objectives add _armorfx-iron_timer dummy
scoreboard objectives add _armorfx-iron_stacks dummy

schedule clear armorfx:internal/tick
schedule function armorfx:internal/tick 1t
