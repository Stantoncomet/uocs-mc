function uocs-dp:tux_wars/init

# Trigger map reload
setblock 111 222 333 redstone_block

# 20*60*30 = 36000 ticks = 30 minutes
scoreboard players set Game timeLeft 36000

scoreboard players set resin_brickGen timeLeft 0
scoreboard players set amethyst_shardGen timeLeft 0
scoreboard players set nether_starGen timeLeft 0
scoreboard players set emeraldGen timeLeft 0


# Global spawnpoint, respawn zone
spawnpoint @a -291 192 132

# Distance from start button command block
execute as @r[distance=..10] at @s run function uocs-dp:tux_wars/spawn_player
#execute as @r[distance=..10] at @s run function uocs-dp:tux_wars/spawn_player {x:0, y:200, z:0}
#execute as @r[distance=..10] at @s run function uocs-dp:tux_wars/spawn_player {x:0, y:200, z:0}
#execute as @r[distance=..10] at @s run function uocs-dp:tux_wars/spawn_player {x:0, y:200, z:0}




function uocs-dp:tux_wars/main