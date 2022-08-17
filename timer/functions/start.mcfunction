#@type: runner

bossbar set players:timer value 300
scoreboard players set %minutes players.timer 5
scoreboard players set %tenseconds players.timer 0
scoreboard players set %oneseconds players.timer 0
scoreboard players set %countdown players.timer 1

function timer:count
