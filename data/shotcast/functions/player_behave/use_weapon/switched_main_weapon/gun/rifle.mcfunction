##重置冷却
scoreboard players operation @s zyy.shotcast.weapon.cooldown.shoot = gun.rifle zyy.shotcast.weapon.cooldown.shoot

##刷新手持武器的id
execute unless score @s zyy.shotcast.weapon.main_weapon_id = gun.rifle zyy.shotcast.weapon.main_weapon_id run scoreboard players operation @s zyy.shotcast.weapon.main_weapon_id = gun.rifle zyy.shotcast.weapon.main_weapon_id 