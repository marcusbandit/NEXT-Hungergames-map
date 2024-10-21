kill @e[tag=forcedStop]
tag @e[tag=driver] remove gameIsInitiated
tag @e[tag=driver] add gameIsOn
team modify players friendlyFire true
clear @a[team=players]
scoreboard objectives remove killCount
scoreboard objectives add killCount minecraft.custom:minecraft.player_kills {"text":"Kill Count:","color":"red"}
scoreboard objectives setdisplay sidebar killCount
scoreboard players set @a killCount 0
scoreboard players set @a[team=admins] killCount 99999
scoreboard players set seconds secondCounter 0
scoreboard players set minutes secondCounter 0
scoreboard players reset minuteCountdown secondCounter
scoreboard players reset secondCountdown secondCounter
title @a clear
scoreboard objectives add gameSeed dummy {"text":"Game Seed"}
execute store result score @e[tag=driver] gameSeed run time query gametime
execute store result score @a gameSeed run time query gametime