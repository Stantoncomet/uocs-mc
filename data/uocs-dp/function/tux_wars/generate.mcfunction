$execute store result score $(id)Gen timeLeft run scoreboard players get $(id)Gen cooldowns
#$scoreboard players set $(id)Gen timeLeft $(cool_down)
$summon item ~ ~ ~ {Item:{id:"$(id)",count:1}}

playsound block.fire.extinguish block @a ~ ~0.5 ~ 1.0 1.5