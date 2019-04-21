#decrement the number of online players
scoreboard players remove #var online 1

#loop until all loggedout players are accounted for
scoreboard players remove #var offline 1
execute if score #var offline matches 1.. run function test:idmanager/logout/logoutloop
