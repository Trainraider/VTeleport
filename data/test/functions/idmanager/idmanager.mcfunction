#players without an ID have it set to 0, others are unchanged
scoreboard players add @a id 0
#players who went offline and have invalid IDs are reset to 0
execute as @a[scores={offline=1..}] run scoreboard players set @s id 0
#players with ID 0 are assigned valid unique IDs
execute as @a[scores={id=0}] run function test:idmanager/login


#detect when any players have disconnected by incrementing score offline once per newly disconnected player
scoreboard players operation #var offline += * loggedOut
execute if score #var offline matches 1.. run function test:idmanager/logout

execute if score #var cleanupNeeded matches 1 if score #var idBusy matches ..0 run function test:idmanager/cleanup
