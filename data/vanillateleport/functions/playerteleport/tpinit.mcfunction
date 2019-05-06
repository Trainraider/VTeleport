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
scoreboard players set @e[tag=a1,scores={tpInstanceCheck=0}] tpid 1
execute store success score @e[tag=a1,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a1,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={id=1}] pid
scoreboard players set @e[tag=a2,scores={tpInstanceCheck=0}] tpid 2
execute store success score @e[tag=a2,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a2,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={id=2}] pid
scoreboard players set @e[tag=a3,scores={tpInstanceCheck=0}] tpid 3
execute store success score @e[tag=a3,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a3,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={id=3}] pid
scoreboard players set @e[tag=a4,scores={tpInstanceCheck=0}] tpid 4
execute store success score @e[tag=a4,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a4,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={id=4}] pid
scoreboard players set @e[tag=a5,scores={tpInstanceCheck=0}] tpid 5
execute store success score @e[tag=a5,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a5,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={id=5}] pid

function vanillateleport:playerteleport/ui/tplist
