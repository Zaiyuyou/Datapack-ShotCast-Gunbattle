#值相同的玩家具有zyy.shotcast.selector.teamid.same

tag @e remove zyy.shotcast.selector.teamid.pointer
tag @e remove zyy.shotcast.selector.teamid.same

tag @s add zyy.shotcast.selector.teamid.pointer

execute as @a run execute if score @s zyy.shotcast.teamid = @e[tag=zyy.shotcast.selector.teamid.pointer,limit=1] zyy.shotcast.teamid run tag @s add zyy.shotcast.selector.teamid.same


