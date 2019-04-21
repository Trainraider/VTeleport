tp @s @a[scores={idcheck=0},limit=1]
scoreboard players remove @a[scores={tpqueue=2..}] tpqueue 1
scoreboard players remove #maxtpqueue maxtpqueue 1
execute if score #maxtpqueue maxtpqueue = #1 const run scoreboard players remove #var idBusy 1
scoreboard players enable @s rtp
tag @s remove confirmed
tag @s remove tp
scoreboard players set @a[scores={confirm=1}] confirm 0
