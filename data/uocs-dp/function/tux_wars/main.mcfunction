# Deaths
#execute as @a[scores={onDeath=1..}] run function uocs-dp:tux_wars/ko_player
#scoreboard players remove @a[scores={respawnLeft=1..}] respawnLeft 1
#execute as @a[scores={respawnLeft=..0}] run function uocs-dp:tux_wars/spawn_player


# Generators
#scoreboard players remove brickGen timeLeft 1
#execute if score brickGen timeLeft matches ..0 run execute as @e[tag=brickGen] at @s run function uocs-dp:tux_wars/generate

#scoreboard players remove gold_ingotGen timeLeft 1
#execute if score gold_ingotGen timeLeft matches ..0 run execute as @e[tag=gold_ingotGen] at @s run function uocs-dp:tux_wars/generate {id:"gold_ingot",cool_down:"300"}

#scoreboard players remove emeraldGen timeLeft 1
#execute if score emeraldGen timeLeft matches ..0 run execute as @e[tag=emeraldGen] at @s run function uocs-dp:tux_wars/generate {id:"emerald",cool_down:"600"}







scoreboard players remove Game timeLeft 1
#execute if score Game timeLeft matches ..0 run function uocs-dp:tux_wars/end_game
execute if score Game timeLeft matches 1.. run function uocs-dp:tux_wars/main
