tp @s @a[scores={idCheck=0},limit=1]
scoreboard players remove @a[scores={tpQueue=2..}] tpQueue 1
scoreboard players remove #var maxTpQueue 1
execute if score #var maxTpQueue = #1 const run scoreboard players remove #var idBusy 1
scoreboard players enable @s rtp
scoreboard players set @a[scores={confirm=1}] confirm 0
scoreboard players set @s tpStep 0
