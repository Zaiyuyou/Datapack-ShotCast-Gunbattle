execute as @s run function shotcast:arrow_init/id
execute as @s[nbt={Potion:"minecraft:water"}] run function shotcast:arrow_init/motion/rifle
execute as @s[nbt={Potion:"minecraft:thick"}] run function shotcast:arrow_init/motion/sniper
execute as @s[nbt={Potion:"minecraft:night_vision"}] run function shotcast:arrow_init/motion/grenade



tag @s add zyy.shotcast.modified
