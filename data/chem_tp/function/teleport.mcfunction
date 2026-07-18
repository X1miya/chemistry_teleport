# Macro function to start teleportation and spawn portal
# Usage: /function chem_tp:teleport {x: 10, y: 64, z: 20}

# Tag the player to teleport them at tick 10
tag @s add chem_tp_actor

# Summon destination marker
$summon marker $(x) $(y) $(z) {Tags:["chem_tp_dest"]}

# Summon portal marker at current location
summon marker ~ ~ ~ {Tags:["chem_tp_portal"]}
scoreboard players set @e[type=marker,tag=chem_tp_portal,limit=1,sort=nearest] chem_tp_tick 1
