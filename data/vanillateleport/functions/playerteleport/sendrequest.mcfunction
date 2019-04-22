scoreboard players set @s timeOut 400
execute as @e[tag=p] run scoreboard players operation @s idCheck = @s id
scoreboard players operation @e[tag=p] idCheck -= @s tpid
scoreboard players enable @e[tag=p,scores={idCheck=0},limit=1] confirm
#tellraw @e[tag=p,scores={idCheck=0},limit=1] {"text":"","extra":[{"selector":"@s","bold":"true","color":"yellow"},{"color":"white","bold":"true","text":" would like to teleport to you \n"},{"text":"[Confirm] ","color":"green","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 1"}},{"text":"[Deny]","color":"red","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 2"}}]}
####temp,delete when tping to real players#####
scoreboard players set @e[tag=p,scores={idCheck=0},limit=1] confirm 1
###############################################
scoreboard players set @s tpid -1
scoreboard players set @s tpStep 3
