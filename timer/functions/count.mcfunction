#@type: loop
#    @loop-type: recursive, 1s
#@in: timer:start

bossbar set players:timer name [ { "score" : { "objective " : "players.time", "name" : "%minutes" } }, ":", { "score" : { "objective " : "players.time", "name" : "%tenseconds" } }, { "score" : { "objective " : "players.time", "name" : "%oneseconds" } } ]
execute store result bossbar players:timer value run scoreboard players get %total players.time
scoreboard players subtract %oneseconds players.time 1
scoreboard players subtract %total players.time 1


execute if score %oneseconds players.time matches ..-1 run scoreboard players subtract %tenseconds players.time 1
execute if score %oneseconds players.time matches ..-1 run scoreboard players set %oneseconds players.time 9

execute if score %tenseconds players.time matches ..-1 run scoreboard players subtract %minutes players.time 1
execute if score %oneseconds players.time matches ..-1 run scoreboard players set %tenseconds players.time 9


#loop:
execute if score %countdown players.time matches 1.. unless score %total players.time matches 0 run schedule function timer:count 1s
