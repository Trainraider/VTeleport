scoreboard players add #var maxIdIndex 1
#remove offline mark from player
scoreboard players reset @s offline
#assign them a valid unique ID
scoreboard players operation @s idIndex = #var maxIdIndex
scoreboard players set @s idIndexCheck -1
scoreboard players enable @s tpa
