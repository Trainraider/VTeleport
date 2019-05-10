###############################################################################
#VTeleport
#Version: V0.1.16
#Author u/Trainraider
#We live in a society. Bottom Text.
#
#Increment X in Version VY.Y.X after every commit
#
#Issues:
#        Logout during request:
#                Logout after tpinit:
#                      they get tags and scores and enabled triggers
#                      5 armor stands are left in world
#
#                      upon logging in later, request has not timed out.
#                      Armor stands could be made to detect when their host is gone.
#                
#                after send request:
#                      upon logging in later, request has not timed out.
#                      selected player has confirm enabled and can respond to offline player
#                      confirmation is processed when both involved come back online and tp occurs
#
#                just after confirmation:
#                      wrapup is delayed until login
#        Some comments are outdated and don't reflect current functionality.
#Roadmap:
# V0.2 create multiple lanes of teleportation handling
#        investigate bugs related to logout during tp requests
#        Optimize and remove behavior in tpa that's no longer necessary due to
#                the user storing the request reciever's id.
# V0.3 teleport here
#        named tpahere
# V0.4 favorite players list for simplifying tp requests when lots of players are
#        online
# V0.5 teleport to spawn
#        set spawn
#        delete spawn
# V0.6 create a permissions interface managed by external permissions datapack
#        basically just a permission level score requirement to warp and spawn
#        setting/deleting commands that is controlled externally. Permissions
#        plugin will inherit IDManager, which will be locally disabled (or enabled)
#        depending on if a compatible permissions datapack is detected through a score
#        it sets.
# V0.7 teleport to homes
#        set homes
#        delete homes
# V0.8 teleport to Warps
#        set Warps
#        delete warps
# V1.0 Full release after bug fixes.
###############################################################################

tellraw @a[scores={version=1..}] {"text":"Vanilla Teleport V0.1.16","color":"yellow"}
scoreboard players set @a[scores={version=1..}] version 0
scoreboard players enable @a version

#ensures all players have a unique ID score for reference with other commands
function vteleport:idmanager/idmanager
#Enables players to request to teleport to other players
function vteleport:tpa/tpa
#Cancels teleport requests
function vteleport:tpcancel/tpcancel
#Gives a player a book with tp commands
function vteleport:tpbook/tpbook
