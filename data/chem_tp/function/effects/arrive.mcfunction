# Stage 3: Arrival

# Sound: Lingering sizzle
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.8 0.6
playsound minecraft:entity.splash_potion.break master @a ~ ~ ~ 1 1.5

# Particles: Dissipating green cloud
particle dust{color:[0.0,1.0,0.0],scale:1.5} ~ ~1 ~ 0.8 0.8 0.8 0.1 80 normal
particle entity_effect{color:[0.0,0.8,0.2,1.0]} ~ ~1 ~ 1 1 1 0 40 normal
