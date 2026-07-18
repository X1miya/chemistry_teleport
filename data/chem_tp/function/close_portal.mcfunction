# Clean up the portal
kill @e[type=marker,tag=chem_tp_portal]
kill @e[type=marker,tag=chem_tp_dest]
kill @e[type=block_display,tag=chem_tp_cube]
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.5
