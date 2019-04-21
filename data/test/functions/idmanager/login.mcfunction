
scoreboard players add #online online 1
scoreboard players add #maxId maxId 1
#remove offline mark from player
scoreboard players reset @s offline
#assign them a valid unique ID
scoreboard players operation @s id = #maxId maxId
scoreboard players set @s idcheck -1
scoreboard players enable @s tpid
scoreboard players enable @s rtp
