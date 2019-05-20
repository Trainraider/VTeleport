#Uncomment in final release
gamerule sendCommandFeedback false
tellraw @a {"text":"[Vanilla Teleport V0.3]","color":"yellow"}
#version
scoreboard objectives remove version
scoreboard objectives add version trigger
scoreboard players enable @a version

#Renew all area_effect_clouds
execute as @e[type=minecraft:area_effect_cloud,tag=perm] run data merge entity @s {Age:0}
#Create a timer for renewing area_effect_clouds before the expire.
kill @e[type=area_effect_cloud,tag=cloudTimer]
summon area_effect_cloud ~ ~ ~ {Radius:0.0001f,Duration:2147481000,Particle:"block air",Tags:[cloudTimer]}

execute unless entity @e[tag=vtp_spawnChunks] run summon area_effect_cloud ~ ~ ~ {Radius:0.0001f,Duration:2147483647,Particle:"block air",Tags:[vtp_spawnChunks,perm]}

#IDMANAGER#
###############################################################################
kill @e[tag=idm_idStruct]
kill @e[tag=idm.logoutId]
#remove objectives to ensure they are initialized correctly
scoreboard objectives remove idm_idIndex
scoreboard objectives remove idm_maxIdIndex
scoreboard objectives remove idm_loggedOut
scoreboard objectives remove idm_offline
scoreboard objectives remove idm_idIndexCheck
scoreboard objectives remove idm_idCheck

#permanent IDs tracking players persistantly
scoreboard objectives add idm_id dummy
#Used to check if two IDs match
scoreboard objectives add idm_idCheck dummy
#Index for iterating through currently online players
scoreboard objectives add idm_idIndex dummy
#this is the biggest ID, used for assigning vtp_new IDs
#also equal to number of currently online players
scoreboard objectives add idm_maxId dummy
scoreboard objectives add idm_maxIdIndex dummy
#marks freshly disconnected players in need of processing
scoreboard objectives add idm_loggedOut minecraft.custom:minecraft.leave_game
#Used by idm_offline score to count the number of freshly disconnected players.
#Marks players who have been idm_offline and need a vtp_new ID when they come online.
scoreboard objectives add idm_offline minecraft.custom:minecraft.leave_game
#Used to check if two IDs match
scoreboard objectives add idm_idIndexCheck dummy


scoreboard players set #var idm_maxIdIndex 0
scoreboard players add #var idm_maxId 0
scoreboard players set #var idm_offline 0

###############################################################################

#TPA#
###############################################################################

#remove objectives to ensure they are initialized correctly
scoreboard objectives remove tpa
scoreboard objectives remove vtp_ui
scoreboard objectives remove vtp_tpidIndex
scoreboard objectives remove vtp_tpid
scoreboard objectives remove vtp_tpInstance
scoreboard objectives remove vtp_tpInstncChck
scoreboard objectives remove vtp_tprInstance
scoreboard objectives remove vtp_tprInstnChck
scoreboard objectives remove vtp_maxTpInstnce
scoreboard objectives remove confirm
scoreboard objectives remove vtp_tpStep
scoreboard objectives remove vtp_timeOut
scoreboard objectives remove vtp_validId

tag @a[tag=vtp_tpa] remove vtp_tpa
tag @a[tag=vtp_tpahere] remove vtp_tpahere
tag @a[tag=vtp_active] remove vtp_active

#request a teleport
scoreboard objectives add tpa trigger
#Track what UI elements are clicked
scoreboard objectives add vtp_ui trigger
#confirm a teleport
scoreboard objectives add confirm trigger
#ID iterator of who to teleport to
scoreboard objectives add vtp_tpidIndex trigger
#ID of who to teleport to
scoreboard objectives add vtp_tpid dummy
#Keeps simultaneous teleport requests seperate
scoreboard objectives add vtp_tpInstance dummy
#Needed to check if tpInstances are equal
scoreboard objectives add vtp_tpInstncChck dummy
#ID of tp request received from another player
scoreboard objectives add vtp_tprInstance dummy
scoreboard objectives add vtp_tprInstnChck dummy
#keeps track of how many open teleport requests there are
scoreboard objectives add vtp_maxTpInstnce dummy
#Used for tracking which line to execute in tpa
#tracked by player, not #var
scoreboard objectives add vtp_tpStep dummy
#Used to automatically cancel teleports after some time
scoreboard objectives add vtp_timeOut dummy
#Stores whether currently selected ID is in use by a player
scoreboard objectives add vtp_validId dummy

scoreboard players set #var vtp_maxTpInstnce 1
kill @e[tag=vtp_tp]
scoreboard players enable @a tpa
scoreboard players set @a vtp_tpidIndex 0
###############################################################################

#TPAHERE#
###############################################################################
#For the sake of avoiding reduncancy and simplifying developement, tpahere will
#piggyback off tpa and use all the same files, but with new checks to decide
#who's going where.
scoreboard objectives remove tpahere
scoreboard objectives add tpahere trigger
scoreboard players enable @a tpahere
###############################################################################

#TPCANCEL#
###############################################################################
scoreboard objectives remove tpcancel
scoreboard objectives add tpcancel trigger
###############################################################################

#SPELLBOOK#
###############################################################################
scoreboard objectives remove tpbook
scoreboard objectives add tpbook trigger
###############################################################################
