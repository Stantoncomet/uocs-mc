function uocs-dp:tux_wars/init

# Trigger map reload
setblock 111 222 333 redstone_block

# 20*60*30 = 36000 ticks = 30 minutes
scoreboard players set Game timeLeft 36000

scoreboard players set brickGen timeLeft 1
scoreboard players set gold_ingotGen timeLeft 1


# Spawnpoints
spawnpoint @a 0 1 0

# Distance from start button command block
execute as @r[distance=..10,tag=redTeam] at @s run function uocs-dp:tux_wars/spawn_player
#execute as @r[distance=..10] at @s run function uocs-dp:tux_wars/spawn_player {x:0, y:200, z:0}
#execute as @r[distance=..10] at @s run function uocs-dp:tux_wars/spawn_player {x:0, y:200, z:0}
#execute as @r[distance=..10] at @s run function uocs-dp:tux_wars/spawn_player {x:0, y:200, z:0}




function uocs-dp:tux_wars/main