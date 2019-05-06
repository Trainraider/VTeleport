#Since an interaction has occured, set timeOut to 30 seconds
scoreboard players set @s timeOut 600
#Allow user to use ui buttons again
scoreboard players enable @s ui
#Mark all armor stands that are part of the current request with tpInstanceCheck 0
execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance
#Iterate forward through player IDs unless you're already at the last ones
execute unless score @e[tag=a5,scores={tpInstanceCheck=0},limit=1] tpid >= #var maxIdIndex run function vteleport:tpa/ui/forward/block0
#Unpress the forward button so it runs only once
scoreboard players set @s ui 0
