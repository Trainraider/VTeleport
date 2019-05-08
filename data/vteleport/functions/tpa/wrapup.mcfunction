#The user as no longer active, remove tag
tag @s remove active
#Prepare armorstands tpInstance value for comparison
execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance
#Prepare players tpInstance value for comparison
execute as @e[tag=p] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=p] tpInstanceCheck -= @s tpInstance
#Prepare players tprInstance value for comparison
execute as @e[tag=p] run scoreboard players operation @s tprInstanceCheck = @s tprInstance
scoreboard players operation @e[tag=p] tprInstanceCheck -= @s tpInstance

#Destroy armorstands used for request
kill @e[tag=tp,scores={tpInstanceCheck=0}]

#Remove 1 from all greater tpInstances and from the maxTpInstance to erase this tpInstance.
scoreboard players remove @e[scores={tpInstanceCheck=1..}] tpInstance 1
scoreboard players remove #var maxTpInstance 1

#enable user to use tpa again
scoreboard players enable @s tpa

#reset objectives used in tpa
scoreboard players reset @e[tag=p,scores={tprInstanceCheck=0}] confirm
scoreboard players reset @e[tag=p,scores={tprInstanceCheck=0}] tprInstance
scoreboard players reset @s tpInstance
scoreboard players reset @s tpStep
scoreboard players reset @s timeOut
scoreboard players reset @s tpid
scoreboard players reset @s ui
scoreboard players reset @s tppid
