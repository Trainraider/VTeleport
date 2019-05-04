###############################################################################
#Current Version: V0.1.2
#Increment x in Version VY.Y.X after every commit
#Issues:
#UI Navigation
#        Back and forward buttons lack sanity checks
#        TPList does not skip unused IDs, and incorrectly works with last valid ID
#        TPList does not omit user
#If 2 players with teleport requests stand together, one player's confirmation
#        confirms both requests
#If a player recieves 2 tp requests, confirming one confirms all. Deny additional
#        requests when one is already open/ or else better track IDs.
#Currently and intentionally designed to work with entities of tag "p" instead
#        of players, for testing. Also bypasses request confirmation.
#Roadmap:
# V0.2 create multiple lanes of teleportation handling
# V0.3 create a permissions interface managed by external permissions datapack
#        basically just a permission level score requirement to warp and spawn
#        setting/deleting commands that is controlled externally. Permissions
#        plugin will inherit IDManager, which will be locally disabled (or enabled)
#        depending on if a compatible permissions datapack is detected through a score
#        it sets.
# V0.4 investigate bugs related to logout/in during tp requests
# V0.5 teleport here
# V0.6 teleport to homes
#        set homes
#        delete homes
# V0.7 teleport to Warps
#        set Warps
#        delete warps
# V0.8 teleport to spawn
#        set spawn
#        delete spawn
# V1.0 Full release after bug fixes.
###############################################################################

tellraw @a[scores={version=1..}] {"text":"Vanilla Teleport V0.1.2","color":"yellow"}
scoreboard players set @a[scores={version=1..}] version 0
scoreboard players enable @a version

#ensures all players have a unique ID score for reference with other commands
function vanillateleport:idmanager/idmanager
#Enables players to request to teleport to other players
function vanillateleport:playerteleport/playerteleport
