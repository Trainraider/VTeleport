#teleport armor stands to the players they're following
function vteleport:tpa/trackplayers
#Create the list of players you can teleport to.
tellraw @s {"text":"Teleport to","bold":"true","color":"aqua"}
execute at @e[tag=vtp_a1,scores={vtp_tpInstncChck=0,vtp_validId=1..}] unless score @a[distance=..1,limit=1,sort=nearest] idm_id = @s idm_id run tellraw @s {"text":"","extra":[{"selector":"@a[distance=..1,limit=1,sort=nearest]","color":"yellow"},{"text":" [X]","bold":"true","color":"green","clickEvent":{"action":"run_command","value":"/trigger vtp_tpidIndex set 1"}}]}
execute at @e[tag=vtp_a2,scores={vtp_tpInstncChck=0,vtp_validId=1..}] unless score @a[distance=..1,limit=1,sort=nearest] idm_id = @s idm_id run tellraw @s {"text":"","extra":[{"selector":"@a[distance=..1,limit=1,sort=nearest]","color":"yellow"},{"text":" [X]","bold":"true","color":"green","clickEvent":{"action":"run_command","value":"/trigger vtp_tpidIndex set 2"}}]}
execute at @e[tag=vtp_a3,scores={vtp_tpInstncChck=0,vtp_validId=1..}] unless score @a[distance=..1,limit=1,sort=nearest] idm_id = @s idm_id run tellraw @s {"text":"","extra":[{"selector":"@a[distance=..1,limit=1,sort=nearest]","color":"yellow"},{"text":" [X]","bold":"true","color":"green","clickEvent":{"action":"run_command","value":"/trigger vtp_tpidIndex set 3"}}]}
execute at @e[tag=vtp_a4,scores={vtp_tpInstncChck=0,vtp_validId=1..}] unless score @a[distance=..1,limit=1,sort=nearest] idm_id = @s idm_id run tellraw @s {"text":"","extra":[{"selector":"@a[distance=..1,limit=1,sort=nearest]","color":"yellow"},{"text":" [X]","bold":"true","color":"green","clickEvent":{"action":"run_command","value":"/trigger vtp_tpidIndex set 4"}}]}
execute at @e[tag=vtp_a5,scores={vtp_tpInstncChck=0,vtp_validId=1..}] unless score @a[distance=..1,limit=1,sort=nearest] idm_id = @s idm_id run tellraw @s {"text":"","extra":[{"selector":"@a[distance=..1,limit=1,sort=nearest]","color":"yellow"},{"text":" [X]","bold":"true","color":"green","clickEvent":{"action":"run_command","value":"/trigger vtp_tpidIndex set 5"}}]}
#Create the forward and back buttons
tellraw @s {"text":"[<<<]","bold":"true","color":"green","clickEvent":{"action":"run_command","value":"/trigger vtp_ui set 1"},"extra":[{"text":"[Cancel]","bold":"true","color":"red","clickEvent":{"action":"run_command","value":"/trigger tpcancel set 1"}},{"text":"[>>>]","bold":"true","color":"green","clickEvent":{"action":"run_command","value":"/trigger vtp_ui set 2"}}]}
