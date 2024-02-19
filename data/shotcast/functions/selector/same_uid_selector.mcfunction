#值相同的玩家具有zyy.shotcast.selector.uid.same

tag @e remove zyy.shotcast.selector.uid.pointer
tag @e remove zyy.shotcast.selector.uid.same

tag @s add zyy.shotcast.selector.uid.pointer

execute as @a run execute if score @s zyy.shotcast.uid = @e[tag=zyy.shotcast.selector.uid.pointer,limit=1] zyy.shotcast.uid run tag @s add zyy.shotcast.selector.uid.same


