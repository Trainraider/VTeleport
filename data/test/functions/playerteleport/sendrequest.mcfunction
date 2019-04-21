execute as @a run scoreboard players operation @s idCheck = @s id
scoreboard players operation @a idCheck -= @s tpid
scoreboard players enable @a[scores={idCheck=0},limit=1] confirm
tellraw @a[scores={idCheck=0},limit=1] {"text":"","extra":[{"text":"[Confirm teleport]","color":"green","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 1"}},{"color":"white","text":" from "},{"selector":"@s","color":"white"},{"color":"white","text":" to you?"}]}
scoreboard players set @s tpid -1
scoreboard players set @s tpStep 3
