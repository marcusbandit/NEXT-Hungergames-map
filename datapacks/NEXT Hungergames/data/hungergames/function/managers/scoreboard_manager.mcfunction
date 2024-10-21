#Online players
execute store result score Online playerList run execute if entity @a
execute store result score OnlineAdmins playerList run execute if entity @a[team=admins]
execute store result score @e[type=armor_stand,team=admins] playerList run execute if entity @a[team=admins]
execute store result score OnlinePlayers playerList run execute if entity @a[team=players]
execute store result score OnlineDeadPlayers playerList run execute if entity @a[team=deadplayers]


#scoreboard timers
scoreboard players add ticks secondCounter 1

#ticks to seconds
execute if score ticks secondCounter matches 20.. run scoreboard players add seconds secondCounter 1

execute if score ticks secondCounter matches 20.. run scoreboard players add scoreboardCylce secondCounter 1

#Countdown
execute if entity @e[tag=gameIsInitiated] if score ticks secondCounter matches 20.. run scoreboard players remove secondCountdown secondCounter 1
execute if entity @e[tag=gameIsInitiated] if score secondCountdown secondCounter matches ..-1 run scoreboard players remove minuteCountdown secondCounter 1
execute if entity @e[tag=gameIsInitiated] if score secondCountdown secondCounter matches ..-1 run scoreboard players set secondCountdown secondCounter 59

execute if score minuteCountdown secondCounter matches ..0 if score secondCountdown secondCounter matches 10 at @e[tag=lobbyCenter] as @a[distance=..200,team=!admins] run spreadplayers -2 18 20 350 under 72 false @s[team=players]
execute if score minuteCountdown secondCounter matches ..0 if score secondCountdown secondCounter matches 10 as @a[team=players] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["forcedStop"],Invulnerable:1b,NoGravity:1b,Invisible:1b}
execute if score minuteCountdown secondCounter matches ..0 if score secondCountdown secondCounter matches 5 if score ticks secondCounter matches 1 run function hungergames:chest_functions/refill_loot
execute if score minuteCountdown secondCounter matches ..0 if score secondCountdown secondCounter matches ..0 run function hungergames:start_caller

#scoreboard index
execute if score scoreboardCylce secondCounter matches 60.. run scoreboard players add currentSB scoreboardIndex 1
execute if score currentSB scoreboardIndex matches 2.. run scoreboard players set currentSB scoreboardIndex 0
execute if score scoreboardCylce secondCounter matches 60.. run scoreboard players set scoreboardCylce secondCounter 0

execute if score ticks secondCounter matches 20.. run scoreboard players set ticks secondCounter 0

#seconds to minutes
execute if score seconds secondCounter matches 60.. run scoreboard players add minutes secondCounter 1


execute if score seconds secondCounter matches 60.. run scoreboard players set seconds secondCounter 0


#Scoreboard Cycling



#What to show
#execute if score scoreboardCylce secondCounter matches 1.. if score currentSB scoreboardIndex matches 0 run scoreboard objectives setdisplay sidebar alivePlayers
#execute if score scoreboardCylce secondCounter matches 1.. if score currentSB scoreboardIndex matches 1 run scoreboard objectives setdisplay sidebar killCount
#execute if score scoreboardCylce secondCounter matches 1.. if score currentSB scoreboardIndex matches 1 run scoreboard objectives remove alivePlayers
#execute if score scoreboardCylce secondCounter matches 1.. if score currentSB scoreboardIndex matches 0 run scoreboard objectives add alivePlayers dummy {"text":"Alive Players:","color":"red"}

#Game Info Scoreboard Tap
scoreboard players set -------------------- killCount 99998

#Alive Players Scoreboard Tap
execute if score OnlinePlayers playerList matches ..0 run scoreboard players set NoPlayersOnline alivePlayers 1
execute if score OnlinePlayers playerList matches 1.. run scoreboard players reset NoPlayersOnline alivePlayers
scoreboard players set @a[team=players] alivePlayers 1
scoreboard players reset @a[team=deadplayers] alivePlayers
scoreboard players reset @a[team=admins] alivePlayers