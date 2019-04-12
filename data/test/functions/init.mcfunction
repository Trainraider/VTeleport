#remove objectives to ensure they are initialized correctly
scoreboard objectives remove id
scoreboard objectives remove maxId
scoreboard objectives remove online
scoreboard objectives remove loggedOut
scoreboard objectives remove offline

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


scoreboard players set #maxId maxId 0
scoreboard players set #offline offline 0
scoreboard players set #online online 0
