#> armorfx:internal/api/merge_entry
#--------------------
# $DIRECT
# -> UUID: uuid
# -> entry: FXEntry
#--------------------
# ...
#--------------------
#> merges the armorfx playerdata storage entry for <UUID>
#--------------------
# ...
#--------------------
# ...
#--------------------

$data modify storage pdata:data players[{UUID:$(UUID)}].storage.armorfx merge value $(entry)