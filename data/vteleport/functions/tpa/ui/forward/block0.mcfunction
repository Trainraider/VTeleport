scoreboard players add @e[tag=vtp_a1,scores={vtp_tpInstncChck=0}] vtp_tpidIndex 5
execute as @a run scoreboard players operation @s idm_idIndexCheck = @s idm_idIndex
scoreboard players operation @a idm_idIndexCheck -= @e[tag=vtp_a1,scores={vtp_tpInstncChck=0}] vtp_tpidIndex
execute store success score @e[tag=vtp_a1,scores={vtp_tpInstncChck=0}] vtp_validId run scoreboard players operation @e[tag=vtp_a1,scores={vtp_tpInstncChck=0}] vtp_tpid = @a[limit=1,scores={idm_idIndexCheck=0}] idm_id

scoreboard players add @e[tag=vtp_a2,scores={vtp_tpInstncChck=0}] vtp_tpidIndex 5
execute store success score @e[tag=vtp_a2,scores={vtp_tpInstncChck=0}] vtp_validId run scoreboard players operation @e[tag=vtp_a2,scores={vtp_tpInstncChck=0}] vtp_tpid = @a[limit=1,scores={idm_idIndexCheck=1}] idm_id

scoreboard players add @e[tag=vtp_a3,scores={vtp_tpInstncChck=0}] vtp_tpidIndex 5
execute store success score @e[tag=vtp_a3,scores={vtp_tpInstncChck=0}] vtp_validId run scoreboard players operation @e[tag=vtp_a3,scores={vtp_tpInstncChck=0}] vtp_tpid = @a[limit=1,scores={idm_idIndexCheck=2}] idm_id

scoreboard players add @e[tag=vtp_a4,scores={vtp_tpInstncChck=0}] vtp_tpidIndex 5
execute store success score @e[tag=vtp_a4,scores={vtp_tpInstncChck=0}] vtp_validId run scoreboard players operation @e[tag=vtp_a4,scores={vtp_tpInstncChck=0}] vtp_tpid = @a[limit=1,scores={idm_idIndexCheck=3}] idm_id

scoreboard players add @e[tag=vtp_a5,scores={vtp_tpInstncChck=0}] vtp_tpidIndex 5
execute store success score @e[tag=vtp_a5,scores={vtp_tpInstncChck=0}] vtp_validId run scoreboard players operation @e[tag=vtp_a5,scores={vtp_tpInstncChck=0}] vtp_tpid = @a[limit=1,scores={idm_idIndexCheck=4}] idm_id

function vteleport:tpa/ui/tplist
