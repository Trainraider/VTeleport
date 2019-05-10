scoreboard players add #var idm_maxIdIndex 1
#remove idm_offline mark from player
scoreboard players reset @s idm_offline
#assign them a valid unique ID
scoreboard players operation @s idm_idIndex = #var idm_maxIdIndex
scoreboard players set @s idm_idIndexCheck -1
scoreboard players enable @s tpa
