#Find armorstands part of request of logged out player
execute as @e[tag=vtp_tp] run scoreboard players operation @s idm_idCheck = @s idm_id
scoreboard players operation @e[tag=vtp_tp] idm_idCheck -= @s idm_id


#Find the sender who sent a request to the logged out reciever
execute as @a[tag=vtp_active] run scoreboard players operation @s idm_idCheck = @s vtp_tpid
scoreboard players operation @a[tag=vtp_active] idm_idCheck -= @s idm_id

execute unless entity @e[tag=vtp_tp,scores={idm_idCheck=0}] as @a[tag=vtp_active,scores={idm_idCheck=0}] run function vteleport:tpa/logout/recieverlogout
execute if entity @e[tag=vtp_tp,scores={idm_idCheck=0}] run function vteleport:tpa/logout/userlogout