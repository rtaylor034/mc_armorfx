#>armorfx:settings

#declare storage armorfx:settings
data modify storage armorfx:settings PERSIST set value false

#>-------------------
#> armor.sets
#-------------------
#~ defines attributes for sets of armor
#-------------------
# - 'operation' is the operation-text in the 'attribute' command (add|multiply|multiply_base)
#-------------------
# DEFAULT: 
#-------------------
data modify storage armorfx:settings armor.sets set value []
data modify storage armorfx:settings armor.sets append value {parts:{boots:"minecraft:leather_boots",leggings:"minecraft:leather_leggings",chestplate:"minecraft:leather_chestplate",helmet:"minecraft:leather_helmet"}, attributes:[{name:"generic.movement_speed", unit:.025,operation:"multiply_base"},{name:"generic.safe_fall_distance", unit:.18,operation:"add"}]}
data modify storage armorfx:settings armor.sets append value {parts:{boots:"minecraft:golden_boots",leggings:"minecraft:golden_leggings",chestplate:"minecraft:golden_chestplate",helmet:"minecraft:golden_helmet"}, attributes:[{name:"player.block_interaction_range", unit:.12,operation:"add"},{name:"player.entity_interaction_range", unit:.14,operation:"add"}]}
data modify storage armorfx:settings armor.sets append value {parts:{boots:"minecraft:chainmail_boots",leggings:"minecraft:chainmail_leggings",chestplate:"minecraft:chainmail_chestplate",helmet:"minecraft:chainmail_helmet"}, attributes:[{name:"generic.attack_speed", unit:.05,operation:"multiply_base"}]}
data modify storage armorfx:settings armor.sets append value {parts:{boots:"minecraft:iron_boots",leggings:"minecraft:iron_leggings",chestplate:"minecraft:iron_chestplate",helmet:"minecraft:iron_helmet"}, attributes:[{name:"generic.knockback_resistance", unit:.042,operation:"add"}]}
data modify storage armorfx:settings armor.sets append value {parts:{boots:"minecraft:netherite_boots",leggings:"minecraft:netherite_leggings",chestplate:"minecraft:netherite_chestplate",helmet:"minecraft:netherite_helmet"}, attributes:[{name:"generic.attack_damage", unit:.015,operation:"multiply_base"},{name:"generic.attack_speed", unit:-.035,operation:"multiply"}]}
#>-------------------

#>-------------------
#> armor.part_multipliers
#-------------------
#~ defines attributes for sets of armor
#-------------------
# ...
#-------------------
# DEFAULT: 
#-------------------
data modify storage armorfx:settings armor.part_multipliers set value {chestplate:8, leggings: 7, boots: 4, helmet: 5}
#>-------------------

data modify storage armorfx:settings iron.partial_cooldown set value 60

data modify storage armorfx:settings iron.full_cooldown set value 100

data modify storage armorfx:settings chain.max_interval set value 20
data modify storage armorfx:settings chain.haste_multiplier set value 0.25

function armorfx:internal/cache/generate