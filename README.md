# VanillaTeleport
A vanilla, plugin replacing teleport manager for small Minecraft 1.13+ servers.
Better compatibility with future Minecraft versions than server plugins. Will be compatible with Minecraft for as long as current commands still work.

Current limitations:
  Only 20 players can be handled at once.
  Only 1 player can have an active teleport request.


Installation:
  Copy the VanillaTeleport folder from just inside the .zip file into your datapacks folder at /.minecraft/saves/[yourworld]/datapacks
  Open your world
  Run this command to create a book with the teleportation command:
  /give @p written_book{pages:["{\"text\":\"[Teleport to player]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/minecraft:trigger rtp set 1\"}}"],title:"Spell Book",author:Trainraider,display:{Lore:["Useful everyday spells."]}}
