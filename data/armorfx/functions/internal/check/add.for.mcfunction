#> armorfx:internal/check/add.for

#unreadable ass code sorry

data modify storage armorfx:var check.add.macro set from storage armorfx:var check.add.armor_set.attributes[-1]
$data modify storage armorfx:var check.add.macro.value set from storage armorfx:var check.add.macro.$(part)

function gssen:api/inline/gen_uuid
data modify storage gssen:in guuid.in.UUID set from storage gssen:out gen_uuid.result
function gssen:api/meta/guuid with storage gssen:in guuid
data modify storage armorfx:var check.add.macro.guuid set from storage gssen:out guuid.result

function armorfx:internal/check/add.for.1 with storage armorfx:var check.add.macro

data modify storage armorfx:var check.add.mod_entry.name set from storage armorfx:var check.add.armor_set.attributes[-1].name
data modify storage armorfx:var check.add.mod_entry.guuid set from storage gssen:out guuid.result
data modify storage armorfx:var check.armor_entry.modifiers append from storage armorfx:var check.add.mod_entry

data remove storage armorfx:var check.add.armor_set.attributes[-1]
execute if data storage armorfx:var check.add.armor_set.attributes[] run function armorfx:internal/check/add.for with storage armorfx:var check.add