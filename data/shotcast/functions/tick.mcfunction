#空计分项初始化赋值
scoreboard players add @a zyy.shotcast.uid 0
scoreboard players add @a zyy.shotcast.last.gun.used 0
scoreboard players add @a zyy.shotcast.last.death 0

#自动给新玩家分配uid
execute if entity @p[scores={zyy.shotcast.uid=0}] run scoreboard players add Total zyy.shotcast.uid 1
scoreboard players operation @p[scores={zyy.shotcast.uid=0}] zyy.shotcast.uid = Total zyy.shotcast.uid


#主计时器+1
scoreboard players add main_tick zyy.shotcast.uid 1


#箭矢初始化
execute as @e[type=arrow,tag=!zyy.shotcast.modified_motion] run function shotcast:emission_behave/emission_init_router


#给玩家枪
function shotcast:player_behave/use_weapon/use_weapon_router
#玩家使用检测
execute as @a run execute if score @s zyy.shotcast.last.gun.used < @s zyy.shotcast.weapon.gun.used run function shotcast:player_behave/use_weapon/use_weapon_router


#箭矢击中地形后的收尾工作：
function shotcast:emission_behave/shot_inblock_determ
#data get entity @e[type=minecraft:snowball,limit=1,sort=nearest] Motion
#execute as @e[type=snowball,tag=!zyy.shotcast.modified_motion] run function shotcast:modify_motion