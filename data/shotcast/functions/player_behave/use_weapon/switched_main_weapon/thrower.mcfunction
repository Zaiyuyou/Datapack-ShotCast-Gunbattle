##重置冷却
scoreboard players operation @s[nbt={Inventory:[{id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammo.grenade"]}}]}] zyy.shotcast.weapon.cooldown.shoot = thrower zyy.shotcast.weapon.cooldown.shoot

##刷新手持武器的id
execute unless score @s zyy.shotcast.weapon.selected_weapon_id = thrower zyy.shotcast.weapon.selected_weapon_id run scoreboard players operation @s zyy.shotcast.weapon.selected_weapon_id = thrower zyy.shotcast.weapon.selected_weapon_id 