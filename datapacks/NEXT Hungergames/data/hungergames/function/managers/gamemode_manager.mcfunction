gamemode adventure @a[team=players]
gamemode spectator @a[team=deadplayers]
execute if entity @e[tag=gameIsOn] run gamemode spectator @a[team=admins,tag=!superAdmin]