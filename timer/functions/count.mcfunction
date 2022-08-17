#@type: loop
#    @loop-type: recursive, 1s
#@in: timer:start

bossbar set players:timer name [ { "score" : { "objective" : "players.time", "name" : "%minutes" } }, ":", { "score" : { "objective" : "players.time", "name" : "%tenseconds" } }, { "score" : { "objective" : "players.time", "name" : "%oneseconds" } } ]
execute store result bossbar players:timer value run scoreboard players get %total players.time
scoreboard players remove %oneseconds players.time 1
scoreboard players remove %total players.time 1


execute if score %oneseconds players.time matches ..-1 run scoreboard players remove %tenseconds players.time 1
execute if score %oneseconds players.time matches ..-1 run scoreboard players set %oneseconds players.time 9

execute if score %tenseconds players.time matches ..-1 run scoreboard players remove %minutes players.time 1
execute if score %tenseconds players.time matches ..-1 run scoreboard players set %tenseconds players.time 5


#loop:
execute if score %countdown players.time matches 1.. unless score %total players.time matches 0 run schedule function timer:count 1s
