team join admins --------------------
execute as @a[team=] run team join players @s
execute unless entity @e[tag=gameIsOn] as @a[team=deadplayers] unless entity @s[nbt={Health:0f}] run team join players @s
team join deadplayers @a[nbt={Health:0f},team=!admins]
execute if entity @e[tag=gameIsOn] as @a[team=!admins] unless score @s gameSeed = @e[tag=driver,limit=1] gameSeed run team join deadplayers @s

execute unless entity @e[tag=gameIsOn] run effect give @a minecraft:resistance 15 255 true
execute unless entity @e[tag=gameIsOn] run effect give @a minecraft:saturation 15 255 true