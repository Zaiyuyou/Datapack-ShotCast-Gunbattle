##重置冷却，并且刷新一次手持武器id
execute as @s run function shotcast:player_behave/use_weapon/switched_weapon/gun/sniper


##如果主手的武器还有弹药，且未被切换过，则填充弹药
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Damage:465}}}] run item modify entity @s weapon.mainhand shotcast:remove_clip_ammo/bullet/sniper

