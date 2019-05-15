execute as @e[tag=vtp_tp] run scoreboard players operation @s vtp_tpInstncChck = @s vtp_tpInstance
scoreboard players operation @e[tag=vtp_tp] vtp_tpInstncChck -= @s vtp_tpInstance

execute as @a run scoreboard players operation @s idm_idCheck = @s idm_id
scoreboard players operation @a idm_idCheck -= @e[tag=vtp_a1,scores={vtp_tpInstncChck=0}] vtp_tpid
tp @e[tag=vtp_a1,scores={vtp_tpInstncChck=0}] @a[scores={idm_idCheck=0},limit=1]
execute as @a run scoreboard players operation @s idm_idCheck = @s idm_id
scoreboard players operation @a idm_idCheck -= @e[tag=vtp_a2,scores={vtp_tpInstncChck=0}] vtp_tpid
tp @e[tag=vtp_a2,scores={vtp_tpInstncChck=0}] @a[scores={idm_idCheck=0},limit=1]
execute as @a run scoreboard players operation @s idm_idCheck = @s idm_id
scoreboard players operation @a idm_idCheck -= @e[tag=vtp_a3,scores={vtp_tpInstncChck=0}] vtp_tpid
tp @e[tag=vtp_a3,scores={vtp_tpInstncChck=0}] @a[scores={idm_idCheck=0},limit=1]
execute as @a run scoreboard players operation @s idm_idCheck = @s idm_id
scoreboard players operation @a idm_idCheck -= @e[tag=vtp_a4,scores={vtp_tpInstncChck=0}] vtp_tpid
tp @e[tag=vtp_a4,scores={vtp_tpInstncChck=0}] @a[scores={idm_idCheck=0},limit=1]
execute as @a run scoreboard players operation @s idm_idCheck = @s idm_id
scoreboard players operation @a idm_idCheck -= @e[tag=vtp_a5,scores={vtp_tpInstncChck=0}] vtp_tpid
tp @e[tag=vtp_a5,scores={vtp_tpInstncChck=0}] @a[scores={idm_idCheck=0},limit=1]
