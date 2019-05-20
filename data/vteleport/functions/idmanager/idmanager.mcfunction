#players without an ID index have it set to 0, others are unchanged
scoreboard players add @a idm_idIndex 0
#players who went idm_offline and have invalid IDs are reset to 0
execute as @a[scores={idm_offline=1..}] run scoreboard players set @s idm_idIndex 0
#Destroy external signal, created in vteleport:idmanager/login, that a player has been offline, after one tick
tag @a[tag=idm.offline] remove idm.offline
tag @a[tag=idm.login] remove idm.login
#handle players logging in and assign id index and id
execute as @a[scores={idm_idIndex=0}] run function vteleport:idmanager/login

#Destroy external signal, created in vteleport:idmanager/logout, that a player has just logged out, after one tick.
kill @e[tag=idm.logoutId]
#detect when any players have disconnected by incrementing score idm_offline once per newly disconnected player
scoreboard players operation #var idm_offline += * idm_loggedOut
#Process logged-out players
execute if score #var idm_offline matches 1.. run function vteleport:idmanager/logout
