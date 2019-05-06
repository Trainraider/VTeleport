scoreboard players enable @s ui
execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance

execute unless score @e[tag=a5,scores={tpInstanceCheck=0},limit=1] tpid >= #var maxId run function vanillateleport:playerteleport/ui/forward/block0

scoreboard players set @s ui 0
