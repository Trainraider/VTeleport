execute as @a[scores={rtp=1}] run function test:playerteleport/joinqueue
tag @a[scores={tpqueue=1}] add active
execute as @a[tag=active] run function test:playerteleport/tplist
