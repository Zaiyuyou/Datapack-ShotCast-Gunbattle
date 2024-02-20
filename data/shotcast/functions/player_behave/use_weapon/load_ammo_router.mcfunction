scoreboard players add @a zyy.shotcast.weapon.cooldown.load 0
scoreboard players set @a[scores={zyy.shotcast.weapon.cooldown.load=..-1}] zyy.shotcast.weapon.cooldown.load 0
scoreboard players remove @a[scores={zyy.shotcast.weapon.cooldown.load=1..}] zyy.shotcast.weapon.cooldown.load 1


##步枪（新）
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammo.bullet.rifle"]}}],SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.rifle"],Charged:0b}}}] run execute unless entity @s[nbt={SelectedItem:{tag:{Damage:0}}}] run function shotcast:player_behave/use_weapon/load_clip_ammo/bullet/rifle
#装弹退膛提醒
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Tags:["zyy.shotcast.ammo.bullet.rifle"]}}],SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.rifle"],Charged:1b}}}] run function shotcast:player_behave/use_weapon/notice/can_not_load
#装弹完成提示
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Tags:["zyy.shotcast.ammo.bullet.rifle"]}}],SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.rifle"],Charged:0b}}}] run execute if entity @s[nbt={SelectedItem:{tag:{Damage:0}}}] run function shotcast:player_behave/use_weapon/notice/load_complete

##狙击枪（新）
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammo.bullet.sniper"]}}],SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.sniper"],Charged:0b}}}] run execute unless entity @s[nbt={SelectedItem:{tag:{Damage:0}}}] run function shotcast:player_behave/use_weapon/load_clip_ammo/bullet/sniper
#装弹退膛提醒
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Tags:["zyy.shotcast.ammo.bullet.sniper"]}}],SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.sniper"],Charged:1b}}}] run function shotcast:player_behave/use_weapon/notice/can_not_load
#装弹完成提示
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Tags:["zyy.shotcast.ammo.bullet.sniper"]}}],SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.sniper"],Charged:0b}}}] run execute if entity @s[nbt={SelectedItem:{tag:{Damage:0}}}] run function shotcast:player_behave/use_weapon/notice/load_complete

#Tail
scoreboard players operation @s zyy.shotcast.last.gun.used = @s zyy.shotcast.weapon.gun.used


#榴弹发射器(单发武器)
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:spectral_arrow",tag:{Tags:["zyy.shotcast.ammo.grenade.searchlight"]}}],SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.thrower"],Charged:0b}}}] run function shotcast:player_behave/use_weapon/load_clip_ammo/grenade/searchlight

execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammo.grenade.smoke"]}}],SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.thrower"],Charged:0b}}}] run function shotcast:player_behave/use_weapon/load_clip_ammo/grenade/smoke