execute as @s run function shotcast:emission_init/id

#步枪子弹
execute as @s[nbt={Potion:"minecraft:water"}] run function shotcast:emission_init/tags/bullet/rifle
execute as @s[tag=zyy.shotcast.emission.bullet.rifle] run function shotcast:emission_init/motion/rifle
execute as @s[tag=zyy.shotcast.emission.bullet.rifle] run function shotcast:emission_init/lifetime/bullet/rifle


#狙击枪子弹
execute as @s[nbt={Potion:"minecraft:strong_harming"}] run function shotcast:emission_init/tags/bullet/sniper
execute as @s[tag=zyy.shotcast.emission.bullet.sniper] run function shotcast:emission_init/motion/sniper
execute as @s[tag=zyy.shotcast.emission.bullet.sniper] run function shotcast:emission_init/lifetime/bullet/sniper

#照明弹
execute as @s[type=spectral_arrow] run function shotcast:emission_init/tags/grenade/searchlight
execute as @s[tag=zyy.shotcast.emission.grenade.searchlight] run function shotcast:emission_init/lifetime/grenade/searchlight


#烟雾弹
execute as @s[nbt={Potion:"minecraft:long_night_vision"}] run function shotcast:emission_init/tags/grenade/smoke
execute as @s[tag=zyy.shotcast.emission.grenade.smoke] run function shotcast:emission_init/lifetime/grenade/smoke

#投掷物的动量统一修改
execute as @s[tag=zyy.shotcast.emission.grenade] run function shotcast:emission_init/motion/grenade


#发射出的箭无法捡起
execute as @e[tag=zyy.shotcast.emission] run data modify entity @s pickup set value 0b
#发射出的箭没有药水效果
execute as @e[tag=zyy.shotcast.emission] run data modify entity @s Potion set value ""

tag @s add zyy.shotcast.modified

