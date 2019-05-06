tag @s remove active
execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance
execute as @s[scores={tpid=1}] at @e[tag=tp,tag=a1,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1,scores={confirm=1..}] run scoreboard players reset @s confirm
execute as @s[scores={tpid=2}] at @e[tag=tp,tag=a2,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1,scores={confirm=1..}] run scoreboard players reset @s confirm
execute as @s[scores={tpid=3}] at @e[tag=tp,tag=a3,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1,scores={confirm=1..}] run scoreboard players reset @s confirm
execute as @s[scores={tpid=4}] at @e[tag=tp,tag=a4,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1,scores={confirm=1..}] run scoreboard players reset @s confirm
execute as @s[scores={tpid=5}] at @e[tag=tp,tag=a5,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1,scores={confirm=1..}] run scoreboard players reset @s confirm
kill @e[tag=tp,scores={tpInstanceCheck=0}]
execute as @s run trigger tpid set 0
execute as @s run trigger ui set 0
scoreboard players reset @s tpid

scoreboard players remove #var maxTpInstance 1
execute if score #var maxTpInstance = #1 const run scoreboard players remove #var idBusy 1
scoreboard players enable @s rtp
scoreboard players set @s tpStep 0
scoreboard players reset @s timeOut
