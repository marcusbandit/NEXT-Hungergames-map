#deleter
execute as @e[tag=pr_deleter] at @s run kill @e[tag=pr,distance=..1,limit=1,sort=nearest]
execute as @e[tag=pr_deleter] at @s run kill @e[tag=ele_block,distance=..1,limit=1,sort=nearest]
kill @e[tag=pr_deleter]


#Pr Wall
execute as @e[tag=pr_wall] at @s unless block ~1 ~ ~ air run data modify entity @s Rotation[0] set value -90f
execute as @e[tag=pr_wall] at @s unless block ~-1 ~ ~ air run data modify entity @s Rotation[0] set value 90f
execute as @e[tag=pr_wall] at @s unless block ~ ~ ~1 air run data modify entity @s Rotation[0] set value 0f
execute as @e[tag=pr_wall] at @s unless block ~ ~ ~-1 air run data modify entity @s Rotation[0] set value 180f