# Clean up after animation finishes
tag @s remove chem_tp_anim
scoreboard players reset @s chem_tp_tick
kill @e[type=marker,tag=chem_tp_dest]
