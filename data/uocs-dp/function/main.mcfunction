execute as @a at @s if block ~ ~ ~ short_grass run effect give @s minecraft:poison 1 1
execute as @a at @s if block ~ ~ ~ poppy run effect give @s minecraft:instant_health 1 1

execute as @a at @s if items entity @s inventory.* #uocs-dp:nonos run function uocs-dp:blacklist
execute as @a at @s if items entity @s hotbar.* #uocs-dp:nonos run function uocs-dp:blacklist
execute as @a at @s if items entity @s weapon.offhand #uocs-dp:nonos run function uocs-dp:blacklist
execute as @a at @s if items entity @s armor.* #uocs-dp:nonos run function uocs-dp:blacklist