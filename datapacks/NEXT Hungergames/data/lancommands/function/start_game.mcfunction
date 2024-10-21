team join players @a[team=!admins]
scoreboard players set ticks secondCounter 0
scoreboard players set seconds secondCounter 0
scoreboard players set minutes secondCounter 0
scoreboard players set minuteCountdown secondCounter 10
scoreboard players set secondCountdown secondCounter 0
tag @e[tag=driver] remove gameIsOff
tag @e[tag=driver] add gameIsInitiated