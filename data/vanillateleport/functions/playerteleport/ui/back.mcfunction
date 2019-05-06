scoreboard players enable @s ui
execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance

scoreboard players remove @e[tag=a1,scores={tpInstanceCheck=0}] tpid 5
execute as @e[tag=p] run scoreboard players operation @s idCheck = @s id
scoreboard players operation @e[tag=p] idCheck -= @e[tag=a1,scores={tpInstanceCheck=0}] tpid
execute store success score @e[tag=a1,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a1,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idCheck=0}] pid

scoreboard players remove @e[tag=a2,scores={tpInstanceCheck=0}] tpid 5
execute store success score @e[tag=a2,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a2,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idCheck=1}] pid

scoreboard players remove @e[tag=a3,scores={tpInstanceCheck=0}] tpid 5
execute store success score @e[tag=a3,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a3,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idCheck=2}] pid

scoreboard players remove @e[tag=a4,scores={tpInstanceCheck=0}] tpid 5
execute store success score @e[tag=a4,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a4,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idCheck=3}] pid

scoreboard players remove @e[tag=a5,scores={tpInstanceCheck=0}] tpid 5
execute store success score @e[tag=a5,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a5,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idCheck=4}] pid

scoreboard players set @s ui 0
function vanillateleport:playerteleport/ui/tplist
