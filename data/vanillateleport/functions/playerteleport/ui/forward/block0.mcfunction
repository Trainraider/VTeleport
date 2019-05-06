scoreboard players add @e[tag=a1,scores={tpInstanceCheck=0}] tpid 5
execute as @e[tag=p] run scoreboard players operation @s idCheck = @s id
scoreboard players operation @e[tag=p] idCheck -= @e[tag=a1,scores={tpInstanceCheck=0}] tpid
execute store success score @e[tag=a1,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a1,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idCheck=0}] pid

scoreboard players add @e[tag=a2,scores={tpInstanceCheck=0}] tpid 5
execute store success score @e[tag=a2,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a2,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idCheck=1}] pid

scoreboard players add @e[tag=a3,scores={tpInstanceCheck=0}] tpid 5
execute store success score @e[tag=a3,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a3,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idCheck=2}] pid

scoreboard players add @e[tag=a4,scores={tpInstanceCheck=0}] tpid 5
execute store success score @e[tag=a4,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a4,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idCheck=3}] pid

scoreboard players add @e[tag=a5,scores={tpInstanceCheck=0}] tpid 5
execute store success score @e[tag=a5,scores={tpInstanceCheck=0}] validId run scoreboard players operation @e[tag=a5,scores={tpInstanceCheck=0}] tppid = @e[tag=p,limit=1,scores={idCheck=4}] pid

function vanillateleport:playerteleport/ui/tplist
