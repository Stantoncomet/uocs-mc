$execute store result score $(id)Gen timeLeft run scoreboard players get $(id)Gen cooldowns
execute store result score @s genCount run data get entity @e[sort=nearest, limit=1, type=item, distance=..1] Item.count
$summon item ~ ~ ~ {Item:{id:"$(id)",count:1}}

#playsound block.fire.extinguish block @a ~ ~0.5 ~ 0.3 2