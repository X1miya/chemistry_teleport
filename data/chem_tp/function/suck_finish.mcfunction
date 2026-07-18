execute at @e[type=marker,tag=chem_tp_dest,limit=1,sort=nearest] run tp @s ~ ~ ~
particle flash ~ ~1 ~ 0 0 0 0 1 normal
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.2
tag @s remove chem_tp_suck
