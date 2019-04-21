#Players who request teleportation are added to the queue. This function has a limitation of one
#active teleport request at a time.
execute as @a[scores={rtp=1}] run function vanillateleport:playerteleport/joinqueue
#Generate a list of players to teleport to for the player at the front of the queue.
execute as @a[scores={tpQueue=1,tpStep=1}] run function vanillateleport:playerteleport/tplist
#After a player has been selected, send that player a teleport request
execute as @a[scores={tpid=1..,tpStep=2}] run function vanillateleport:playerteleport/sendrequest
#if confirmation is recieved, teleport
execute as @a[scores={confirm=1}] run scoreboard players set @a[scores={tpStep=3}] tpStep 4
execute as @a[scores={tpStep=4}] run function vanillateleport:playerteleport/teleport
#if confirmation is denied, cancel teleport
execute as @a[scores={confirm=2}] run scoreboard players set @a[scores={tpStep=3}] tpStep 5
execute as @a[scores={tpStep=5}] run function vanillateleport:playerteleport/wrapup

#if player does nothing, they timeout and get kicked off the queue
scoreboard players remove @a[tag=active] timeOut 1
execute as @a[scores={timeOut=..0}] run tellraw @s {"text":"[Teleportation request timed out]","color":"red","bold":"true"}
execute as @a[scores={timeOut=..0}] run function vanillateleport:playerteleport/wrapup