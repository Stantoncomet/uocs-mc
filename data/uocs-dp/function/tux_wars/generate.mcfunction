$execute store result score $(id)Gen timeLeft run scoreboard players get $(id)Gen cooldowns
#$scoreboard players set $(id)Gen timeLeft $(cool_down)
$execute unless entity @e[distance=..1,type=item,sort=nearest,nbt={Item:{count:48}}] run summon item ~ ~ ~ {Item:{id:"$(id)",count:1}}


#playsound block.fire.extinguish block @a ~ ~0.5 ~ 0.3 2