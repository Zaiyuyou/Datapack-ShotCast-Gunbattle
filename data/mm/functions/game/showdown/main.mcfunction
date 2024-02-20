#计时
scoreboard players remove game_tick mm_main 1
execute if score game_tick mm_main matches 0 run scoreboard players remove game_second mm_main 1
execute if score game_tick mm_main matches 0 run scoreboard players set game_tick mm_main 20

#启用魔改模块
function mm:game/game_module/zyy_module 


#显示标题和消息及定时性事件
execute if score game_second mm_main > get_weapon_5_short mm_data run effect give @a slowness 1 255 true

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_5_short mm_data run tellraw @a [{"text":"你将在","color":"yellow"},{"text":"5","color":"red"},{"text":"秒后获得武器!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_5_short mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_4_short mm_data run tellraw @a [{"text":"你将在","color":"yellow"},{"text":"4","color":"red"},{"text":"秒后获得武器!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_4_short mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_3_short mm_data run tellraw @a [{"text":"你将在","color":"yellow"},{"text":"3","color":"red"},{"text":"秒后获得武器!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_3_short mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_2_short mm_data run tellraw @a [{"text":"你将在","color":"yellow"},{"text":"2","color":"red"},{"text":"秒后获得武器!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_2_short mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_1_short mm_data run tellraw @a [{"text":"你将在","color":"yellow"},{"text":"1","color":"red"},{"text":"秒后获得武器!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_1_short mm_data as @a at @s run playsound minecraft:ui.button.click player @s

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0_short mm_data run tellraw @a {"text":"你已经获得了武器!","color":"yellow"}
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0_short mm_data as @a at @s run playsound minecraft:ui.button.click player @s

#给武器
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0_short mm_data as @a run loot replace entity @s hotbar.0 loot shotcast:weapon/gun/rifle
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0_short mm_data as @a run loot replace entity @s hotbar.1 loot shotcast:weapon/gun/sniper
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0_short mm_data as @a run loot replace entity @s hotbar.2 loot shotcast:weapon/march/knife
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0_short mm_data as @a run loot replace entity @s hotbar.3 loot shotcast:weapon/thrower

#给弹药
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0_short mm_data as @a run loot replace entity @s hotbar.5 loot shotcast:ammo/bullet/rifle
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0_short mm_data as @a run item modify entity @s hotbar.5 shotcast:count/set_64

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0_short mm_data as @a run loot replace entity @s hotbar.6 loot shotcast:ammo/bullet/sniper
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0_short mm_data as @a run item modify entity @s hotbar.6 shotcast:count/set_64

execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0_short mm_data as @a run loot replace entity @s hotbar.7 loot shotcast:ammo/grenade/searchlight
execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0_short mm_data as @a run loot replace entity @s hotbar.8 loot shotcast:ammo/grenade/smoke


#execute if score game_tick mm_main matches 20 if score game_second mm_main = get_weapon_0_short mm_data as @a run scoreboard players set @s mm_arrow 64

execute if score game_tick mm_main matches 20 if score game_second mm_main matches 60 run tellraw @a [{"text":"游戏将在","color":"yellow"},{"text":"60","color":"red"},{"text":"秒后结束!","color":"yellow"}]
execute if score game_tick mm_main matches 20 if score game_second mm_main matches 60 as @a at @s run playsound minecraft:ui.button.click player @s


#断线重连
execute if score timer mm_main matches 0 run function mm:game/game_module/disconnect_spectator


#道具掉落及效果
execute if score mm_prop_spawn mm_main matches 1 run function mm:game/game_module/prop/prop_spawn


#丢刀
function mm:game/game_module/showdown/throw_knife


#金锭生成/丢弓/丢胸甲
function mm:game/game_module/showdown/gold_ingot_spawn


#视觉效果
execute if score timer_short mm_main matches 0 run function mm:game/game_module/sight_effect


#死亡
function mm:game/game_module/showdown/die


#游戏模式
function mm:game/game_module/gamemode


#底部
function mm:game/game_module/showdown/actionbar_display


#胜负判定
execute if score outlaw_left mm_data matches 0 run function mm:game/showdown/end
execute if score sheriff_left mm_data matches 0 run function mm:game/showdown/end
execute if score outlaw_kill_count mm_data >= showdown_end mm_settings run function mm:game/showdown/end
execute if score sheriff_kill_count mm_data >= showdown_end mm_settings run function mm:game/showdown/end
execute if score game_second mm_main matches 0 run function mm:game/showdown/end