execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance

execute as @e[tag=p] run scoreboard players operation @s pidCheck = @s pid
scoreboard players operation @e[tag=p] pidCheck -= @e[tag=a1,scores={tpInstanceCheck=0}] tppid
tp @e[tag=a1,scores={tpInstanceCheck=0}] @e[tag=p,scores={pidCheck=0},limit=1]
execute as @e[tag=p] run scoreboard players operation @s pidCheck = @s pid
scoreboard players operation @e[tag=p] pidCheck -= @e[tag=a2,scores={tpInstanceCheck=0}] tppid
tp @e[tag=a2,scores={tpInstanceCheck=0}] @e[tag=p,scores={pidCheck=0},limit=1]
execute as @e[tag=p] run scoreboard players operation @s pidCheck = @s pid
scoreboard players operation @e[tag=p] pidCheck -= @e[tag=a3,scores={tpInstanceCheck=0}] tppid
tp @e[tag=a3,scores={tpInstanceCheck=0}] @e[tag=p,scores={pidCheck=0},limit=1]
execute as @e[tag=p] run scoreboard players operation @s pidCheck = @s pid
scoreboard players operation @e[tag=p] pidCheck -= @e[tag=a4,scores={tpInstanceCheck=0}] tppid
tp @e[tag=a4,scores={tpInstanceCheck=0}] @e[tag=p,scores={pidCheck=0},limit=1]
execute as @e[tag=p] run scoreboard players operation @s pidCheck = @s pid
scoreboard players operation @e[tag=p] pidCheck -= @e[tag=a5,scores={tpInstanceCheck=0}] tppid
tp @e[tag=a5,scores={tpInstanceCheck=0}] @e[tag=p,scores={pidCheck=0},limit=1]
