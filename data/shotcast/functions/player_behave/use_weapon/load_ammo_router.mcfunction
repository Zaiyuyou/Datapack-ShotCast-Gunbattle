scoreboard players add @a zyy.shotcast.weapon.cooldown.load 0
scoreboard players set @a[scores={zyy.shotcast.weapon.cooldown.load=..-1}] zyy.shotcast.weapon.cooldown.load 0
scoreboard players remove @a[scores={zyy.shotcast.weapon.cooldown.load=1..}] zyy.shotcast.weapon.cooldown.load 1

execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.rifle"]}}]}] run execute as @a run execute unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{Damage:0}}]}] run function shotcast:player_behave/use_weapon/load_clip_ammo/bullet/rifle
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.sniper"]}}]}] run execute as @a run execute unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{Damage:0}}]}] run function shotcast:player_behave/use_weapon/load_clip_ammo/bullet/sniper

#Tail
scoreboard players operation @s zyy.shotcast.last.gun.used = @s zyy.shotcast.weapon.gun.used


