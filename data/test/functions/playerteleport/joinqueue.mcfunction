scoreboard players set @s rtp 0
scoreboard players operation @s tpQueue = #var maxTpQueue
execute if score #var maxTpQueue = #1 const run scoreboard players add #var idBusy 1
scoreboard players add #var maxTpQueue 1
