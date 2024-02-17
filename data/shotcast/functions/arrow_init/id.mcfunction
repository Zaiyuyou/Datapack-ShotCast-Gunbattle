scoreboard players add @s zyy.shotcast.uid 0
scoreboard players add @s zyy.shotcast.teamid 0
execute as @s at @s positioned ~ ~-1.49 ~ run scoreboard players operation @s zyy.shotcast.uid = @p zyy.shotcast.uid
execute as @s at @s positioned ~ ~-1.49 ~ run scoreboard players operation @s zyy.shotcast.teamid = @p zyy.shotcast.teamid

execute as @s at @s run function shotcast:arrow_determ/same_uid_determ
#execute as @s unless entity @a[scores={zyy.shotcast.opr_1=0}] run kill @s
