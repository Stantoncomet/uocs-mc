#$scoreboard players set $(id)Gen timeLeft $(cool_down)
#$summon item ~ ~ ~ {Item:{id:"$(id)",count:1}}


scoreboard players set brickGen timeLeft 100
summon item ~ ~ ~ {Item:{id:"brick", count:1}}

playsound block.fire.extinguish block @a ~ ~ ~ 1.0 1.5