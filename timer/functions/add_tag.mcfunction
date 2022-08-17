#@type: loop
#	@@loop-type: recursive, 15s
#@retype: minecraft-load

execute if entity @a[ tag = !bossbar ] run bossbar set players:timer players @a
tag @a[ tag = !bossbar ] add bossbar

#loop:
schedule function timer:add_tag 15s
