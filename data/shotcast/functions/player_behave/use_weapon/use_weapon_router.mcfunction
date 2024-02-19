

##枪械冷却
scoreboard players add @a zyy.shotcast.weapon.cooldown.shoot 0
scoreboard players set @a[scores={zyy.shotcast.weapon.cooldown.shoot=..-1}] zyy.shotcast.weapon.cooldown.shoot 0
scoreboard players remove @a[scores={zyy.shotcast.weapon.cooldown.shoot=1..}] zyy.shotcast.weapon.cooldown.shoot 1

##步枪
#刷新换弹cd以及手持id
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.rifle"]}}}] run execute unless score @s zyy.shotcast.weapon.main_weapon_id = gun.rifle zyy.shotcast.weapon.main_weapon_id run function shotcast:player_behave/use_weapon/switched_main_weapon/gun/rifle
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.rifle"],Charged:0b}}},scores={zyy.shotcast.weapon.cooldown.shoot=0}] run function shotcast:player_behave/use_weapon/remove_clip_ammo/bullet/rifle

###狙击枪
#刷新换弹cd以及手持id
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.sniper"]}}}] run execute unless score @s zyy.shotcast.weapon.main_weapon_id = gun.sniper zyy.shotcast.weapon.main_weapon_id run function shotcast:player_behave/use_weapon/switched_main_weapon/gun/sniper

execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.sniper"],Charged:0b}}},scores={zyy.shotcast.weapon.cooldown.shoot=0}] run function shotcast:player_behave/use_weapon/remove_clip_ammo/bullet/sniper



##Tail
#弹匣归零则去除留膛弹药
execute as @a run execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon"],Damage:465,Charged:1b}}}] run item modify entity @s weapon.mainhand shotcast:remove_clip_ammo/template/uncharged
#重置枪械使用次数
scoreboard players operation @s zyy.shotcast.last.gun.used = @s zyy.shotcast.weapon.gun.used

