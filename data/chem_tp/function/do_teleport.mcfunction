# Play stage 2 flash at original location
execute as @a[tag=chem_tp_target] at @s run function chem_tp:effects/depart_flash

# Teleport player to marker
execute as @a[tag=chem_tp_target] at @e[type=marker,tag=chem_tp_dest,limit=1] run tp @s ~ ~ ~

# Play stage 3 arrival effects at new location
execute as @a[tag=chem_tp_target] at @s run function chem_tp:effects/arrive

# Cleanup
tag @a[tag=chem_tp_target] remove chem_tp_target
kill @e[type=marker,tag=chem_tp_dest]
