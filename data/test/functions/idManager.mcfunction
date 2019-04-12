#players without an ID have it set to 0, others are unchanged
scoreboard players add @a id 0
#players who went offline and have invalid IDs are reset to 0
execute as @a[scores={offline=1..}] run scoreboard players set @s id 0
#players with ID 0 are assigned valid unique IDs
execute as @a[scores={id=0}] run function test:login


#detect when any players have disconnected by incrementing #offline once per newly disconnected player
scoreboard players operation #offline offline += * loggedOut
execute if score #offline offline matches 1.. run function test:logout
