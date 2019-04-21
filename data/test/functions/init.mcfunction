#IDMANAGER#
###############################################################################
#remove objectives to ensure they are initialized correctly
scoreboard objectives remove id
scoreboard objectives remove maxId
scoreboard objectives remove online
scoreboard objectives remove loggedOut
scoreboard objectives remove offline
scoreboard objectives remove idcheck

#IDs for assigning to players
scoreboard objectives add id dummy
#this is the biggest ID, used for assigning new IDs
scoreboard objectives add maxId dummy
#Tracks how many players are currently online
scoreboard objectives add online dummy
#marks freshly disconnected players in need of processing
scoreboard objectives add loggedOut minecraft.custom:minecraft.leave_game
#Used by #offline to count the number of freshly disconnected players.
#Marks players who have been offline and need a new ID when they come online.
scoreboard objectives add offline minecraft.custom:minecraft.leave_game
#Used to check if two IDs match
scoreboard objectives add idcheck dummy


scoreboard players set #maxId maxId 0
scoreboard players set #offline offline 0
scoreboard players set #online online 0
###############################################################################

#TELEPORT#
###############################################################################
#Teleport book command
#/give @p written_book{pages:["{\"text\":\"[Teleport to player]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/minecraft:trigger rtp set 1\"}}"],title:"Spell Book",author:Trainraider,display:{Lore:["Useful everyday spells."]}}


#remove objectives to ensure they are initialized correctly
scoreboard objectives remove rtp
scoreboard objectives remove tpid
scoreboard objectives remove tpqueue
scoreboard objectives remove maxtpqueue

#request a teleport
scoreboard objectives add rtp trigger
#ID of who to teleport to
scoreboard objectives add tpid trigger
#teleportation queue for handling multiple teleport requests at once
scoreboard objectives add tpqueue dummy
#Used for assigning queue numbers
scoreboard objectives add maxtpqueue dummy

scoreboard players set #maxtpqueue maxtpqueue 1
scoreboard players enable @a rtp
scoreboard players set @a tpid 0
###############################################################################
