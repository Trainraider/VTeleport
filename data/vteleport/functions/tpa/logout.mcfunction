#Find armorstands part of request of logged out player
execute as @e[tag=vtp_tp] run scoreboard players operation @s idm_idCheck = @s idm_id
scoreboard players operation @e[tag=vtp_tp] idm_idCheck -= @s idm_id

execute if entity @e[tag=vtp_tp,scores={idm_idCheck=0}] run function vteleport:tpa/userlogout

execute as @a run scoreboard players operation @s idm_idCheck = @s vtp_tpid
scoreboard players operation @a idm_idCheck -= @s idm_id

execute as @a[scores={idm_idCheck=0}] run function vteleport:tpa/recieverlogout
