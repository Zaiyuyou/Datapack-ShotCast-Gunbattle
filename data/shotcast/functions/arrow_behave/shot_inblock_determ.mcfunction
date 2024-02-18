#照明箭照亮周围的人

execute at @e[type=minecraft:arrow,tag=zyy.shotcast.ammu.grenade.glowing,nbt={inBlockState:{}}] run function shotcast:arrow_behave/same_uid_determ
execute at @e[type=minecraft:arrow,tag=zyy.shotcast.ammu.grenade.glowing,nbt={inBlockState:{}}] run effect give @a[distance=..7,scores={zyy.shotcast.opr_1=0},gamemode=!spectator] glowing 10 0 true



#Tail
#粒子效果
execute at @e[tag=zyy.shotcast.ammu.bullet,type=minecraft:arrow,nbt={inBlockState:{}}] run particle lava ~ ~ ~
execute at @e[tag=zyy.shotcast.ammu.grenade,type=minecraft:arrow,nbt={inBlockState:{}}] run particle explosion ~ ~0.2 ~ 0 0 0 0.25 1 normal

#清除计分板
scoreboard players reset @e[type=minecraft:arrow,nbt={inBlockState:{}}] zyy.shotcast.uid
scoreboard players reset @e[type=minecraft:arrow,nbt={inBlockState:{}}] zyy.shotcast.teamid

#清除在方块内的箭
kill @e[type=minecraft:arrow,nbt={inBlockState:{}}]
