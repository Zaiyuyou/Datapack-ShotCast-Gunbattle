scoreboard players operation @s zyy.shotcast.opr_1 = @s zyy.shotcast.lifetime
scoreboard players operation @s zyy.shotcast.opr_1 %= 3 zyy.shotcast.constant



#发出烟雾
execute at @s[scores={zyy.shotcast.opr_1=0}] run particle cloud ~ ~1 ~ 3 4 3 0 500 normal

#音效
execute at @s[scores={zyy.shotcast.opr_1=0}] run playsound entity.tnt.primed player @a ~ ~ ~