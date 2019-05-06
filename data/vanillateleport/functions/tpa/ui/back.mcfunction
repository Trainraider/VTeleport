scoreboard players enable @s ui
execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance

execute if entity @e[tag=a1,scores={tpInstanceCheck=0,tpid=6..}] run function vanillateleport:tpa/ui/back/block0

scoreboard players set @s ui 0
