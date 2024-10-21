title @a times 0 2 5
execute if entity @e[tag=gameIsOn] run title @a actionbar [{"score":{"name":"minutes","objective":"secondCounter"},"color":"green"},{"text":":"},{"score":{"name":"seconds","objective":"secondCounter"}}]
execute if entity @e[tag=gameIsInitiated] run title @a actionbar [{"score":{"name":"minuteCountdown","objective":"secondCounter"},"color":"green"},{"text":":"},{"score":{"name":"secondCountdown","objective":"secondCounter"}},{"text":" Til Start"}]
execute if score minuteCountdown secondCounter matches ..0 if score secondCountdown secondCounter matches ..10 run title @a title [{"score":{"name":"secondCountdown","objective":"secondCounter"},"color":"red"}]

execute if entity @e[tag=gameIsOn] if score OnlinePlayers playerList matches 1 run title @a title [{"selector":"@a[team=players]"},{"text":" er vinderen!"}]
execute if entity @e[tag=gameIsOn] if score OnlinePlayers playerList matches 1 run playsound minecraft:hungergames.victory ambient @a
execute if entity @e[tag=gameIsOff] run title @a clear