#榴弹发射器的射击冷却为16gt
item modify entity @s weapon.mainhand shotcast:durability/add_in_16


#刷新武器并且扣除弹药
#音效
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Damage:0,Tags:["zyy.shotcast.weapon"]}}}] run execute at @s run playsound minecraft:block.beehive.enter player @s ~ ~ ~

execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Damage:0,Tags:["zyy.shotcast.weapon.thrower"]}}},gamemode=!creative] run item modify entity @s weapon.offhand shotcast:count/remove_1

execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Damage:0,Tags:["zyy.shotcast.weapon.thrower"]}}}] run item modify entity @s weapon.mainhand shotcast:load_clip_ammo/grenade/smoke

