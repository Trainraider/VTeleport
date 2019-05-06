# VTeleport
A vanilla, plugin replacing teleport manager for small Minecraft 1.13+ servers
Better compatibility with future Minecraft versions.


Installation:
  Copy the VanillaTeleport folder from just inside the .zip file into your datapacks folder at /.minecraft/saves/[yourworld]/datapacks
  Open your world

  To teleport use /trigger tpa
  OR
  Run this command to create a book with the teleportation command:
  /give @p written_book{pages:["{\"text\":\"[Teleport to player]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/minecraft:trigger tpa set 1\"}}"],title:"Spell Book",author:Trainraider,display:{Lore:["Useful everyday spells."]}}
