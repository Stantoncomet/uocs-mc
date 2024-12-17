#tellraw @a [{"selector": "@s"}, {"text": " has perished!"}]
gamemode spectator @s
scoreboard players reset @s onDeath

execute if entity @s[tag=redTeam] if score redTeam aliveBeds matches 1.. run scoreboard players set @s respawnLeft 200
execute if entity @s[tag=orangeTeam] if score orangeTeam aliveBeds matches 1.. run scoreboard players set @s respawnLeft 200
execute if entity @s[tag=purpleTeam] if score purpleTeam aliveBeds matches 1.. run scoreboard players set @s respawnLeft 200
execute if entity @s[tag=greenTeam] if score greenTeam aliveBeds matches 1.. run scoreboard players set @s respawnLeft 200