
# item modify entity @s[nbt={Inventory:[{id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammo.bullet.sniper"]}}]}] weapon.offhand shotcast:load_clip_ammo/bullet/sniper
# clear @s tipped_arrow{Tags:["zyy.shotcast.ammo.bullet.sniper"]} 1

item modify entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammo.bullet.sniper"]}}]}] weapon.mainhand shotcast:load_clip_ammo/bullet/sniper
item modify entity @s weapon.offhand shotcast:count/remove_1

#将玩家的抬手冷却一直赋值为这个枪械的换弹夹后摇时长
function shotcast:player_behave/use_weapon/switched_main_weapon/gun/sniper
