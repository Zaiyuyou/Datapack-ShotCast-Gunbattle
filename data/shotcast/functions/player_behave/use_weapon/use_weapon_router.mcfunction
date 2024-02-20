

##枪械冷却
scoreboard players add @a zyy.shotcast.weapon.cooldown.shoot 0
scoreboard players set @a[scores={zyy.shotcast.weapon.cooldown.shoot=..-1}] zyy.shotcast.weapon.cooldown.shoot 0
scoreboard players remove @a[scores={zyy.shotcast.weapon.cooldown.shoot=1..}] zyy.shotcast.weapon.cooldown.shoot 1



##步枪
#刷新换弹cd以及手持id
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.rifle"]}}}] run execute unless score @s zyy.shotcast.weapon.selected_weapon_id = gun.rifle zyy.shotcast.weapon.selected_weapon_id run function shotcast:player_behave/use_weapon/switched_main_weapon/gun/rifle
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b,Damage:465,Tags:["zyy.shotcast.weapon.gun.rifle"]}}}] run function shotcast:player_behave/use_weapon/switched_main_weapon/gun/rifle

#音效
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.rifle"]}}},scores={zyy.shotcast.weapon.cooldown.shoot=1}] run execute at @s run playsound block.chain.hit player @a ~ ~ ~

##步枪(新)
#如果副手没有子弹，则认为不在装弹模式，将弹匣内的子弹上膛
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.rifle"],Charged:0b}}},scores={zyy.shotcast.weapon.cooldown.shoot=0}] run execute unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammo.bullet.rifle"]}}]}] run function shotcast:player_behave/use_weapon/remove_clip_ammo/bullet/rifle
#音效
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.sniper"]}}},scores={zyy.shotcast.weapon.cooldown.shoot=1}] run execute at @s run playsound block.chain.place player @a ~ ~ ~

###狙击枪
#刷新换弹cd以及手持id
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.sniper"]}}}] run execute unless score @s zyy.shotcast.weapon.selected_weapon_id = gun.sniper zyy.shotcast.weapon.selected_weapon_id run function shotcast:player_behave/use_weapon/switched_main_weapon/gun/sniper
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b,Damage:465,Tags:["zyy.shotcast.weapon.gun.sniper"]}}}] run function shotcast:player_behave/use_weapon/switched_main_weapon/gun/sniper


##狙击枪(新)
#如果副手没有子弹，则认为不在装弹模式，将弹匣内的子弹上膛
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.sniper"],Charged:0b}}},scores={zyy.shotcast.weapon.cooldown.shoot=0}] run execute unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammo.bullet.sniper"]}}]}] run function shotcast:player_behave/use_weapon/remove_clip_ammo/bullet/sniper








###榴弹发射器
#刷新抬手cd以及手持id
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.thrower"]}}}] run execute unless score @s zyy.shotcast.weapon.selected_weapon_id = gun.sniper zyy.shotcast.weapon.selected_weapon_id run function shotcast:player_behave/use_weapon/switched_main_weapon/thrower

#榴弹发射器(单发武器)
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.thrower"],Charged:0b,Damage:0}}}] run item modify entity @s weapon.mainhand shotcast:remove_clip_ammo/template/single_shot



##Tail
#弹匣归零则提示后去除留膛弹药
execute as @a run execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon"],Damage:465,Charged:1b}}}] run function shotcast:player_behave/use_weapon/notice/clip_runout

execute as @a run execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon"],Damage:465,Charged:1b}}}] run item modify entity @s weapon.mainhand shotcast:remove_clip_ammo/template/uncharged


#重置枪械使用次数
scoreboard players operation @s zyy.shotcast.last.gun.used = @s zyy.shotcast.weapon.gun.used

