execute as @a run scoreboard players operation @s idcheck = @s id
scoreboard players operation @a idcheck -= @s tpid
tp @s @a[scores={idcheck=0},limit=1]
scoreboard players set @s tpid -1
scoreboard players remove @a[scores={tpqueue=2..}] tpqueue 1
scoreboard players remove #maxtpqueue maxtpqueue 1
scoreboard players enable @s rtp
