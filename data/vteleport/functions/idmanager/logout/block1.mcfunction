scoreboard players add #var idm_idsCleaned 1
scoreboard players remove #var idm_maxIdIndex 1

execute as @e[tag=idm_idStruct] run scoreboard players operation @s idm_idIndexCheck = @s idm_idIndex
scoreboard players operation @e[tag=idm_idStruct] idm_idIndexCheck -= #var idm_idIndex

summon area_effect_cloud ~ ~ ~ {Radius:0.0001f,Duration:2147483647,Particle:"block air",Tags:[idm.logoutId,new]}
scoreboard players operation @e[tag=idm.logoutId,tag=new] idm_id = @e[tag=idm_idStruct,scores={idm_idIndexCheck=0},limit=1] idm_id
scoreboard players operation @e[tag=idm.logoutId,tag=new] idm_idIndex = #var idm_idIndex
tag @e[tag=idm.logoutId,tag=new] remove new

kill @e[tag=idm_idStruct,scores={idm_idIndexCheck=0},limit=1]
scoreboard players remove @a[scores={idm_idIndexCheck=1..}] idm_idIndex 1
