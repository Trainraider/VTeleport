#Autodeny request if player already has an open request
execute as @a[scores={idm_idCheck=0,vtp_tprInstance=1..}] run trigger confirm set 3

#else send request
execute if entity @s[tag=vtp_tpa] unless entity @a[scores={idm_idCheck=0,vtp_tprInstance=1..}] run tellraw @a[scores={idm_idCheck=0}] {"text":"","extra":[{"selector":"@s","bold":"true","color":"yellow"},{"color":"white","bold":"true","text":" would like to teleport to you \n"},{"text":"[Confirm] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger confirm set 1"}},{"text":"[Deny]","color":"red","clickEvent":{"action":"run_command","value":"/trigger confirm set 2"}}]}
execute if entity @s[tag=vtp_tpahere] unless entity @a[scores={idm_idCheck=0,vtp_tprInstance=1..}] run tellraw @a[scores={idm_idCheck=0}] {"text":"","extra":[{"selector":"@s","bold":"true","color":"yellow"},{"color":"white","bold":"true","text":" would like you to teleport to them \n"},{"text":"[Confirm] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger confirm set 1"}},{"text":"[Deny]","color":"red","clickEvent":{"action":"run_command","value":"/trigger confirm set 2"}}]}
