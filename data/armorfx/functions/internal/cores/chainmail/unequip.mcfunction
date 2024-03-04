#> armorfx:internal/cores/chainmail/unequip
#--------------------
# ../events/unequip
#--------------------

execute if entity @s[tag=_armorfx.chain-attacking] run function armorfx:internal/cores/chainmail/end

attribute @s player.block_break_speed modifier remove 3394834e-4bb2-478f-9024-9efa0a5ff49d