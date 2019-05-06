#version
scoreboard objectives remove version
scoreboard objectives add version trigger
scoreboard players enable @a version

#constants
scoreboard objectives add const dummy
scoreboard players set #0 const 0
scoreboard players set #1 const 1
scoreboard players set #2 const 2
scoreboard players set #3 const 3
scoreboard players set #4 const 4
scoreboard players set #5 const 5

#IDMANAGER#
###############################################################################
#remove objectives to ensure they are initialized correctly
scoreboard objectives remove idIndex
scoreboard objectives remove maxIdIndex
scoreboard objectives remove online
scoreboard objectives remove loggedOut
scoreboard objectives remove offline
scoreboard objectives remove idIndexCheck
scoreboard objectives remove idCheck
scoreboard objectives remove cleanupNeeded

#permanent IDs tracking players persistantly
scoreboard objectives add id dummy
#Used to check if two IDs match
scoreboard objectives add idCheck dummy
#Index for iterating through currently online players
scoreboard objectives add idIndex dummy
#this is the biggest ID, used for assigning new IDs
scoreboard objectives add maxId dummy
scoreboard objectives add maxIdIndex dummy
#Tracks how many players are currently online
scoreboard objectives add online dummy
#marks freshly disconnected players in need of processing
scoreboard objectives add loggedOut minecraft.custom:minecraft.leave_game
#Used by offline score to count the number of freshly disconnected players.
#Marks players who have been offline and need a new ID when they come online.
scoreboard objectives add offline minecraft.custom:minecraft.leave_game
#Used to check if two IDs match
scoreboard objectives add idIndexCheck dummy
#Used to note that ID garbage collection is necessary
scoreboard objectives add cleanupNeeded dummy
#Used to delay ID garbage collection until IDs are not in use.
#IDmanager is unaware of when IDs are in use. It is your responsibility to add 1
#to #var idBusy in your feature when you are using IDs and subtract 1 when you're
#done using IDs. This will delay garbage collection until all features are not
#using IDs. Garbage collection will scramble IDs if a player goes offline.
scoreboard objectives add idBusy dummy

scoreboard players set #var maxIdIndex 0
scoreboard players add #var maxId 0
scoreboard players set #var offline 0
scoreboard players set #var online 0
scoreboard players set #var cleanupNeeded 0
scoreboard players set #var idBusy 0
###############################################################################

#TELEPORT#
###############################################################################
#Teleport book command
#/give @p written_book{pages:["{\"text\":\"[Teleport to player]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/minecraft:trigger tpa set 1\"}}"],title:"Spell Book",author:Trainraider,display:{Lore:["Useful everyday spells."]}}


#remove objectives to ensure they are initialized correctly
scoreboard objectives remove tpa
scoreboard objectives remove ui
scoreboard objectives remove tpid
scoreboard objectives remove tpidCheck
scoreboard objectives remove tppid
scoreboard objectives remove tppidCheck
scoreboard objectives remove tpInstance
scoreboard objectives remove tpInstanceCheck
scoreboard objectives remove maxTpInstance
scoreboard objectives remove confirm
scoreboard objectives remove tpStep
scoreboard objectives remove timeOut
scoreboard objectives remove validId



#request a teleport
scoreboard objectives add tpa trigger
#Track what UI elements are clicked
scoreboard objectives add ui trigger
#confirm a teleport
scoreboard objectives add confirm trigger
#ID of who to teleport to
scoreboard objectives add tpid trigger
#Needed to check if IDs are equal
scoreboard objectives add tpidCheck dummy
#PID of who to teleport to
scoreboard objectives add tppid dummy
#Needed to check if IDs are equal
scoreboard objectives add tppidCheck dummy
#Keeps simultaneous teleport requests seperate
scoreboard objectives add tpInstance dummy
#Needed to check if tpInstances are equal
scoreboard objectives add tpInstanceCheck dummy
#keeps track of how many open teleport requests there are
scoreboard objectives add maxTpInstance dummy
#Used for tracking which line to execute in tpa
#tracked by player, not #var
scoreboard objectives add tpStep dummy
#Used to automatically cancel teleports after some time
scoreboard objectives add timeOut dummy
#Stores whether currently selected ID is in use by a player
scoreboard objectives add validId dummy

scoreboard players set #var maxTpInstance 1
kill @e[type=armor_stand,tag=tp]
scoreboard players enable @e[tag=p] tpa
scoreboard players set @e[tag=p] tpid 0
###############################################################################
