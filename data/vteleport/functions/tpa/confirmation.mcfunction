#Mark all armor stands part of the current request with vtp_tpInstncChck 0
execute as @e[tag=vtp_tp] run scoreboard players operation @s vtp_tpInstncChck = @s vtp_tpInstance
scoreboard players operation @e[tag=vtp_tp] vtp_tpInstncChck -= @s vtp_tpInstance
#Find the selected player and mark them with idm_idCheck 0
execute as @a run scoreboard players operation @s idm_idCheck = @s idm_id
scoreboard players operation @a idm_idCheck -= @s vtp_tpid

#If confirmation has been accepted or denied, user moves on to next step.
execute if entity @a[scores={confirm=1..,idm_idCheck=0}] run scoreboard players set @s vtp_tpStep 3

#User teleports to the player they selected who has accepted the request.
tp @s @a[scores={confirm=1,idm_idCheck=0},limit=1]

#User is told that their teleport request was denied.
execute if entity @a[scores={confirm=2,idm_idCheck=0}] run tellraw @s {"text":"Teleport request denied", "color":"red","bold":"true"}

#User is told that their teleport request was denied because that player already has a request.
execute if entity @a[scores={confirm=3,idm_idCheck=0}] run tellraw @s {"text":"That player already has an open request. Try again later", "color":"red","bold":"true"}
