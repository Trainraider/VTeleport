
scoreboard players add #var online 1
scoreboard players add #var maxId 1
#remove offline mark from player
scoreboard players reset @s offline
#assign them a valid unique ID
scoreboard players operation @s id = #var maxId
scoreboard players set @s idCheck -1
scoreboard players enable @s rtp
