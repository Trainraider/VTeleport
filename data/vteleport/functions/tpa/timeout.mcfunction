execute as @a run scoreboard players operation @s idCheck = @s id
scoreboard players operation @a idCheck -= @s tppid
tellraw @s {"text":"[Teleportation request timed out]","color":"red","bold":"true"}
tellraw @a[scores={idCheck=0}] {"text":"[Teleportation request timed out]","color":"red","bold":"true"}
function vteleport:tpa/wrapup
