# Deaths
execute as @a[scores={onDeath=1..}] run function uocs-dp:tux_wars/ko_player
scoreboard players remove @a[scores={respawnLeft=1..}] respawnLeft 1
execute as @a[scores={respawnLeft=..0}] run function uocs-dp:tux_wars/spawn_player


# Generators
scoreboard players remove resin_brickGen timeLeft 1
execute if score resin_brickGen timeLeft matches ..0 run execute as @e[tag=resin_brickGen] at @s run function uocs-dp:tux_wars/generate {id:"resin_brickGen"}

scoreboard players remove amethystGen timeLeft 1
execute if score amethystGen timeLeft matches ..0 run execute as @e[tag=amethystGen] at @s run function uocs-dp:tux_wars/generate {id:"amethystGen"}

scoreboard players remove nether_starGen timeLeft 1
execute if score nether_starGen timeLeft matches ..0 run execute as @e[tag=nether_starGen] at @s run function uocs-dp:tux_wars/generate {id:"nether_starGen"}

scoreboard players remove emeraldGen timeLeft 1
execute if score emeraldGen timeLeft matches ..0 run execute as @e[tag=emeraldGen] at @s run function uocs-dp:tux_wars/generate {id:"emerald"}







scoreboard players remove Game timeLeft 1
execute if score Game timeLeft matches ..0 run function uocs-dp:tux_wars/end_game
execute if score Game timeLeft matches 1.. run schedule function uocs-dp:tux_wars/main 1t
