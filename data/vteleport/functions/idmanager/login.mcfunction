#players without an ID have it set to 0, others are unchanged
scoreboard players add @a idm_id 0
scoreboard players add #var idm_maxIdIndex 1
#Signal to externals that player is logging in, perhaps for first time.
tag @s add idm.login
#This is a signal to external features that a player has been offline and may
#require special handling.
tag @s[scores={idm_offline=1..}] add idm.offline
#remove idm_offline mark from player
scoreboard players reset @s idm_offline
#assign them a valid unique ID index
scoreboard players operation @s idm_idIndex = #var idm_maxIdIndex
scoreboard players set @s idm_idIndexCheck -1
execute as @s[scores={idm_id=0}] run function vteleport:idmanager/assignid

execute at @e[tag=vtp_spawnChunks] run summon area_effect_cloud ~ ~ ~ {Radius:0.0001f,Duration:2147483647,Particle:"block air",Tags:[idm_idStruct,idm_new,perm]}
scoreboard players operation @e[tag=idm_idStruct,tag=idm_new] idm_idIndex = @s idm_idIndex
scoreboard players operation @e[tag=idm_idStruct,tag=idm_new] idm_id = @s idm_id
tag @e[tag=idm_idStruct,tag=idm_new] remove idm_new
