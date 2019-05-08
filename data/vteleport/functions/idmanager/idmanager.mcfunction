#players without an ID have it set to 0, others are unchanged
scoreboard players add @e[tag=p] idIndex 0
scoreboard players add @e[tag=p] id 0
#players who went offline and have invalid IDs are reset to 0
execute as @e[tag=p,scores={offline=1..}] run scoreboard players set @s idIndex 0
#players with ID 0 are assigned valid unique IDs
execute as @e[tag=p,scores={idIndex=0}] run function vteleport:idmanager/login
execute as @e[tag=p,scores={id=0}] run function vteleport:idmanager/assignpid

#detect when any players have disconnected by incrementing score offline once per newly disconnected player
scoreboard players operation #var offline += * loggedOut
#Reassign all IDs only if cleanup is needed, and IDs are not in use.
execute if score #var offline matches 1.. run function vteleport:idmanager/cleanup
execute if score #var offline matches 1.. run function vteleport:idmanager/logout
