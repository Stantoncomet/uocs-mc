scoreboard players reset @s respawnLeft

effect give @s instant_health 1 255
gamemode adventure @s
clear @s

#tp @s -290 219 133

tp @s[tag=redTeam] -364 192 164
tp @s[tag=purpleTeam] 0 0 0
tp @s[tag=orangeTeam] 0 0 0
tp @s[tag=greenTeam] -321 192 207


execute as @s run function uocs-dp:tux_wars/load_kit2
effect give @s absorption 30 2

