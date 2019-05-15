scoreboard players add #var idm_idIndex 1
#Find player with an idm_idIndex equal to #var idm_idIndex
execute as @a run scoreboard players operation @s idm_idIndexCheck = @s idm_idIndex
scoreboard players operation @a idm_idIndexCheck -= #var idm_idIndex
#if there is no such player, they logged out. Run block1
execute unless entity @a[scores={idm_idIndexCheck=0}] run function vteleport:idmanager/logout/block1
#if we aren't done checking throught the index, loop again.
execute if score #var idm_idIndex < #var idm_maxIdIndex run function vteleport:idmanager/logout/block0
