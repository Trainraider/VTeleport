execute as @a run scoreboard players operation @s idm_idCheck = @s idm_id
scoreboard players operation @a idm_idCheck -= @s vtp_tpid
tellraw @s {"text":"[Teleportation request timed out]","color":"red","bold":"true"}
tellraw @a[scores={idm_idCheck=0}] {"text":"[Teleportation request timed out]","color":"red","bold":"true"}
function vteleport:tpa/wrapup
