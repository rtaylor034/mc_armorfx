#> armorfx:internal/api/get_entry
#--------------------
# $DIRECT
# -> UUID: uuid
#--------------------
# <- result: FXEntry
#--------------------
#> gets the armorfx playerdata storage entry for <UUID>
#--------------------
# ...
#--------------------
# ...
#--------------------

$data modify storage armorfx:out get_entry.result set from storage pdata:data players[{UUID:$(UUID)}].storage.armorfx