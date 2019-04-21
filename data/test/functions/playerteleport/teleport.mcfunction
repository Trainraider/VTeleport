tp @s @a[scores={idcheck=0},limit=1]
scoreboard players remove @a[scores={tpqueue=2..}] tpqueue 1
scoreboard players remove #maxtpqueue maxtpqueue 1
scoreboard players enable @s rtp
tag @s remove confirmed
tag @s remove tp
scoreboard players set @a[scores={confirm=1}] confirm 0
