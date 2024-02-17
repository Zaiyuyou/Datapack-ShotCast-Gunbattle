tag @s add zyy.shotcast.arrow_determ.uid
execute as @a run scoreboard players operation @s zyy.shotcast.opr_1 = @s zyy.shotcast.uid
execute as @a run scoreboard players operation @s zyy.shotcast.opr_1 -= @e[tag=zyy.shotcast.arrow_determ.teamid,limit=1] zyy.shotcast.uid
tag @s remove zyy.shotcast.arrow_determ.uid