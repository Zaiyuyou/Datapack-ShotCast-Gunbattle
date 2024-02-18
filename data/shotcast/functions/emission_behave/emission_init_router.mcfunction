execute as @s run function shotcast:emission_init/id


execute as @s[nbt={Potion:"minecraft:water"}] run function shotcast:emission_init/emission_tag/bullet/rifle
execute as @s[tag=zyy.shotcast.emission.bullet.rifle] run function shotcast:emission_init/motion/rifle

execute as @s[nbt={Potion:"minecraft:thick"}] run function shotcast:emission_init/emission_tag/bullet/sniper
execute as @s[tag=zyy.shotcast.emission.bullet.sniper] run function shotcast:emission_init/motion/sniper


execute as @s[nbt={Potion:"minecraft:night_vision"}] run function shotcast:emission_init/emission_tag/grenade/searchbomb
execute as @s[tag=zyy.shotcast.emission.grenade] run function shotcast:emission_init/motion/grenade



