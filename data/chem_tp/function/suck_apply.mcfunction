# Макрос телепортирует ровно на вычисленный шаг!
# Символ ~ означает сдвиг относительно текущей позиции БЕЗ изменения камеры!
$tp @s ~$(dx) ~$(dy) ~$(dz)

# Если расстояние до центра портала меньше 1.5 блоков - финиш
execute positioned as @e[type=marker,tag=chem_tp_portal,limit=1,sort=nearest] positioned ~ ~1.5 ~ if entity @s[distance=..1.5] run function chem_tp:suck_finish
