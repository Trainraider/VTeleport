scoreboard players remove @e[tag=a1,scores={tpInstanceCheck=0}] tpid 5
execute as @e[tag=p] run scoreboard players operation @s idIndexCheck = @s idIndex
scoreboard players operation @e[tag=p] idIndexCheck -= @e[tag=a1,scores={tpInstanceCheck=0}] tpid
execute store success score @e[tag=a1,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a1,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idIndexCheck=0}] id

scoreboard players remove @e[tag=a2,scores={tpInstanceCheck=0}] tpid 5
execute store success score @e[tag=a2,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a2,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idIndexCheck=1}] id

scoreboard players remove @e[tag=a3,scores={tpInstanceCheck=0}] tpid 5
execute store success score @e[tag=a3,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a3,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idIndexCheck=2}] id

scoreboard players remove @e[tag=a4,scores={tpInstanceCheck=0}] tpid 5
execute store success score @e[tag=a4,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a4,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idIndexCheck=3}] id

scoreboard players remove @e[tag=a5,scores={tpInstanceCheck=0}] tpid 5
execute store success score @e[tag=a5,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a5,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idIndexCheck=4}] id

function vanillateleport:playerteleport/ui/tplist
