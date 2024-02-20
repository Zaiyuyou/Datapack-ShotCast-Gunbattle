#生成
function mm:game/game_module/gold_ingot_spawn


#矫正弓位置
#execute as @a[nbt={Inventory:[{tag:{Bow:1}}]},nbt=!{Inventory:[{tag:{Bow:1},Slot:0b}]}] run tag @s add mm_dislocate_bow
# execute as @a[nbt={Inventory:[{tag:{Tags:["zyy.shotcast.weapon.gun.rifle"]}}]},nbt=!{Inventory:[{tag:{Tags:["zyy.shotcast.weapon.gun.rifle"]},Slot:0b}]}] run tag @s add mm_dislocate_bow
# execute as @a[nbt={Inventory:[{tag:{Tags:["zyy.shotcast.weapon.gun.sniper"]}}]},nbt=!{Inventory:[{tag:{Tags:["zyy.shotcast.weapon.gun.sniper"]},Slot:2b}]}] run tag @s add mm_dislocate_bow
# execute as @a[nbt={Inventory:[{tag:{Tags:["zyy.shotcast.weapon.thrower"]}}]},nbt=!{Inventory:[{tag:{Tags:["zyy.shotcast.weapon.thrower"]},Slot:3b}]}] run tag @s add mm_dislocate_bow

#execute as @a[tag=mm_dislocate_bow] run clear @s bow
execute as @a[tag=mm_dislocate_bow] run clear @s crossbow
#execute as @a[tag=mm_dislocate_bow] run loot replace entity @s hotbar.0 loot mm:bow/showdown
# execute as @a[tag=mm_dislocate_bow] run loot replace entity @s hotbar.0 loot shotcast:weapon/gun/rifle
# execute as @a[tag=mm_dislocate_bow] run loot replace entity @s hotbar.2 loot shotcast:weapon/gun/sniper
# execute as @a[tag=mm_dislocate_bow] run loot replace entity @s hotbar.3 loot shotcast:weapon/thrower

execute as @a[tag=mm_dislocate_bow] run tag @s remove mm_dislocate_bow

#execute as @a[nbt=!{Inventory:[{tag:{Bow:1}}]}] at @s if entity @e[type=item,nbt={Item:{tag:{Bow:1}}},distance=..2] run tag @s add mm_drop_bow
execute as @a[tag=mm_drop_bow] run kill @e[type=item,nbt={Item:{tag:{Bow:1}}}]
#execute as @a[tag=mm_drop_bow] run loot replace entity @s hotbar.0 loot mm:bow/showdown
execute as @a[tag=mm_drop_bow] run tag @s remove mm_drop_bow


#修正箭矢数量
#execute as @a[scores={mm_shoot_det=1}] run tag @s add mm_shoot
#execute as @a[tag=mm_shoot] run scoreboard players operation @s mm_sc_tick = shoot_cooldown_normal_tick mm_settings
#execute as @a[tag=mm_shoot] run scoreboard players operation @s mm_sc_second = shoot_cooldown_normal_second mm_settings
execute as @a[tag=mm_shoot] run clear @s arrow
#execute as @a[tag=mm_shoot] run scoreboard players reset @s mm_shoot_det
execute as @a[tag=mm_shoot] run tag @s remove mm_shoot


#冷却计时完毕后填充箭
#execute as @a[scores={mm_sc_second=0,mm_sc_tick=0,mm_arrow=1..}] run loot replace entity @s hotbar.2 loot mm:arrow


#矫正箭矢位置
execute if score timer mm_main matches 0 as @a run clear @s arrow
execute if score timer mm_main matches 0 run kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
execute if score timer mm_main matches 0 run kill @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammo"]}}}]
execute if score timer mm_main matches 0 run item modify entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammo.bullet"]}}]}] weapon.offhand shotcast:count/set_64
#execute if score timer mm_main matches 0 as @a[scores={mm_arrow=1..}] unless score @s mm_sc_second matches 0.. run loot replace entity @s hotbar.2 loot mm:arrow


#冷却计时
execute as @a[scores={mm_sc_second=0..}] run scoreboard players remove @s mm_sc_tick 1
execute as @a[scores={mm_sc_second=0..,mm_sc_tick=-1}] run scoreboard players remove @s mm_sc_second 1
execute as @a[scores={mm_sc_second=0..,mm_sc_tick=-1}] run scoreboard players set @s mm_sc_tick 19