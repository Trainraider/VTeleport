execute as @a[scores={rtp=1}] run function test:playerteleport/joinqueue
tag @a[scores={tpQueue=1}] add active
scoreboard players enable @a[tag=active] tpid
execute as @a[scores={tpQueue=1}] run function test:playerteleport/tplist
execute as @a[scores={tpId=1..}] run function test:playerteleport/sendrequest
execute at @a[scores={confirm=1}] run tag @a[tag=tp] add confirmed
execute as @a[tag=tp,tag=confirmed] run function test:playerteleport/teleport
