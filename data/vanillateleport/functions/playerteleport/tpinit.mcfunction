scoreboard players set @s rtp 0
#allow user to use UI
scoreboard players enable @s tpid
scoreboard players enable @s ui

scoreboard players set @s tpStep 1
scoreboard players set @s timeOut 600
scoreboard players operation @s tpInstance = #var maxTpInstance
execute if score #var maxTpInstance = #1 const run scoreboard players add #var idBusy 1
scoreboard players add #var maxTpInstance 1

summon minecraft:armor_stand ~ ~ ~ {"Tags":[a1,tp,new]}
summon minecraft:armor_stand ~ ~ ~ {"Tags":[a2,tp,new]}
summon minecraft:armor_stand ~ ~ ~ {"Tags":[a3,tp,new]}
summon minecraft:armor_stand ~ ~ ~ {"Tags":[a4,tp,new]}
summon minecraft:armor_stand ~ ~ ~ {"Tags":[a5,tp,new]}

scoreboard players operation @e[tag=tp,tag=new,distance=..1] tpInstance = @s tpInstance
tag @e[tag=tp,tag=new,distance=..1] remove new
execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance
scoreboard players set @e[tag=a1,distance=..1] tpid 1
scoreboard players set @e[tag=a2,distance=..1] tpid 2
scoreboard players set @e[tag=a3,distance=..1] tpid 3
scoreboard players set @e[tag=a4,distance=..1] tpid 4
scoreboard players set @e[tag=a5,distance=..1] tpid 5

function vanillateleport:playerteleport/ui/tplist
