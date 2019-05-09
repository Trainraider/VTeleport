scoreboard players enable @e[tag=p,scores={tpStep=1..}] tpcancel
execute as @e[tag=p,scores={tpcancel=1}] run tellraw @s {"text":"[Teleportation request canceled]","color":"red","bold":"true"}
execute as @e[tag=p,scores={tpcancel=1}] run function vteleport:tpa/wrapup
