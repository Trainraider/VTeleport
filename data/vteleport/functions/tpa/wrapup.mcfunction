#The user as no longer active, remove tag
tag @s remove active
#Prepare armorstands tpInstance value for comparison
execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance
#Prepare players tpInstance value for comparison
execute as @e[tag=p] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=p] tpInstanceCheck -= @s tpInstance

#Reset the confirm score of player who recieved request.
execute as @s[scores={tpid=1}] at @e[tag=tp,tag=a1,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1,scores={confirm=1..}] run scoreboard players reset @s confirm
execute as @s[scores={tpid=2}] at @e[tag=tp,tag=a2,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1,scores={confirm=1..}] run scoreboard players reset @s confirm
execute as @s[scores={tpid=3}] at @e[tag=tp,tag=a3,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1,scores={confirm=1..}] run scoreboard players reset @s confirm
execute as @s[scores={tpid=4}] at @e[tag=tp,tag=a4,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1,scores={confirm=1..}] run scoreboard players reset @s confirm
execute as @s[scores={tpid=5}] at @e[tag=tp,tag=a5,scores={tpInstanceCheck=0}] run execute as @e[tag=p,distance=..1,scores={confirm=1..}] run scoreboard players reset @s confirm
#Destroy armorstands used for request
kill @e[tag=tp,scores={tpInstanceCheck=0}]

#Remove 1 from all greater tpInstances and from the maxTpInstance to erase this tpInstance.
scoreboard players remove @e[scores={tpInstanceCheck=1..}] tpInstance 1
scoreboard players remove #var maxTpInstance 1

#enable user to use tpa again
scoreboard players enable @s tpa

#reset objectives used in tpa
scoreboard players reset @s tpInstance
scoreboard players reset @s tpStep
scoreboard players reset @s timeOut
scoreboard players reset @s tpid
scoreboard players reset @s ui
