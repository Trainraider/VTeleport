scoreboard players add #var idm_idIndex 1
execute as @a run scoreboard players operation @s idm_idIndexCheck = @s idm_idIndex
scoreboard players operation @a idm_idIndexCheck -= #var idm_idIndex
execute unless entity @a[scores={idm_idIndexCheck=0}] run function vteleport:idmanager/logout/block1
execute if score #var idm_idIndex < #var idm_maxIdIndex run function vteleport:idmanager/logout/block0
