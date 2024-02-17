#照明箭照亮周围的人

execute at @e[type=minecraft:arrow,tag=zyy.shotcast.modified_motion,nbt={inBlockState:{},Potion:"minecraft:night_vision"}] run function shotcast:arrow_determ/same_uid_determ
execute at @e[type=minecraft:arrow,tag=zyy.shotcast.modified_motion,nbt={inBlockState:{},Potion:"minecraft:night_vision"}] run effect give @a[distance=..7,scores={zyy.shotcast.opr_1=0},gamemode=!spectator] glowing 10 0 true



#Tail

#清除计分板
scoreboard players reset @e[type=minecraft:arrow,tag=zyy.shotcast.modified_motion,nbt={inBlockState:{}}] zyy.shotcast.uid
scoreboard players reset @e[type=minecraft:arrow,tag=zyy.shotcast.modified_motion,nbt={inBlockState:{}}] zyy.shotcast.teamid

#清除在方块内的箭
kill @e[type=minecraft:arrow,tag=zyy.shotcast.modified_motion,nbt={inBlockState:{}}]
