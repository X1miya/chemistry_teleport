# Stage 1: Preparation (bubbling and swirling gas)

# Sound: Bubbling and fizz
playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ 1 1
playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 0.5 0.5

# Particles: Green dust swirling up
particle dust{color:[0.0,1.0,0.0],scale:1.5} ~ ~0.5 ~ 0.5 1 0.5 0 50 normal
particle entity_effect{color:[0.0,0.8,0.2,1.0]} ~ ~1 ~ 0.5 1 0.5 0 20 normal
particle bubble ~ ~0.2 ~ 0.5 0.5 0.5 0.1 30 normal
