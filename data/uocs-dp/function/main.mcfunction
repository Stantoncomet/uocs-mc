execute as @a at @s if block ~ ~ ~ short_grass run effect give @s minecraft:poison 1 1
execute as @a at @s if block ~ ~ ~ poppy run effect give @s minecraft:instant_health 1 1

execute as @a at @s if items entity @s inventory.* apple run clear @s apple
execute as @a at @s if items entity @s hotbar.* apple run clear @s apple