#Find armorstands part of request of logged out player
execute as @e[tag=vtp_tp] run scoreboard players operation @s idm_idCheck = @s idm_id
scoreboard players operation @e[tag=vtp_tp] idm_idCheck -= @s idm_id

#Find the player a request was sent to
execute as @a run scoreboard players operation @s vtp_tprInstnChck = @s vtp_tprInstance
scoreboard players operation @a vtp_tprInstnChck -= @e[tag=vtp_tp,scores={idm_idCheck=0},limit=1] vtp_tpInstance

#Reset confirm of request receiver
scoreboard players reset @a[scores={vtp_tprInstnChck=0}] confirm

#Kill orphaned armor stands
kill @e[tag=vtp_tp,scores={idm_idCheck=0}]
