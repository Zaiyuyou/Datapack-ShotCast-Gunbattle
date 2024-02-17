scoreboard players add @a zyy.shotcast.uid 0
scoreboard players add @a zyy.shotcast.last.gun.used 0
scoreboard players add @a zyy.shotcast.last.death 0


execute if entity @p[scores={zyy.shotcast.uid=0}] run scoreboard players add Total zyy.shotcast.uid 1
scoreboard players operation @p[scores={zyy.shotcast.uid=0}] zyy.shotcast.uid = Total zyy.shotcast.uid

scoreboard players add main_tick zyy.shotcast.uid 1


execute as @e[type=arrow,tag=!zyy.shotcast.modified_motion] run function shotcast:arrow_init



function shotcast:gun_give_detecion
execute as @a run execute if score @s zyy.shotcast.last.gun.used < @s zyy.shotcast.gun.used run function shotcast:gun_use_detection


execute at @e[type=minecraft:arrow,nbt={inBlockState:{}}] run particle lava ~ ~ ~

function shotcast:arrow_determ/shot_inblock_determ
#data get entity @e[type=minecraft:snowball,limit=1,sort=nearest] Motion
#execute as @e[type=snowball,tag=!zyy.shotcast.modified_motion] run function shotcast:modify_motion