function uocs-dp:tux_wars/init

# Trigger map reload
setblock 111 222 333 redstone_block


# Reset timers
execute store result score Game timeLeft run scoreboard players get Game cooldowns

scoreboard players set resin_brickGen timeLeft 1
scoreboard players set amethyst_shardGen timeLeft 1
scoreboard players set nether_starGen timeLeft 1
scoreboard players set emeraldGen timeLeft 1

scoreboard players reset * genCount

# Global spawnpoint, respawn zone
spawnpoint @a -290 220 133


# Distance from start button command block
execute as @a[distance=..10] at @s run function uocs-dp:tux_wars/spawn_player
#execute as @r[distance=..10] at @s run function uocs-dp:tux_wars/spawn_player {x:0, y:200, z:0}
#execute as @r[distance=..10] at @s run function uocs-dp:tux_wars/spawn_player {x:0, y:200, z:0}
#execute as @r[distance=..10] at @s run function uocs-dp:tux_wars/spawn_player {x:0, y:200, z:0}

# Beds
execute at @e[tag=redBed] run setblock ~ ~ ~ red_bed
execute at @e[tag=redBed] run setblock ~ ~ ~-1 red_bed[part=head]
execute at @e[tag=greenBed] run setblock ~ ~ ~ lime_bed
execute at @e[tag=greenBed] run setblock ~ ~ ~-1 lime_bed[part=head]


# Teams
execute if entity @a[tag=redTeam] run scoreboard players set redTeam aliveBeds 1
execute if entity @a[tag=purpleTeam] run scoreboard players set purpleTeam aliveBeds 1
execute if entity @a[tag=orangeTeam] run scoreboard players set orangeTeam aliveBeds 1
execute if entity @a[tag=greenTeam] run scoreboard players set greenTeam aliveBeds 1


function uocs-dp:tux_wars/main