scoreboard players set branch _seasons 0
execute if score z _seasons matches ..-4 run scoreboard players set branch _seasons -1
execute if score z _seasons matches 4.. run scoreboard players set branch _seasons 1

execute if score branch _seasons matches -1 run scoreboard players add z _seasons 4
execute if score branch _seasons matches 1 run scoreboard players remove z _seasons 4

execute if score branch _seasons matches -1 positioned ~ ~ ~-4 run function seasons:generated/move/z2
execute if score branch _seasons matches 0 run function seasons:generated/move/z2
execute if score branch _seasons matches 1 positioned ~ ~ ~4 run function seasons:generated/move/z2
