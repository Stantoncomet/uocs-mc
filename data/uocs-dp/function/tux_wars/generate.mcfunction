say gening
$execute store result score $(id)Gen timeLeft run scoreboard players get $(id)Gen cooldowns
execute if entity @e[type=item, distance=..1] store result score @s genCount run data get entity @e[sort=nearest, limit=1, type=item, distance=..1] Item.count
execute unless entity @e[type=item, distance=..1] run scoreboard players set @s genCount 0
$execute unless score @s genCount matches $(cap).. run summon item ~ ~ ~ {Item:{id:"$(id)",count:1}}

#playsound block.fire.extinguish block @a ~ ~0.5 ~ 0.3 2