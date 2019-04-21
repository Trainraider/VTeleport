scoreboard players set @s rtp 0
scoreboard players operation @s tpqueue = #maxtpqueue maxtpqueue
execute if score #maxtpqueue maxtpqueue = #1 const run scoreboard players add #var idBusy 1
scoreboard players add #maxtpqueue maxtpqueue 1
