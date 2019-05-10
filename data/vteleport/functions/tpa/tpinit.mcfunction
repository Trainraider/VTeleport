#Remove the tpa trigger from user to tpinit runs only once
scoreboard players set @s tpa 0
#mark the user as having created an vtp_active teleport request
tag @s add vtp_active
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

#Summon 5 armor stands who follow players that you may send your request to.
#Marked as vtp_new so that they alone recieve the correct vtp_tpInstance
summon minecraft:armor_stand ~ ~ ~ {"Tags":[vtp_a1,vtp_tp,vtp_new],Marker:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b}
summon minecraft:armor_stand ~ ~ ~ {"Tags":[vtp_a2,vtp_tp,vtp_new],Marker:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b}
summon minecraft:armor_stand ~ ~ ~ {"Tags":[vtp_a3,vtp_tp,vtp_new],Marker:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b}
summon minecraft:armor_stand ~ ~ ~ {"Tags":[vtp_a4,vtp_tp,vtp_new],Marker:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b}
summon minecraft:armor_stand ~ ~ ~ {"Tags":[vtp_a5,vtp_tp,vtp_new],Marker:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b}

#assign vtp_tpInstance to newly created armor stands.
scoreboard players operation @e[tag=vtp_tp,tag=vtp_new,distance=..1] vtp_tpInstance = @s vtp_tpInstance
tag @e[tag=vtp_tp,tag=vtp_new,distance=..1] remove vtp_new

#Mark all armor stands that are part of the current request with a vtp_tpInstncChck of 0
execute as @e[tag=vtp_tp] run scoreboard players operation @s vtp_tpInstncChck = @s vtp_tpInstance
scoreboard players operation @e[tag=vtp_tp] vtp_tpInstncChck -= @s vtp_tpInstance
#Give the armor stands IDs of players to follow
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
