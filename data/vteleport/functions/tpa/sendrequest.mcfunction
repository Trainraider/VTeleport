#Since an interaction has occurred refresh timeout to 30 seconds
scoreboard players set @s timeOut 600
#Mark all armor stands that are part of the current request with tpInstanceCheck 0
execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance

#Only one of these lines will execute depending on which button was pressed. Allow the selected player to respond to a tp request
execute as @s[scores={tpid=1}] at @e[tag=tp,tag=a1,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1] run scoreboard players enable @s confirm
execute as @s[scores={tpid=2}] at @e[tag=tp,tag=a2,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1] run scoreboard players enable @s confirm
execute as @s[scores={tpid=3}] at @e[tag=tp,tag=a3,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1] run scoreboard players enable @s confirm
execute as @s[scores={tpid=4}] at @e[tag=tp,tag=a4,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1] run scoreboard players enable @s confirm
execute as @s[scores={tpid=5}] at @e[tag=tp,tag=a5,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1] run scoreboard players enable @s confirm
#re-enable these lines when tping real players###
#Only one of these lines will execute depending on which button was pressed. Sends a tp request to the selected player
#execute as @s[scores={tpid=1}] at @e[tag=tp,tag=a1,scores={tpInstanceCheck=0}] run tellraw @e[tag=p,distance=..1] {"text":"","extra":[{"selector":"@s","bold":"true","color":"yellow"},{"color":"white","bold":"true","text":" would like to teleport to you \n"},{"text":"[Confirm] ","color":"green","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 1"}},{"text":"[Deny]","color":"red","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 2"}}]}
#execute as @s[scores={tpid=2}] at @e[tag=tp,tag=a2,scores={tpInstanceCheck=0}] run tellraw @e[tag=p,distance=..1] {"text":"","extra":[{"selector":"@s","bold":"true","color":"yellow"},{"color":"white","bold":"true","text":" would like to teleport to you \n"},{"text":"[Confirm] ","color":"green","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 1"}},{"text":"[Deny]","color":"red","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 2"}}]}
#execute as @s[scores={tpid=3}] at @e[tag=tp,tag=a3,scores={tpInstanceCheck=0}] run tellraw @e[tag=p,distance=..1] {"text":"","extra":[{"selector":"@s","bold":"true","color":"yellow"},{"color":"white","bold":"true","text":" would like to teleport to you \n"},{"text":"[Confirm] ","color":"green","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 1"}},{"text":"[Deny]","color":"red","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 2"}}]}
#execute as @s[scores={tpid=4}] at @e[tag=tp,tag=a4,scores={tpInstanceCheck=0}] run tellraw @e[tag=p,distance=..1] {"text":"","extra":[{"selector":"@s","bold":"true","color":"yellow"},{"color":"white","bold":"true","text":" would like to teleport to you \n"},{"text":"[Confirm] ","color":"green","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 1"}},{"text":"[Deny]","color":"red","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 2"}}]}
#execute as @s[scores={tpid=5}] at @e[tag=tp,tag=a5,scores={tpInstanceCheck=0}] run tellraw @e[tag=p,distance=..1] {"text":"","extra":[{"selector":"@s","bold":"true","color":"yellow"},{"color":"white","bold":"true","text":" would like to teleport to you \n"},{"text":"[Confirm] ","color":"green","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 1"}},{"text":"[Deny]","color":"red","clickEvent":{"action":"run_command","value":"/minecraft:trigger confirm set 2"}}]}

####temp,delete when tping to real players#####
execute as @s[scores={tpid=1}] at @e[tag=tp,tag=a1,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1] run scoreboard players set @s confirm 1
execute as @s[scores={tpid=2}] at @e[tag=tp,tag=a2,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1] run scoreboard players set @s confirm 1
execute as @s[scores={tpid=3}] at @e[tag=tp,tag=a3,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1] run scoreboard players set @s confirm 1
execute as @s[scores={tpid=4}] at @e[tag=tp,tag=a4,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1] run scoreboard players set @s confirm 1
execute as @s[scores={tpid=5}] at @e[tag=tp,tag=a5,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1] run scoreboard players set @s confirm 1
###############################################
#send player to next step of request process
scoreboard players set @s tpStep 2
