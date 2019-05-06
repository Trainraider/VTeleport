#Since an interaction has occured, set timeOut to 30 seconds
scoreboard players set @s timeOut 600
#Allow user to use ui buttons again
scoreboard players enable @s ui
#Mark all armor stands that are part of the current request with tpInstanceCheck 0
execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance
#Iterate backward through player IDs unless you're already at the first one
execute if entity @e[tag=a1,scores={tpInstanceCheck=0,tpid=6..}] run function vteleport:tpa/ui/back/block0
#Unpress the back button so it runs only once
scoreboard players set @s ui 0
