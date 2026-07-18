# Если портал исчез во время засасывания - отменяем
execute unless entity @e[type=marker,tag=chem_tp_portal] run tag @s remove chem_tp_suck

# Выполняем шаг только если портал существует
execute if entity @e[type=marker,tag=chem_tp_portal] run particle reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force

# Получаем координаты игрока
execute if entity @e[type=marker,tag=chem_tp_portal] store result score @s chem_tp_px run data get entity @s Pos[0] 1000
execute if entity @e[type=marker,tag=chem_tp_portal] store result score @s chem_tp_py run data get entity @s Pos[1] 1000
execute if entity @e[type=marker,tag=chem_tp_portal] store result score @s chem_tp_pz run data get entity @s Pos[2] 1000

# Записываем координаты портала в dx, dy, dz
execute if entity @e[type=marker,tag=chem_tp_portal] store result score @s chem_tp_dx run data get entity @e[type=marker,tag=chem_tp_portal,limit=1,sort=nearest] Pos[0] 1000
execute if entity @e[type=marker,tag=chem_tp_portal] store result score @s chem_tp_dy run data get entity @e[type=marker,tag=chem_tp_portal,limit=1,sort=nearest] Pos[1] 1000
execute if entity @e[type=marker,tag=chem_tp_portal] store result score @s chem_tp_dz run data get entity @e[type=marker,tag=chem_tp_portal,limit=1,sort=nearest] Pos[2] 1000

# Целимся в центр портала (Y + 1.5)
execute if entity @e[type=marker,tag=chem_tp_portal] run scoreboard players add @s chem_tp_dy 1500

# Вычисляем разницу (dx = target_x - player_x)
execute if entity @e[type=marker,tag=chem_tp_portal] run scoreboard players operation @s chem_tp_dx -= @s chem_tp_px
execute if entity @e[type=marker,tag=chem_tp_portal] run scoreboard players operation @s chem_tp_dy -= @s chem_tp_py
execute if entity @e[type=marker,tag=chem_tp_portal] run scoreboard players operation @s chem_tp_dz -= @s chem_tp_pz

# Вычисляем 1/15 часть пути для плавного засасывания
execute if entity @e[type=marker,tag=chem_tp_portal] run scoreboard objectives add chem_tp_const dummy
execute if entity @e[type=marker,tag=chem_tp_portal] run scoreboard players set #15 chem_tp_const 15
execute if entity @e[type=marker,tag=chem_tp_portal] run scoreboard players operation @s chem_tp_dx /= #15 chem_tp_const
execute if entity @e[type=marker,tag=chem_tp_portal] run scoreboard players operation @s chem_tp_dy /= #15 chem_tp_const
execute if entity @e[type=marker,tag=chem_tp_portal] run scoreboard players operation @s chem_tp_dz /= #15 chem_tp_const

# Конвертируем обратно в дробные числа (0.001) и сохраняем в макрос-память
execute if entity @e[type=marker,tag=chem_tp_portal] store result storage chem_tp:macro dx double 0.001 run scoreboard players get @s chem_tp_dx
execute if entity @e[type=marker,tag=chem_tp_portal] store result storage chem_tp:macro dy double 0.001 run scoreboard players get @s chem_tp_dy
execute if entity @e[type=marker,tag=chem_tp_portal] store result storage chem_tp:macro dz double 0.001 run scoreboard players get @s chem_tp_dz

# Запускаем макрос
execute if entity @e[type=marker,tag=chem_tp_portal] run function chem_tp:suck_apply with storage chem_tp:macro
