# Запускает процесс засасывания игрока в портал
# Использование: /function chem_tp:enter_portal

# Проверка: существует ли портал вообще?
execute unless entity @e[type=marker,tag=chem_tp_portal] run tellraw @s {"text":"Ошибка: Портал не найден! Убедитесь, что маркер портала существует.","color":"red"}

# Запускаем только если портал есть
execute if entity @e[type=marker,tag=chem_tp_portal] run tag @s add chem_tp_suck
execute if entity @e[type=marker,tag=chem_tp_portal] run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 1 2

# Инициализируем скорборды для осей
scoreboard objectives add chem_tp_px dummy
scoreboard objectives add chem_tp_py dummy
scoreboard objectives add chem_tp_pz dummy
scoreboard objectives add chem_tp_dx dummy
scoreboard objectives add chem_tp_dy dummy
scoreboard objectives add chem_tp_dz dummy
