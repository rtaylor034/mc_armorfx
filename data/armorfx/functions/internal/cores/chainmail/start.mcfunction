#> armorfx:internal/cores/chainmail/start
#--------------------
# ./attack
#--------------------

attribute @s generic.attack_damage modifier add 46a38a66-9441-4512-8775-db18bcb3de7b "armorfx.chain-attack" 1.5 add

playsound item.armor.equip_chain player @s ~ ~ ~ 1 0.8

tag @s add _armorfx.chain-attacking