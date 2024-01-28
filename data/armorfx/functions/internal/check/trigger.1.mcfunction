#> armorfx:internal/check/trigger.1

$data modify storage armorfx:var check.armor_entry set from storage pdata:data players[{UUID:$(UUID)}].storage.armorfx.internal.armor

#hardcoded for "performance"!
execute store result score *check.check armorfx_var if data storage invtr:var check.removed[{Slot:100b}]
execute if score *check.check armorfx_var matches 1.. run function armorfx:internal/check/remove {part:"boots"}
execute store result score *check.check armorfx_var if data storage invtr:var check.removed[{Slot:101b}]
execute if score *check.check armorfx_var matches 1.. run function armorfx:internal/check/remove {part:"leggings"}
execute store result score *check.check armorfx_var if data storage invtr:var check.removed[{Slot:102b}]
execute if score *check.check armorfx_var matches 1.. run function armorfx:internal/check/remove {part:"chestplate"}
execute store result score *check.check armorfx_var if data storage invtr:var check.removed[{Slot:103b}]
execute if score *check.check armorfx_var matches 1.. run function armorfx:internal/check/remove {part:"helmet"}

execute store result score *check.check armorfx_var run data modify storage armorfx:var check.add.item set from storage armorfx:var check.added[{Slot:100b}]
data merge storage armorfx:var {check:{add:{part:"boots"}}}
execute if score *check.check armorfx_var matches 1.. run function armorfx:internal/check/add with storage armorfx:var check.add
execute store result score *check.check armorfx_var run data modify storage armorfx:var check.add.item set from storage armorfx:var check.added[{Slot:101b}]
data merge storage armorfx:var {check:{add:{part:"leggings"}}}
execute if score *check.check armorfx_var matches 1.. run function armorfx:internal/check/add with storage armorfx:var check.add
execute store result score *check.check armorfx_var run data modify storage armorfx:var check.add.item set from storage armorfx:var check.added[{Slot:102b}]
data merge storage armorfx:var {check:{add:{part:"chestplate"}}}
execute if score *check.check armorfx_var matches 1.. run function armorfx:internal/check/add with storage armorfx:var check.add
execute store result score *check.check armorfx_var run data modify storage armorfx:var check.add.item set from storage armorfx:var check.added[{Slot:103b}]
data merge storage armorfx:var {check:{add:{part:"helmet"}}}
execute if score *check.check armorfx_var matches 1.. run function armorfx:internal/check/add with storage armorfx:var check.add

$data modify storage pdata:data players[{UUID:$(UUID)}].storage.armorfx.internal.armor set from storage armorfx:var check.armor_entry

scoreboard players reset *check.check armorfx_var