#clear @a crossbow{Tags:["zyy.shotcast.weapon"]} 

#give @s crossbow{Tags:["zyy.shotcast.weapon"]}


#步枪
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.rifle"],Charged:0b}},Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammo.bullet.rifle"]}}]}] run function shotcast:player_behave/use_weapon/use_stream/gun/rifle
#狙击枪
loot replace entity @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.sniper"],Charged:0b}},Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammo.bullet.sniper"]}}]}] weapon.mainhand loot shotcast:weapon/gun/sniper
#探照弹发射器
loot replace entity @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.thrower.searchbomb"],Charged:0b}},Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammo.grenade.searchbomb"]}}]}] weapon.mainhand loot shotcast:weapon/thrower/searchbomb








#清除弹药
execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.rifle"],Charged:0b}},Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammo.bullet.rifle"]}}]},gamemode=!creative] run function shotcast:player_behave/use_weapon/ammo_remove/bullet/rifle
execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.gun.sniper"],Charged:0b}},Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammo.bullet.sniper"]}}]},gamemode=!creative] run function shotcast:player_behave/use_weapon/ammo_remove/bullet/sniper
execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["zyy.shotcast.weapon.thrower.searchbomb"],Charged:0b}},Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammo.grenade.searchbomb"]}}]},gamemode=!creative] run function shotcast:player_behave/use_weapon/ammo_remove/grenade/searchbomb

title @s actionbar "你处于创造模式，射击不消耗弹药"


#枪械冷却

#Tail
scoreboard players operation @s zyy.shotcast.last.gun.used = @s zyy.shotcast.weapon.gun.used