function hungergames:chest_functions/empty_container

execute at @e[tag=LootMarker] run setblock ~ ~ ~ minecraft:air

execute at @e[tag=Common] run setblock ~ ~ ~ minecraft:barrel[facing=east]{CustomName:'{"text":"Common Loot"}',LootTable:"hungergames:barrels/common"} destroy

execute at @e[tag=Uncommon] run setblock ~ ~ ~ minecraft:barrel[facing=south]{CustomName:'{"text":"Uncommon Loot"}',LootTable:"hungergames:barrels/uncommon"} destroy

execute at @e[tag=Epic] run setblock ~ ~ ~ minecraft:barrel[facing=west]{CustomName:'{"text":"Epic Loot"}',LootTable:"hungergames:barrels/epic"} destroy

execute at @e[tag=Legendary] run setblock ~ ~ ~ minecraft:barrel[facing=north]{CustomName:'{"text":"Legendary Loot"}',LootTable:"hungergames:barrels/legendary"} destroy