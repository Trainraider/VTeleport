execute as @e[tag=p,scores={idCheck=0},limit=1] run trigger confirm set 0
execute as @e[tag=p,scores={tpStep=2}] run trigger tpid set 0
scoreboard players remove @e[tag=p,scores={tpQueue=2..}] tpQueue 1
scoreboard players remove #var maxTpQueue 1
execute if score #var maxTpQueue = #1 const run scoreboard players remove #var idBusy 1
scoreboard players enable @s rtp
scoreboard players set @e[tag=p,scores={confirm=1}] confirm 0
scoreboard players set @s tpStep 0
scoreboard players set @e[tag=p] confirm 0
scoreboard players reset @s timeOut
tag @s remove active
