#mark the user as having created a teleport request
tag @s[scores={tpa=1}] add vtp_tpa
tag @s[scores={tpahere=1}] add vtp_tpahere
# vtp_active is basically tpa OR tpahere, meaning they started a request, doesn't matter what type.
tag @s add vtp_active
#Remove the tpa trigger from user to tpinit runs only once
scoreboard players reset @s tpa
scoreboard players reset @s tpahere
#allow user to use UI
scoreboard players enable @s vtp_tpidIndex
scoreboard players enable @s vtp_ui

#sends execution to next step after this
scoreboard players set @s vtp_tpStep 1
#sets a 30 second timout for this request
scoreboard players set @s vtp_timeOut 600
#assign this request a unique instance idm_id so it is processed seperately from simultaneous requests
scoreboard players operation @s vtp_tpInstance = #var vtp_maxTpInstnce
scoreboard players add #var vtp_maxTpInstnce 1

#Summon 5 aec who track players that you may send your request to.
#Marked as vtp_new so that they alone recieve the correct vtp_tpInstance
execute at @e[limit=1,tag=vtp_spawnChunks] run summon area_effect_cloud ~ ~ ~ {"Tags":[vtp_a1,vtp_tp,vtp_new],Radius:0.0001f,Duration:2147483647,Particle:"block air"}
execute at @e[limit=1,tag=vtp_spawnChunks] run summon area_effect_cloud ~ ~ ~ {"Tags":[vtp_a2,vtp_tp,vtp_new],Radius:0.0001f,Duration:2147483647,Particle:"block air"}
execute at @e[limit=1,tag=vtp_spawnChunks] run summon area_effect_cloud ~ ~ ~ {"Tags":[vtp_a3,vtp_tp,vtp_new],Radius:0.0001f,Duration:2147483647,Particle:"block air"}
execute at @e[limit=1,tag=vtp_spawnChunks] run summon area_effect_cloud ~ ~ ~ {"Tags":[vtp_a4,vtp_tp,vtp_new],Radius:0.0001f,Duration:2147483647,Particle:"block air"}
execute at @e[limit=1,tag=vtp_spawnChunks] run summon area_effect_cloud ~ ~ ~ {"Tags":[vtp_a5,vtp_tp,vtp_new],Radius:0.0001f,Duration:2147483647,Particle:"block air"}

#assign vtp_tpInstance to newly created aec.
scoreboard players operation @e[tag=vtp_tp,tag=vtp_new] vtp_tpInstance = @s vtp_tpInstance
scoreboard players operation @e[tag=vtp_tp,tag=vtp_new] idm_id = @s idm_id
tag @e[tag=vtp_tp,tag=vtp_new] remove vtp_new

#Mark all aec that are part of the current request with a vtp_tpInstncChck of 0
execute as @e[tag=vtp_tp] run scoreboard players operation @s vtp_tpInstncChck = @s vtp_tpInstance
scoreboard players operation @e[tag=vtp_tp] vtp_tpInstncChck -= @s vtp_tpInstance
#Give the armor stands IDs of players to track
scoreboard players set @e[tag=vtp_a1,scores={vtp_tpInstncChck=0}] vtp_tpidIndex 1
execute store success score @e[tag=vtp_a1,scores={vtp_tpInstncChck=0}] vtp_validId run scoreboard players operation @e[tag=vtp_a1,scores={vtp_tpInstncChck=0}] vtp_tpid = @a[limit=1,scores={idm_idIndex=1}] idm_id
scoreboard players set @e[tag=vtp_a2,scores={vtp_tpInstncChck=0}] vtp_tpidIndex 2
execute store success score @e[tag=vtp_a2,scores={vtp_tpInstncChck=0}] vtp_validId run scoreboard players operation @e[tag=vtp_a2,scores={vtp_tpInstncChck=0}] vtp_tpid = @a[limit=1,scores={idm_idIndex=2}] idm_id
scoreboard players set @e[tag=vtp_a3,scores={vtp_tpInstncChck=0}] vtp_tpidIndex 3
execute store success score @e[tag=vtp_a3,scores={vtp_tpInstncChck=0}] vtp_validId run scoreboard players operation @e[tag=vtp_a3,scores={vtp_tpInstncChck=0}] vtp_tpid = @a[limit=1,scores={idm_idIndex=3}] idm_id
scoreboard players set @e[tag=vtp_a4,scores={vtp_tpInstncChck=0}] vtp_tpidIndex 4
execute store success score @e[tag=vtp_a4,scores={vtp_tpInstncChck=0}] vtp_validId run scoreboard players operation @e[tag=vtp_a4,scores={vtp_tpInstncChck=0}] vtp_tpid = @a[limit=1,scores={idm_idIndex=4}] idm_id
scoreboard players set @e[tag=vtp_a5,scores={vtp_tpInstncChck=0}] vtp_tpidIndex 5
execute store success score @e[tag=vtp_a5,scores={vtp_tpInstncChck=0}] vtp_validId run scoreboard players operation @e[tag=vtp_a5,scores={vtp_tpInstncChck=0}] vtp_tpid = @a[limit=1,scores={idm_idIndex=5}] idm_id

function vteleport:tpa/ui/tplist
