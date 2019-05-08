#Mark all armor stands part of the current request with tpInstanceCheck 0
execute as @e[tag=tp] run scoreboard players operation @s tpInstanceCheck = @s tpInstance
scoreboard players operation @e[tag=tp] tpInstanceCheck -= @s tpInstance
#Find the selected player and mark them with idCheck 0
execute as @e[tag=p] run scoreboard players operation @s idCheck = @s id
scoreboard players operation @e[tag=p] idCheck -= @s tppid

#If confirmation has been accepted or denied, user moves on to next step.
execute if entity @e[tag=p,scores={confirm=1..,idCheck=0}] run scoreboard players set @s tpStep 3

#User teleports to the player they selected who has accepted the request.
tp @s @e[tag=p,scores={confirm=1,idCheck=0},limit=1]

#User is told that their teleport request was denied.
execute if entity @e[tag=p,scores={confirm=2,idCheck=0}] run tellraw @s {"text":"Teleport request denied", "color":"red","bold":"true"}

#User is told that their teleport request was denied because that player already has a request.
execute if entity @e[tag=p,scores={confirm=3,idCheck=0}] run tellraw @s {"text":"That player already has an open request. Try again later", "color":"red","bold":"true"}
