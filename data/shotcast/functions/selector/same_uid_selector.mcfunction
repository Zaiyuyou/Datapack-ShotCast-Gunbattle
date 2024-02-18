#值相同的玩家具有zyy.shotcast.selector.uid.same

tag @e remove zyy.shotcast.selector.uid.pointer
tag @e remove zyy.shotcast.selector.uid.same

tag @s add zyy.shotcast.selector.uid.pointer

execute as @a run scoreboard players operation @s zyy.shotcast.opr_1 = @s zyy.shotcast.uid
execute as @a run scoreboard players operation @s zyy.shotcast.opr_1 -= @e[tag=zyy.shotcast.selector.uid.pointer,limit=1] zyy.shotcast.uid



tag @a[scores={zyy.shotcast.opr_1=0}] add zyy.shotcast.selector.uid.same
