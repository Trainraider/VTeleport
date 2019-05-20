#The user as no longer active, remove tags
tag @s remove vtp_tpa
tag @s remove vtp_tpahere
tag @s remove vtp_active
#Prepare armorstands vtp_tpInstance value for comparison
execute as @e[tag=vtp_tp] run scoreboard players operation @s vtp_tpInstncChck = @s vtp_tpInstance
scoreboard players operation @e[tag=vtp_tp] vtp_tpInstncChck -= @s vtp_tpInstance
#Prepare players vtp_tpInstance value for comparison
execute as @a run scoreboard players operation @s vtp_tpInstncChck = @s vtp_tpInstance
scoreboard players operation @a vtp_tpInstncChck -= @s vtp_tpInstance
#Prepare players vtp_tprInstance value for comparison
execute as @a run scoreboard players operation @s vtp_tprInstnChck = @s vtp_tprInstance
scoreboard players operation @a vtp_tprInstnChck -= @s vtp_tpInstance

#Destroy armorstands used for request
kill @e[tag=vtp_tp,scores={vtp_tpInstncChck=0}]

#Remove 1 from all greater tpInstances and from the vtp_maxTpInstnce to erase this vtp_tpInstance.
execute if entity @s[scores={vtp_tpInstance=1..}] run function vteleport:tpa/wrapup/block0

#enable user to use tpa again
scoreboard players enable @s tpa
scoreboard players enable @s tpahere

#reset objectives used in tpa
scoreboard players reset @a[scores={vtp_tprInstnChck=0}] confirm
scoreboard players reset @a[scores={vtp_tprInstnChck=0}] vtp_tprInstance
scoreboard players reset @s confirm
scoreboard players reset @s vtp_tprInstance
scoreboard players reset @s vtp_tpInstance
scoreboard players reset @s vtp_tpStep
scoreboard players reset @s vtp_timeOut
scoreboard players reset @s vtp_tpidIndex
scoreboard players reset @s vtp_ui
scoreboard players reset @s vtp_tpid
scoreboard players reset @s tpcancel
