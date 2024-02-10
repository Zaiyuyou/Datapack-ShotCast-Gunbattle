scoreboard players add @a zyy.raycast.uid 0
scoreboard players add @a zyy.raycast.last.gun.used 0
scoreboard players add @a zyy.raycast.last.death 0


execute if entity @p[scores={zyy.raycast.uid=0}] run scoreboard players add Total zyy.raycast.uid 1
scoreboard players operation @p[scores={zyy.raycast.uid=0}] zyy.raycast.uid = Total zyy.raycast.uid

scoreboard players add main_tick zyy.raycast.uid 1


#execute as @e[type=snowball,tag=!zyy.raycast.modified_motion] run function raycast:modify_motion
execute as @e[type=arrow,tag=!zyy.raycast.modified_motion] run function raycast:modify_motion



function raycast:gun_give_detecion
execute as @a run execute if score @s zyy.raycast.last.gun.used < @s zyy.raycast.gun.used run function raycast:gun_use_detection


execute at @e[type=minecraft:arrow,nbt={inBlockState:{}}] run particle lava ~ ~ ~
#清除在方块内的箭
kill @e[type=minecraft:arrow,tag=zyy.raycast.modified_motion,nbt={inBlockState:{}}]

#data get entity @e[type=minecraft:snowball,limit=1,sort=nearest] Motion
#execute as @e[type=snowball,tag=!zyy.raycast.modified_motion] run function raycast:modify_motion