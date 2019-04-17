#decrement the number of online players
scoreboard players remove #online online 1

#loop until all logedout players are accounted for
scoreboard players remove #offline offline 1
execute if score #offline offline matches 1.. run function test:idmanager/logout/logoutloop
