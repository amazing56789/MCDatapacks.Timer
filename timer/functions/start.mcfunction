#@type: runner

bossbar set players:timer value 300
scoreboard players set %oneseconds players.time 0
scoreboard players set %tenseconds players.time 0
scoreboard players set %minutes players.time 5
scoreboard players set %total players.time 300
scoreboard players set %countdown players.time 1

function timer:count
