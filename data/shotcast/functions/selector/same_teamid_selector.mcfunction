#值相同的玩家具有zyy.shotcast.selector.teamid.same

tag @e remove zyy.shotcast.selector.teamid.pointer
tag @e remove zyy.shotcast.selector.teamid.same

tag @s add zyy.shotcast.selector.teamid.pointer

execute as @a run scoreboard players operation @s zyy.shotcast.opr_1 = @s zyy.shotcast.teamid
execute as @a run scoreboard players operation @s zyy.shotcast.opr_1 -= @e[tag=zyy.shotcast.selector.teamid.pointer,limit=1] zyy.shotcast.teamid



tag @a[scores={zyy.shotcast.opr_1=0}] add zyy.shotcast.selector.teamid.same
