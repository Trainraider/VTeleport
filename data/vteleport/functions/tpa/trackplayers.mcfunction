execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance

execute as @e[tag=p] run scoreboard players operation @s idCheck = @s id
scoreboard players operation @e[tag=p] idCheck -= @e[tag=a1,scores={tpInstanceCheck=0}] tppid
tp @e[tag=a1,scores={tpInstanceCheck=0}] @e[tag=p,scores={idCheck=0},limit=1]
execute as @e[tag=p] run scoreboard players operation @s idCheck = @s id
scoreboard players operation @e[tag=p] idCheck -= @e[tag=a2,scores={tpInstanceCheck=0}] tppid
tp @e[tag=a2,scores={tpInstanceCheck=0}] @e[tag=p,scores={idCheck=0},limit=1]
execute as @e[tag=p] run scoreboard players operation @s idCheck = @s id
scoreboard players operation @e[tag=p] idCheck -= @e[tag=a3,scores={tpInstanceCheck=0}] tppid
tp @e[tag=a3,scores={tpInstanceCheck=0}] @e[tag=p,scores={idCheck=0},limit=1]
execute as @e[tag=p] run scoreboard players operation @s idCheck = @s id
scoreboard players operation @e[tag=p] idCheck -= @e[tag=a4,scores={tpInstanceCheck=0}] tppid
tp @e[tag=a4,scores={tpInstanceCheck=0}] @e[tag=p,scores={idCheck=0},limit=1]
execute as @e[tag=p] run scoreboard players operation @s idCheck = @s id
scoreboard players operation @e[tag=p] idCheck -= @e[tag=a5,scores={tpInstanceCheck=0}] tppid
tp @e[tag=a5,scores={tpInstanceCheck=0}] @e[tag=p,scores={idCheck=0},limit=1]
