# Deaths
execute as @a[scores={onDeath=1..}] run function uocs-dp:tux_wars/ko_player
scoreboard players remove @a[scores={respawnLeft=1..}] respawnLeft 1
execute as @a[scores={respawnLeft=..0}] run function uocs-dp:tux_wars/spawn_player


# Generators
scoreboard players remove resin_brickGen timeLeft 1
execute if score resin_brickGen timeLeft matches ..0 run execute as @e[tag=resin_brickGen] at @s unless score @s genCount matches 48.. run function uocs-dp:tux_wars/generate {id:"resin_brick"}

scoreboard players remove amethyst_shardGen timeLeft 1
execute if score amethyst_shardGen timeLeft matches ..0 run execute as @e[tag=amethyst_shardGen] at @s unless score @s genCount matches 32.. run function uocs-dp:tux_wars/generate {id:"amethyst_shard"}

scoreboard players remove nether_starGen timeLeft 1
execute if score nether_starGen timeLeft matches ..0 run execute as @e[tag=nether_starGen] at @s unless score @s genCount matches 16.. run function uocs-dp:tux_wars/generate {id:"nether_star"}

scoreboard players remove emeraldGen timeLeft 1
execute if score emeraldGen timeLeft matches ..0 run execute as @e[tag=emeraldGen] at @s unless score @s genCount matches 8.. run function uocs-dp:tux_wars/generate {id:"emerald"}





# Beds
execute if score redTeam aliveBeds matches 1.. at @e[tag=redBed] if block ~ ~ ~ air run function uocs-dp:tux_wars/destroy_bed {team: "red"}
execute if score greenTeam aliveBeds matches 1.. at @e[tag=greenBed] if block ~ ~ ~ air run function uocs-dp:tux_wars/destroy_bed {team: "green"}





scoreboard players remove Game timeLeft 1
execute if score Game timeLeft matches ..0 run function uocs-dp:tux_wars/end_game
execute if score Game timeLeft matches 1.. run schedule function uocs-dp:tux_wars/main 1t
