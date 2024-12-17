scoreboard objectives add timeLeft dummy {"text": "Remaining Time"}
scoreboard objectives add onDeath deathCount
scoreboard objectives add respawnLeft dummy
scoreboard objectives add cooldowns dummy
scoreboard objectives add aliveTeams dummy {"text": "Remaining Teams"}
scoreboard objectives add aliveBeds dummy

scoreboard objectives setdisplay sidebar timeLeft


# Gamerules
gamerule keepInventory false
gamerule doImmediateRespawn true
gamerule mobGriefing false