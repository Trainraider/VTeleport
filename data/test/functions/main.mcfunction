#players without id have it set to 0, others are unchanged
scoreboard players add @a id 0
#players without an id are assigned one
execute as @a[scores={id=0}] run function test:login
scoreboard players operation #offline offline += * offline
execute if score #offline offline matches 1.. run function test:logout
