execute as @a run scoreboard players operation @s idcheck = @s id
scoreboard players operation @a idcheck -= @s tpid
scoreboard players enable @a[scores={idcheck=0},limit=1] confirm
tellraw @a[scores={idcheck=0},limit=1] {"text":"","extra":[{"text":"[Confirm teleport]","color":"green","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 1"}},{"color":"white","text":" from "},{"selector":"@s","color":"white"},{"color":"white","text":" to you?"}]}
scoreboard players set @s tpid -1
tag @s add tp
