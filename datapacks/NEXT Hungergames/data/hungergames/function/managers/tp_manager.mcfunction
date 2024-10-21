execute if entity @e[tag=gameIsOff] run spawnpoint @a 194 64 951 35
execute if entity @e[tag=gameIsOn] run spawnpoint @a -2 85 30

#execute if entity @e[tag=gameIsOff] at @e[tag=lobbyCenter] as @a[distance=100..,team=!admins] run kill @s
execute if entity @e[tag=gameIsOff] run worldborder center 196.5 951.5
execute if entity @e[tag=gameIsOff] run worldborder set 2600
execute if entity @e[tag=gameIsOn] run worldborder center -1.5 30.5
execute as @e[tag=forcedStop] at @s run tp @p[distance=0.1..2,team=players] @s
execute if score minutes secondCounter matches 0 if score seconds secondCounter matches 0 run execute if entity @e[tag=gameIsOn] run worldborder set 701
execute if entity @e[tag=gameIsOn] positioned -1.5 80 30.5 as @a[team=deadplayers] run tp @s[distance=380..420] -1.5 90 30.5
execute if score minutes secondCounter matches 2 if score seconds secondCounter matches 0 run execute if entity @e[tag=gameIsOn] run worldborder set 501 120
execute if score minutes secondCounter matches 2 if score seconds secondCounter matches 0 run execute if entity @e[tag=gameIsOn] run playsound minecraft:hungergames.bordershrink ambient @a
execute if score minutes secondCounter matches 5 if score seconds secondCounter matches 0 run execute if entity @e[tag=gameIsOn] run worldborder set 301 180
execute if score minutes secondCounter matches 5 if score seconds secondCounter matches 0 run execute if entity @e[tag=gameIsOn] run playsound minecraft:hungergames.bordershrink ambient @a
execute if score minutes secondCounter matches 10 if score seconds secondCounter matches 0 run execute if entity @e[tag=gameIsOn] run worldborder set 201 120
execute if score minutes secondCounter matches 10 if score seconds secondCounter matches 0 run execute if entity @e[tag=gameIsOn] run playsound minecraft:hungergames.bordershrink ambient @a
execute if score minutes secondCounter matches 12 if score seconds secondCounter matches 0 run execute if entity @e[tag=gameIsOn] run worldborder set 23 90
execute if score minutes secondCounter matches 12 if score seconds secondCounter matches 0 run execute if entity @e[tag=gameIsOn] run playsound minecraft:hungergames.bordershrink ambient @a

execute at @e[type=minecraft:armor_stand] run forceload add ~ ~







####System used for spawning in a defined place. Not used when schaddered
##execute as @r[team=players,tag=inHub] run tp @s @e[tag=free_teleport,limit=1]
##execute as @r[team=players,tag=inHub] at @s if entity @e[tag=free_teleport,distance=..1] run tag @s remove inHub
##execute as @e[tag=free_teleport] at @s if entity @e[type=player,team=players,distance=..1] run tag @s remove free_teleport
##execute as @r[team=players,tag=inHub] run function hungergames:tp_manager