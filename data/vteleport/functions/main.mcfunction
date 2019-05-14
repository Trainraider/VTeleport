###############################################################################
#VTeleport
#Version: V0.1.18
#Author u/Trainraider
#We live in a society. Bottom Text.
#
#Increment X in Version VY.Y.X after every commit
#       Above, below, and in init
#
#Issues:
#        Reciever logs out during request. Unexpected behavior occurs
#        Datapack reloads during request. The request timesout and wrapup occurs
#              decrementing vtp_maxTpInstnce incorrectly
#        Make sure all area_effect_clouds are truly permanent
#        Some comments are outdated and don't reflect current functionality.
#Roadmap:
# V0.2 create multiple lanes of teleportation handling
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

tellraw @a[scores={version=1..}] {"text":"[Vanilla Teleport V0.1.18]","color":"yellow"}
scoreboard players set @a[scores={version=1..}] version 0
scoreboard players enable @a version

execute unless entity @e[tag=vtp_spawnChunks] run summon area_effect_cloud ~ ~ ~ {Radius:0.0001f,Duration:2147483647,Particle:"block air",Tags:[vtp_spawnChunks]}
#ensures all players have a unique ID score for reference with other commands
function vteleport:idmanager/idmanager
#Enables players to request to teleport to other players
function vteleport:tpa/tpa
#Cancels teleport requests
function vteleport:tpcancel/tpcancel
#Gives a player a book with tp commands
function vteleport:tpbook/tpbook
