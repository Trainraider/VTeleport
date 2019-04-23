scoreboard players enable @s ui
execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance
scoreboard players remove @e[tag=a1,scores={tpInstanceCheck=0}] tpid 5
scoreboard players remove @e[tag=a2,scores={tpInstanceCheck=0}] tpid 5
scoreboard players remove @e[tag=a3,scores={tpInstanceCheck=0}] tpid 5
scoreboard players remove @e[tag=a4,scores={tpInstanceCheck=0}] tpid 5
scoreboard players remove @e[tag=a5,scores={tpInstanceCheck=0}] tpid 5
scoreboard players set @s ui 0
function vanillateleport:playerteleport/ui/tplist
