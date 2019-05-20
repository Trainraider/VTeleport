
#handle players that just logged off
execute as @e[tag=idm.logoutId] run function vteleport:tpa/logout
#handle players that were offline and logged in.
execute as @a[tag=idm.offline] run function vteleport:tpa/wrapup
#General login handling
execute as @a[tag=idm.login] run function vteleport:tpa/login
#Generate list of players for teleport requester
execute as @a[scores={tpa=1}] run function vteleport:tpa/tpinit
execute as @a[scores={tpahere=1}] run function vteleport:tpa/tpinit
#show a list of the 5 next players after the back or forward buttons are pressed
execute as @a[scores={vtp_tpStep=1,vtp_ui=2}] run function vteleport:tpa/ui/forward
execute as @a[scores={vtp_tpStep=1,vtp_ui=1}] run function vteleport:tpa/ui/back
#After a player has been selected, send that player a teleport request
execute as @a[scores={vtp_tpStep=1,vtp_tpidIndex=1..}] run function vteleport:tpa/sendrequest
#if confirmation is recieved, teleport. If denial is recieved, send a notification of denial
execute as @a[scores={vtp_tpStep=2}] run function vteleport:tpa/confirmation
#reset the users arguments and kill their armor stands
execute as @a[scores={vtp_tpStep=3}] run function vteleport:tpa/wrapup

#if player does nothing, they timeout and get kicked off the queue
scoreboard players remove @a[tag=vtp_active] vtp_timeOut 1
execute as @a[scores={vtp_timeOut=..0}] run function vteleport:tpa/timeout
