#Use #var to iterate through idm_idIndex, start with 0
scoreboard players set #var idm_idIndex 0
#Track number of idIndexes deleted
scoreboard objectives add idm_idsCleaned
scoreboard players set #var idm_idsCleaned 0
#Recursively delete all unused indexes
function vteleport:idmanager/logout/block0
#Delete no longer needed variable
scoreboard objectives remove idm_idsCleaned
#reset the idm_loggedOut score for all players, even idm_offline, so they are no longer detected as being recently disconnected
scoreboard players reset * idm_loggedOut
#Reset idm_offline
scoreboard players set #var idm_offline 0
