scoreboard players add #var idIndex 1
execute as @e[tag=p] run scoreboard players operation @s idIndexCheck = @s idIndex
scoreboard players operation @e[tag=p] idIndexCheck -= #var idIndex
execute unless entity @e[tag=p,scores={idIndexCheck=0}] run function vteleport:idmanager/logout/block1
execute if score #var idIndex < #var maxIdIndex run function vteleport:idmanager/logout/block0
