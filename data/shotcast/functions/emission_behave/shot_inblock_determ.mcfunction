#开始计时
scoreboard players add @e[type=minecraft:arrow,tag=zyy.shotcast.emission,nbt={inBlockState:{}}] zyy.shotcast.lifetime 1


execute as @e[tag=zyy.shotcast.emission.grenade.searchbomb,type=minecraft:arrow,nbt={inBlockState:{}}] run function shotcast:emission_behave/grenade/searchbomb
#Tail
#粒子效果
execute at @e[tag=zyy.shotcast.emission.bullet,type=minecraft:arrow,nbt={inBlockState:{}}] run particle lava ~ ~ ~
execute at @e[tag=zyy.shotcast.emission.grenade,type=minecraft:arrow,nbt={inBlockState:{}}] run particle explosion ~ ~0.2 ~ 0 0 0 0.25 1 normal

#清除计分板
scoreboard players reset @e[tag=zyy.shotcast.emission,type=minecraft:arrow,nbt={inBlockState:{}}] zyy.shotcast.uid
scoreboard players reset @e[tag=zyy.shotcast.emission,type=minecraft:arrow,nbt={inBlockState:{}}] zyy.shotcast.teamid
scoreboard players reset @e[tag=zyy.shotcast.emission,type=minecraft:arrow,nbt={inBlockState:{}}] zyy.shotcast.opr_1

#清除在方块内的箭
kill @e[tag=zyy.shotcast.emission,type=minecraft:arrow,nbt={inBlockState:{}}]
