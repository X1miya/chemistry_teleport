# Stage 2: The Flash

# Sound: Sharp chemical pop / zap
playsound minecraft:entity.splash_potion.break master @a ~ ~ ~ 2 0.8
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.2

# Particles: Bright flash and dense smoke burst
particle flash ~ ~1 ~ 1 0 1 0 10 force
particle campfire_cosy_smoke ~ ~1 ~ 0.5 1 0.5 0.1 100 normal
particle dust{color:[0.1,0.9,0.1],scale:2} ~ ~1 ~ 1 1 1 0.5 100 normal
