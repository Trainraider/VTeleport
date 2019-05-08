#Use #var to iterate through idIndex, start with 0
scoreboard players set #var idIndex 0
#Track number of idIndexes deleted
scoreboard objectives add idsCleaned
scoreboard players set #var idsCleaned 0
#Recursively delete all unused indexes
function vteleport:idmanager/logout/block0
#Delete no longer needed variable
scoreboard objectives remove idsCleaned
#reset the loggedOut score for all players, even offline, so they are no longer detected as being recently disconnected
scoreboard players reset * loggedOut
#Reset offline
scoreboard players set #var offline 0
