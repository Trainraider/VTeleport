#Since an interaction has occurred refresh timeout to 30 seconds
scoreboard players set @s vtp_timeOut 600
#Mark all armor stands that are part of the current request with vtp_tpInstncChck 0
execute as @e[tag=vtp_tp] run scoreboard players operation @s vtp_tpInstncChck = @s vtp_tpInstance
scoreboard players operation @e[tag=vtp_tp] vtp_tpInstncChck -= @s vtp_tpInstance

#Only one of these lines will execute depending on which button was pressed. Get idm_id of player request was sent to
execute as @s[scores={vtp_tpidIndex=1}] run scoreboard players operation @s vtp_tpid = @e[tag=vtp_tp,tag=vtp_a1,scores={vtp_tpInstncChck=0}] vtp_tpid
execute as @s[scores={vtp_tpidIndex=2}] run scoreboard players operation @s vtp_tpid = @e[tag=vtp_tp,tag=vtp_a2,scores={vtp_tpInstncChck=0}] vtp_tpid
execute as @s[scores={vtp_tpidIndex=3}] run scoreboard players operation @s vtp_tpid = @e[tag=vtp_tp,tag=vtp_a3,scores={vtp_tpInstncChck=0}] vtp_tpid
execute as @s[scores={vtp_tpidIndex=4}] run scoreboard players operation @s vtp_tpid = @e[tag=vtp_tp,tag=vtp_a4,scores={vtp_tpInstncChck=0}] vtp_tpid
execute as @s[scores={vtp_tpidIndex=5}] run scoreboard players operation @s vtp_tpid = @e[tag=vtp_tp,tag=vtp_a5,scores={vtp_tpInstncChck=0}] vtp_tpid

#Find the selected player and mark them with idm_idCheck 0
execute as @a run scoreboard players operation @s idm_idCheck = @s idm_id
scoreboard players operation @a idm_idCheck -= @s vtp_tpid

#Allow the selected player to respond to a tp request
scoreboard players enable @a[scores={idm_idCheck=0}] confirm

#Sends a tp request to the selected player
function vteleport:tpa/ui/request
#Mark other player as having recieved request
execute unless entity @a[scores={idm_idCheck=0,vtp_tprInstance=1..}] run scoreboard players operation @a[scores={idm_idCheck=0}] vtp_tprInstance = @s vtp_tpInstance

#send player to next step of request process
scoreboard players set @s vtp_tpStep 2
