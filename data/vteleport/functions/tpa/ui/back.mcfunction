#Since an interaction has occured, set vtp_timeOut to 30 seconds
scoreboard players set @s vtp_timeOut 600
#Allow user to use vtp_ui buttons again
scoreboard players enable @s vtp_ui
#Mark all armor stands that are part of the current request with vtp_tpInstncChck 0
execute as @e[tag=vtp_tp] run scoreboard players operation @s vtp_tpInstncChck = @s vtp_tpInstance
scoreboard players operation @e[tag=vtp_tp] vtp_tpInstncChck -= @s vtp_tpInstance
#Iterate backward through player IDs unless you're already at the first one
execute if entity @e[tag=vtp_a1,scores={vtp_tpInstncChck=0,vtp_tpidIndex=6..}] run function vteleport:tpa/ui/back/block0
#Unpress the back button so it runs only once
scoreboard players set @s vtp_ui 0
