#Remove the tpa trigger from user to tpinit runs only once
scoreboard players set @s tpa 0
#mark the user as having created an active teleport request
tag @s add active
#allow user to use UI
scoreboard players enable @s tpid
scoreboard players enable @s ui

#sends execution to next step after this
scoreboard players set @s tpStep 1
#sets a 30 second timout for this request
scoreboard players set @s timeOut 600
#assign this request a unique instance id so it is processed seperately from simultaneous requests
scoreboard players operation @s tpInstance = #var maxTpInstance
scoreboard players add #var maxTpInstance 1

#Summon 5 armor stands who follow players that you may send your request to.
#Marked as new so that they alone recieve the correct tpInstance
summon minecraft:armor_stand ~ ~ ~ {"Tags":[a1,tp,new]}
summon minecraft:armor_stand ~ ~ ~ {"Tags":[a2,tp,new]}
summon minecraft:armor_stand ~ ~ ~ {"Tags":[a3,tp,new]}
summon minecraft:armor_stand ~ ~ ~ {"Tags":[a4,tp,new]}
summon minecraft:armor_stand ~ ~ ~ {"Tags":[a5,tp,new]}

#assign tpInstance to newly created armor stands.
scoreboard players operation @e[tag=tp,tag=new,distance=..1] tpInstance = @s tpInstance
tag @e[tag=tp,tag=new,distance=..1] remove new

#Mark all armor stands that are part of the current request with a tpInstanceCheck of 0
execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance
#Give the armor stands IDs of players to follow
scoreboard players set @e[tag=a1,scores={tpInstanceCheck=0}] tpid 1
execute store success score @e[tag=a1,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a1,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idIndex=1}] id
scoreboard players set @e[tag=a2,scores={tpInstanceCheck=0}] tpid 2
execute store success score @e[tag=a2,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a2,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idIndex=2}] id
scoreboard players set @e[tag=a3,scores={tpInstanceCheck=0}] tpid 3
execute store success score @e[tag=a3,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a3,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idIndex=3}] id
scoreboard players set @e[tag=a4,scores={tpInstanceCheck=0}] tpid 4
execute store success score @e[tag=a4,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a4,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idIndex=4}] id
scoreboard players set @e[tag=a5,scores={tpInstanceCheck=0}] tpid 5
execute store success score @e[tag=a5,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a5,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idIndex=5}] id

function vteleport:tpa/ui/tplist
