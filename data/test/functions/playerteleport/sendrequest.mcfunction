execute as @a run scoreboard players operation @s idCheck = @s id
scoreboard players operation @a idCheck -= @s tpid
scoreboard players enable @a[scores={idCheck=0},limit=1] confirm
tellraw @a[scores={idCheck=0},limit=1] {"text":"","extra":[{"selector":"@s","bold":"true","color":"yellow"},{"color":"white","bold":"true","text":" would like to teleport to you \n"},{"text":"[Confirm] ","color":"green","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 1"}},{"text":"[Deny]","color":"red","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 2"}}]}
scoreboard players set @s tpid -1
scoreboard players set @s tpStep 3
