#> armorfx:internal/check/main
#--------------------
# internal/tick
#--------------------
data modify storage armorfx:dirty check.inventory set from entity @s Inventory
data modify storage gssen:in difference.in.b append from storage armorfx:dirty check.inventory[{Slot:100b}]
data modify storage gssen:in difference.in.b append from storage armorfx:dirty check.inventory[{Slot:101b}]
data modify storage gssen:in difference.in.b append from storage armorfx:dirty check.inventory[{Slot:102b}]
data modify storage gssen:in difference.in.b append from storage armorfx:dirty check.inventory[{Slot:103b}]
$data modify storage gssen:in difference.in.a set from storage pdata:data players[{UUID:$(UUID)}].storage.internal.last_items

data modify storage gssen:in difference.in.compare.only set value ["Slot", "id", "tag.armorfx.no_fx"]
execute store result score *check.none armorfx_dirty run function gssen:api/array/set/difference with storage gssen:in difference
execute if score *check.none armorfx_dirty matches 0 run return 0