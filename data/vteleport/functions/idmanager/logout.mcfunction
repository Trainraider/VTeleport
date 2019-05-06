#reset the loggedOut score for all players, even offline, so they are no longer detected as being recently disconnected
scoreboard players reset * loggedOut
scoreboard players set #var cleanupNeeded 1
function vteleport:idmanager/logout/logoutloop
