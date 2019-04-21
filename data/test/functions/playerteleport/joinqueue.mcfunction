#reset rtp so this function doesn't loop
scoreboard players set @s rtp 0
#Assign player a position in the tp queue. Only 1 player can tp at a time.
scoreboard players operation @s tpQueue = #var maxTpQueue
#if this is the first player to join the queue, notify the garbage collector that IDs are in use.
execute if score #var maxTpQueue = #1 const run scoreboard players add #var idBusy 1
#Increment maxTpQueue
scoreboard players add #var maxTpQueue 1
#send player to next line of code
scoreboard players set @s tpStep 1
