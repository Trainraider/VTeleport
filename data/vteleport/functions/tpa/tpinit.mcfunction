scoreboard players set @s tpa 0
tag @s add active
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
