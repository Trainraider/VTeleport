#Mark all armor stands part of the current request with tpInstanceCheck 0
execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance

#If confirmation has been accepted or denied, user moves on to next step.
execute as @s[scores={tpid=1}] at @e[tag=tp,tag=a1,scores={tpInstanceCheck=0}] run execute at @e[tag=p,distance=..1,scores={confirm=1..}] run scoreboard players set @s tpStep 3
execute as @s[scores={tpid=2}] at @e[tag=tp,tag=a2,scores={tpInstanceCheck=0}] run execute at @e[tag=p,distance=..1,scores={confirm=1..}] run scoreboard players set @s tpStep 3
execute as @s[scores={tpid=3}] at @e[tag=tp,tag=a3,scores={tpInstanceCheck=0}] run execute at @e[tag=p,distance=..1,scores={confirm=1..}] run scoreboard players set @s tpStep 3
execute as @s[scores={tpid=4}] at @e[tag=tp,tag=a4,scores={tpInstanceCheck=0}] run execute at @e[tag=p,distance=..1,scores={confirm=1..}] run scoreboard players set @s tpStep 3
execute as @s[scores={tpid=5}] at @e[tag=tp,tag=a5,scores={tpInstanceCheck=0}] run execute at @e[tag=p,distance=..1,scores={confirm=1..}] run scoreboard players set @s tpStep 3

#User teleports to the player they selected who has accepted the request.
execute as @s[scores={tpid=1}] at @e[tag=tp,tag=a1,scores={tpInstanceCheck=0}] run tp @s @e[tag=p,distance=..1,scores={confirm=1},limit=1]
execute as @s[scores={tpid=2}] at @e[tag=tp,tag=a2,scores={tpInstanceCheck=0}] run tp @s @e[tag=p,distance=..1,scores={confirm=1},limit=1]
execute as @s[scores={tpid=3}] at @e[tag=tp,tag=a3,scores={tpInstanceCheck=0}] run tp @s @e[tag=p,distance=..1,scores={confirm=1},limit=1]
execute as @s[scores={tpid=4}] at @e[tag=tp,tag=a4,scores={tpInstanceCheck=0}] run tp @s @e[tag=p,distance=..1,scores={confirm=1},limit=1]
execute as @s[scores={tpid=5}] at @e[tag=tp,tag=a5,scores={tpInstanceCheck=0}] run tp @s @e[tag=p,distance=..1,scores={confirm=1},limit=1]

#User is told that their teleport request was denied.
execute as @s[scores={tpid=1}] at @e[tag=tp,tag=a1,scores={tpInstanceCheck=0}] run execute at @e[tag=p,distance=..1,scores={confirm=2}] run tellraw @s {"text":"Teleport request denied", "color":"red","bold":"true"}
execute as @s[scores={tpid=2}] at @e[tag=tp,tag=a2,scores={tpInstanceCheck=0}] run execute at @e[tag=p,distance=..1,scores={confirm=2}] run tellraw @s {"text":"Teleport request denied", "color":"red","bold":"true"}
execute as @s[scores={tpid=3}] at @e[tag=tp,tag=a3,scores={tpInstanceCheck=0}] run execute at @e[tag=p,distance=..1,scores={confirm=2}] run tellraw @s {"text":"Teleport request denied", "color":"red","bold":"true"}
execute as @s[scores={tpid=4}] at @e[tag=tp,tag=a4,scores={tpInstanceCheck=0}] run execute at @e[tag=p,distance=..1,scores={confirm=2}] run tellraw @s {"text":"Teleport request denied", "color":"red","bold":"true"}
execute as @s[scores={tpid=5}] at @e[tag=tp,tag=a5,scores={tpInstanceCheck=0}] run execute at @e[tag=p,distance=..1,scores={confirm=2}] run tellraw @s {"text":"Teleport request denied", "color":"red","bold":"true"}
