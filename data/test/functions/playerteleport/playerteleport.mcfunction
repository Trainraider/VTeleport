execute as @a[scores={rtp=1}] run function test:playerteleport/joinqueue
tag @a[scores={tpqueue=1}] add active
scoreboard players enable @a[tag=active] tpid
execute as @a[scores={tpqueue=1}] run function test:playerteleport/tplist
execute as @a[scores={tpid=1..}] run function test:playerteleport/teleport
