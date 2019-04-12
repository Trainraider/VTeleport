scoreboard objectives add id dummy
scoreboard objectives add online dummy
scoreboard objectives add offline minecraft.custom:minecraft.leave_game

scoreboard players reset * id
scoreboard players reset * online
scoreboard players reset * offline

scoreboard players set #offline offline 0
scoreboard players set #online online 0
scoreboard players set @a id 0
scoreboard objectives setdisplay sidebar id
