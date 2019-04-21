#Players who request teleportation are added to the queue. This function has a limitation of one
#active teleport request at a time.
execute as @a[scores={rtp=1}] run function test:playerteleport/joinqueue
#Generate a list of players to teleport to for the player at the front of the queue.
execute as @a[scores={tpQueue=1,tpStep=1}] run function test:playerteleport/tplist
#After a player has been selected, send that player a teleport request
execute as @a[scores={tpid=1..,tpStep=2}] run function test:playerteleport/sendrequest
#when confirmation is recieved, teleport
execute as @a[scores={confirm=1}] run scoreboard players set @a[scores={tpStep=3}] tpStep 4
execute as @a[scores={tpStep=4}] run function test:playerteleport/teleport
