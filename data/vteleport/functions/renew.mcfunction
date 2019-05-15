summon area_effect_cloud ~ ~ ~ {Radius:0.0001f,Duration:2147483645,Particle:"block air",Tags:[cloudTimer]}
execute as @e[type=minecraft:area_effect_cloud,tag=perm] run data merge entity @s {Age:0}