#Generate list of players for teleport requester
execute as @e[tag=p,scores={tpa=1}] run function vanillateleport:playerteleport/tpinit
#make armor stands follow prospective teleport options
execute as @e[tag=p,scores={tpStep=1..3}] run function vanillateleport:playerteleport/trackplayers
#show a list of the 5 next players after the back or forward buttons are pressed
execute as @e[tag=p,scores={tpStep=1,ui=2}] run function vanillateleport:playerteleport/ui/forward
execute as @e[tag=p,scores={tpStep=1,ui=1}] run function vanillateleport:playerteleport/ui/back
#After a player has been selected, send that player a teleport request
execute as @e[tag=p,scores={tpStep=1,tpid=1..}] run function vanillateleport:playerteleport/sendrequest
#if confirmation is recieved, teleport. If denial is recieved, send a notification of denial
execute as @e[tag=p,scores={tpStep=2}] run function vanillateleport:playerteleport/confirmation
#reset the users arguments and kill their armor stands
execute as @e[tag=p,scores={tpStep=3}] run function vanillateleport:playerteleport/wrapup

#if player does nothing, they timeout and get kicked off the queue
scoreboard players remove @e[tag=p,tag=active] timeOut 1
execute as @e[tag=p,scores={timeOut=..0}] run tellraw @s {"text":"[Teleportation request timed out]","color":"red","bold":"true"}
execute as @e[tag=p,scores={timeOut=..0}] run function vanillateleport:playerteleport/wrapup
