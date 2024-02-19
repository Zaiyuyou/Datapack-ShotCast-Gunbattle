#计算最高连杀数
scoreboard players add @s zyy.shotcast.multi_kills 0
scoreboard players add @s zyy.shotcast.max_multi_kills 0
execute if score @s zyy.shotcast.multi_kills > @s zyy.shotcast.max_multi_kills run scoreboard players operation @s zyy.shotcast.max_multi_kills = @s zyy.shotcast.multi_kills

#清除背包
clear @s

#重新生成物品
loot replace entity @s container.0 loot shotcast:weapon/gun/rifle
loot replace entity @s container.0 loot shotcast:weapon/gun/sniper
loot replace entity @s container.1 loot shotcast:weapon/thrower/empty


#重置成就，以便下次触发
advancement revoke @s from shotcast:death