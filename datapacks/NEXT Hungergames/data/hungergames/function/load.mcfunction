tellraw @a {"color":"green","text":"Initiating startup..."}


#force load the in game spawn to fix bugs (Don't ask why, it's a long story)

#function utility:force_load
execute at @e[type=minecraft:armor_stand] run forceload add ~ ~

#endregion

time set 6000

#gamerules
gamerule spawnRadius 0
gamerule doDaylightCycle false
gamerule doImmediateRespawn false
gamerule freezeDamage false

#scoreboards
scoreboard objectives add secondCounter dummy {"text":"GameInfo:","color":"red"}
scoreboard objectives add scoreboardIndex dummy
scoreboard objectives add gameInfo dummy {"text":"GameInfo:","color":"red"}
scoreboard objectives add killCount minecraft.custom:minecraft.player_kills {"text":"Kill Count:","color":"red"}
scoreboard objectives add allTimeKillCount minecraft.custom:minecraft.player_kills {"text":"All Time Kill Count:","color":"red"}
scoreboard objectives add alivePlayers dummy {"text":"Alive Players:","color":"red"}
scoreboard objectives add playerList dummy

scoreboard players set ticks secondCounter 0
scoreboard players set seconds secondCounter 0
scoreboard players set scoreboardCylce secondCounter 10

#region teams
#{"text":"Admin","color":"red"}
team add admins
team add players {"text":"Player","color":"aqua"}
team add deadplayers {"text":"Dead Player","color":"gray"}
#"color":"red",
team modify admins prefix {"text":"[Admin] "}
team modify admins color dark_purple
team modify admins collisionRule never

team modify players deathMessageVisibility always
team modify players collisionRule never
team modify players seeFriendlyInvisibles false
team modify players friendlyFire false
team modify players nametagVisibility hideForOwnTeam
team modify players color aqua

team modify deadplayers collisionRule never
team modify deadplayers nametagVisibility hideForOwnTeam
team modify deadplayers color gray

#driver armorstand
kill @e[tag=driver]
kill @e[tag=lobbyCenter]
summon minecraft:armor_stand -2 13 30 {Tags:["driver","gameIsOff"],Invulnerable:1b,NoGravity:1b}
summon minecraft:armor_stand 187 70 963 {Tags:["lobbyCenter"],Invulnerable:1b,NoGravity:1b,Invisible:1b}

#endregion

worldborder center -1.5 30.5

tellraw @a {"color":"green","text":"Startup complete"}


