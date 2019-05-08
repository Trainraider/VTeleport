#Autodeny request if player already has an open request
execute if entity @s[scores={tprInstance=1..}] run scoreboard players set @s confirm 3
#else send request
execute unless entity @s[scores={tprInstance=1..}] run tellraw @s {"text":"","extra":[{"selector":"@s","bold":"true","color":"yellow"},{"color":"white","bold":"true","text":" would like to teleport to you \n"},{"text":"[Confirm] ","color":"green","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 1"}},{"text":"[Deny]","color":"red","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 2"}}]}
