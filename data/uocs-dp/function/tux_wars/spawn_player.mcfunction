scoreboard players reset @s respawnLeft

effect give @s instant_health 1 255
gamemode survival @s
clear @s

tp @s[tag=redTeam] 0 0 0


execute as @s run function uocs-dp:tux_wars/load_kit1
effect give @s absorption 30 2

