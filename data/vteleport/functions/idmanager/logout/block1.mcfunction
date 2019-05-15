#Track that one (more) id was removed
scoreboard players add #var idm_idsCleaned 1
#There is one less idIndex in circulation.
scoreboard players remove #var idm_maxIdIndex 1

#Find the entry containing the logged out player's idIndex and id.
execute as @e[tag=idm_idStruct] run scoreboard players operation @s idm_idIndexCheck = @s idm_idIndex
scoreboard players operation @e[tag=idm_idStruct] idm_idIndexCheck -= #var idm_idIndex

#idm.logoutId is a signal to external features that contains the id and idIndex of the logged out player
#   it should exist for 1 tick
summon area_effect_cloud ~ ~ ~ {Radius:0.0001f,Duration:2147483647,Particle:"block air",Tags:[idm.logoutId,new]}
scoreboard players operation @e[tag=idm.logoutId,tag=new] idm_id = @e[tag=idm_idStruct,scores={idm_idIndexCheck=0},limit=1] idm_id
scoreboard players operation @e[tag=idm.logoutId,tag=new] idm_idIndex = #var idm_idIndex
tag @e[tag=idm.logoutId,tag=new] remove new

#Destroy the entry for the logged out player after it is read.
kill @e[tag=idm_idStruct,scores={idm_idIndexCheck=0},limit=1]
#Reassign Idindex to players and structures with greater indexes than the loggout player
scoreboard players remove @a[scores={idm_idIndexCheck=1..}] idm_idIndex 1
scoreboard players remove @e[tag=idm_idStruct,scores={idm_idIndexCheck=1..}] idm_idIndex 1
#We need to check this index again since we just shifted everyone down one. This neutralizes idm_idIndex increasing next time.
execute if entity @a[scores={idm_idIndexCheck=1..}] run scoreboard players remove #var idm_idIndex 1