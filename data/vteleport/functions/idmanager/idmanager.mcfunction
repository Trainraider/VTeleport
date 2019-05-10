#players without an ID have it set to 0, others are unchanged
scoreboard players add @a idm_idIndex 0
scoreboard players add @a idm_id 0
#players who went idm_offline and have invalid IDs are reset to 0
execute as @a[scores={idm_offline=1..}] run scoreboard players set @s idm_idIndex 0
#players with ID 0 are assigned valid unique IDs
execute as @a[scores={idm_idIndex=0}] run function vteleport:idmanager/login
execute as @a[scores={idm_id=0}] run function vteleport:idmanager/assignid

#detect when any players have disconnected by incrementing score idm_offline once per newly disconnected player
scoreboard players operation #var idm_offline += * idm_loggedOut
#Reassign all IDs only if cleanup is needed, and IDs are not in use.
execute if score #var idm_offline matches 1.. run function vteleport:idmanager/cleanup
execute if score #var idm_offline matches 1.. run function vteleport:idmanager/logout
