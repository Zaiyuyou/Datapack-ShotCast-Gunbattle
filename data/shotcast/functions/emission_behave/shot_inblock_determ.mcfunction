#开始计时
scoreboard players add @e[tag=zyy.shotcast.emission,nbt={inBlockState:{}}] zyy.shotcast.lifetime 0

scoreboard players remove @e[tag=zyy.shotcast.emission,nbt={inBlockState:{}}] zyy.shotcast.lifetime 1


execute as @e[tag=zyy.shotcast.emission.grenade.searchlight,nbt={inBlockState:{}}] run function shotcast:emission_behave/grenade/searchlight
execute as @e[tag=zyy.shotcast.emission.grenade.smoke,nbt={inBlockState:{}}] run function shotcast:emission_behave/grenade/smoke

#Tail
#粒子效果
execute at @e[tag=zyy.shotcast.emission.bullet,nbt={inBlockState:{}}] run particle lava ~ ~ ~

#音效


#清除计分板
scoreboard players reset @e[tag=zyy.shotcast.emission,nbt={inBlockState:{}}] zyy.shotcast.uid
scoreboard players reset @e[tag=zyy.shotcast.emission,nbt={inBlockState:{}}] zyy.shotcast.teamid
scoreboard players reset @e[tag=zyy.shotcast.emission,nbt={inBlockState:{}}] zyy.shotcast.opr_1

#清除在方块内的箭
kill @e[tag=zyy.shotcast.emission,scores={zyy.shotcast.lifetime=..0},nbt={inBlockState:{}}]
