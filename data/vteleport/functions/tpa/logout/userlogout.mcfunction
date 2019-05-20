#Find the player a request was sent to
execute as @a[scores={vtp_tprInstance=1..}] run scoreboard players operation @s vtp_tprInstnChck = @s vtp_tprInstance
scoreboard players operation @a[scores={vtp_tprInstance=1..}] vtp_tprInstnChck -= @e[tag=vtp_tp,scores={idm_idCheck=0},limit=1] vtp_tpInstance

#Reset confirm of request receiver
scoreboard players reset @a[scores={vtp_tprInstance=1..,vtp_tprInstnChck=0}] confirm
#Notify request reciever that the request has been cancelled.
tellraw @a[scores={vtp_tprInstance=1..,vtp_tprInstnChck=0}] {"text":"[Teleportation request canceled]","color":"red","bold":"true"}
execute as @a[scores={vtp_tprInstance=1..,vtp_tprInstnChck=0}] run function vteleport:tpa/wrapup

#Kill orphaned armor stands.
kill @e[tag=vtp_tp,scores={idm_idCheck=0}]
