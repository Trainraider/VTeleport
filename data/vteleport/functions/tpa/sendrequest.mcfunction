#Since an interaction has occurred refresh timeout to 30 seconds
scoreboard players set @s timeOut 600
#Mark all armor stands that are part of the current request with tpInstanceCheck 0
execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance

#Only one of these lines will execute depending on which button was pressed. Get id of player request was sent to
execute as @s[scores={tpid=1}] run scoreboard players operation @s tppid = @e[tag=tp,tag=a1,scores={tpInstanceCheck=0}] tppid
execute as @s[scores={tpid=2}] run scoreboard players operation @s tppid = @e[tag=tp,tag=a2,scores={tpInstanceCheck=0}] tppid
execute as @s[scores={tpid=3}] run scoreboard players operation @s tppid = @e[tag=tp,tag=a3,scores={tpInstanceCheck=0}] tppid
execute as @s[scores={tpid=4}] run scoreboard players operation @s tppid = @e[tag=tp,tag=a4,scores={tpInstanceCheck=0}] tppid
execute as @s[scores={tpid=5}] run scoreboard players operation @s tppid = @e[tag=tp,tag=a5,scores={tpInstanceCheck=0}] tppid

#Find the selected player and mark them with idCheck 0
execute as @e[tag=p] run scoreboard players operation @s idCheck = @s id
scoreboard players operation @e[tag=p] idCheck -= @s tppid

#Allow the selected player to respond to a tp request
scoreboard players enable @e[tag=p,scores={idCheck=0}] confirm

#Sends a tp request to the selected player
function vteleport:tpa/ui/request
#Mark other player as having recieved request
execute unless entity @a[tag=p,scores={idCheck=0,tprInstance=1..}] run scoreboard players operation @e[tag=p,scores={idCheck=0},type=player] tprInstance = @s tpInstance

####Non-player test entities confirm automatically#####
scoreboard players set @e[tag=p,scores={idCheck=0},type=!player] confirm 1

#######################################################
#send player to next step of request process
scoreboard players set @s tpStep 2
