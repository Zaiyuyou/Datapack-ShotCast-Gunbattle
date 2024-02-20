#箭剑抵消
execute as @e[type=arrow] at @s positioned ^ ^ ^1 if entity @e[tag=mm_thrown_knife,distance=..1.8] run tag @s add mm_thrown_knife_offset
execute as @e[tag=mm_thrown_knife_offset] at @s run playsound minecraft:entity.item.break block @a ~ ~ ~ 1.25
execute as @e[tag=mm_thrown_knife_offset] at @s positioned ^ ^ ^1 run kill @e[tag=mm_thrown_knife,limit=1,sort=nearest]
execute as @e[tag=mm_thrown_knife_offset] at @s run particle dust 1.0 1.0 1.0 1.0 ~ ~1.3 ~ 0.15 0.15 0.15 0 10 normal @a
execute as @e[tag=mm_thrown_knife_offset] run kill @s

#箭
#execute as @e[type=arrow,nbt={inGround:1b}] run kill @s


#飞刀飞行
function mm:game/game_module/thrown_knife
function mm:game/game_module/thrown_knife
function mm:game/game_module/thrown_knife
function mm:game/game_module/thrown_knife


#危险之地
execute as @a[tag=!mm_dead,tag=!mm_will_respawn] at @s if block ~ ~0.3 ~ #mm:deadly_block run scoreboard players set @s mm_death_type 101


#溺水
execute as @a[tag=!mm_dead,tag=!mm_will_respawn,nbt={Air:0s}] at @s if block ~ ~1 ~ #mm:drown_block run effect give @s minecraft:wither 1 1 true
execute as @a[tag=!mm_dead,tag=!mm_will_respawn,nbt={Air:0s},scores={zyy_health=..1}] at @s if block ~ ~1 ~ #mm:drown_block run scoreboard players set @s mm_death_type 102


#掉入岩浆
execute as @a[tag=!mm_dead,tag=!mm_will_respawn] at @s if block ~ ~0.3 ~ #mm:lava_block run scoreboard players set @s mm_death_type 103


#低血量
execute as @a[tag=!mm_dead,tag=!mm_will_respawn,scores={zyy_health=..1}] at @s run scoreboard players set @s mm_death_type 104

#圣水
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:slow_falling"}] at @s run effect give @a[tag=mm_murderer,distance=..8] minecraft:blindness
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:slow_falling"}] at @s run effect give @a[tag=mm_murderer,distance=..8] minecraft:slowness 20 2
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:slow_falling"}] at @s run effect give @a[tag=mm_murderer,distance=..8] minecraft:mining_fatigue
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:slow_falling"}] at @s run kill @a[tag=mm_infected,distance=..8] 
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:weakness"}] at @s run effect give @a[tag=mm_survivor,distance=..8] minecraft:blindness 10 1


#以太液体
execute as @e[nbt={Item:{tag:{PropLightPotion:1}}},limit=1] at @s run execute unless score game_mode mm_main matches 6 run effect give @a[tag=!mm_dead,tag=!mm_will_respawn,tag=!mm_spectator,gamemode=!spectator,distance=2..] minecraft:glowing 30 0 true
execute as @e[nbt={Item:{tag:{PropLightPotion:1}}},limit=1] at @s run execute unless score game_mode mm_main matches 6 run tellraw @a {"text":"有人使用了以太液体,除使用者之外的玩家高亮30s","color":"red"}
execute as @e[nbt={Item:{tag:{PropLightPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 6 run effect give @e[tag=mm_ghost] minecraft:glowing 20 0 true
execute as @e[nbt={Item:{tag:{PropLightPotion:1}}},limit=1] at @s run execute if score game_mode mm_main matches 6 run tellraw @a {"text":"有幸存者使用了以太液体,所有恶灵高亮20s","color":"red"}
execute as @e[nbt={Item:{tag:{PropLightPotion:1}}}] at @s run kill @s


#击晕
execute as @a[tag=mm_be_stunned] run tellraw @s {"text":"你被击晕了5秒! 你只能攻击侦探和平民!","color":"red"}
execute as @a[tag=mm_be_stunned] at @s run playsound minecraft:block.anvil.place player @s
execute as @a[tag=mm_be_stunned] run scoreboard players set @s mm_stun_tick 100
execute as @a[tag=mm_be_stunned] run clear @s #mm:knife
execute as @a[tag=mm_be_stunned] run tag @s remove mm_be_stunned

execute as @a[scores={mm_stun_tick=0}] run effect clear @s slowness
execute as @a[scores={mm_stun_tick=0}] run loot replace entity @s hotbar.1 loot mm:knife

execute as @a[scores={mm_stun_tick=0..}] run scoreboard players remove @s mm_stun_tick 1
execute as @a[scores={mm_stun_tick=0..}] run effect give @s slowness 1 4 true


#复活
##剩余复活次数不少于1
execute as @a[scores={mm_death_type=1..,mm_life=1..}] run tag @s add mm_revive

execute as @a[tag=mm_revive] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"但因神力而复活!","color":"green"}]
execute as @a[tag=mm_revive] as @a[scores={mm_death_type=..-1}] run tellraw @s {"text":"你刚刚杀死的那个玩家因神力而复活!","color":"red"}
execute as @a[tag=mm_revive] as @a[scores={mm_death_type=..-1}] run scoreboard players set @s mm_death_type 0
execute as @a[tag=mm_revive] at @e[tag=mm_spawn,limit=1,sort=random,tag=mm_actived] run tp ~ ~2 ~
execute as @a[tag=mm_revive] run scoreboard players remove @s mm_life 1

execute as @a[tag=mm_revive] run scoreboard players set @s mm_death_type 0
execute as @a[tag=mm_revive] run tag @s remove mm_revive
##持有免死金牌
execute as @a[scores={mm_death_type=1..},nbt={Inventory:[{tag:{PropGoldMedal:1}}]}] run tag @s add mm_revive

execute as @a[tag=mm_revive] run tellraw @s [{"text":"你死了! ","color":"red"},{"text":"但因持有免死金牌而复活!","color":"green"}]
execute as @a[tag=mm_revive] as @a[scores={mm_death_type=..-1}] run tellraw @s {"text":"你刚刚杀死的那个玩家因持有免死金牌而复活!","color":"red"}
execute as @a[tag=mm_revive] as @a[scores={mm_death_type=..-1}] run scoreboard players set @s mm_death_type 0
execute as @a[tag=mm_revive] at @e[tag=mm_spawn,limit=1,sort=random,tag=mm_actived] run tp ~ ~2 ~
execute as @a[tag=mm_revive] run clear @s totem_of_undying{PropGoldMedal:1} 1

execute as @a[tag=mm_revive] run scoreboard players set @s mm_death_type 0
execute as @a[tag=mm_revive] run tag @s remove mm_revive

execute as @a[scores={mm_death_type=1..}] run tag @s add mm_victim
execute as @a[tag=mm_victim] run scoreboard players set @s mm_cd_second -1
execute as @a[tag=mm_victim] run scoreboard players set @s mm_cd_tick 0
execute as @a[tag=mm_victim] run scoreboard players set @s mm_throw_second -1
execute as @a[tag=mm_victim] run scoreboard players set @s mm_throw_tick 0

##数据运算
execute as @a[tag=mm_victim] run function mm:scoreboards/calculate_data


#死亡原因显示
execute if score death_cause_display mm_settings matches 1 as @a[tag=mm_victim,scores={mm_death_type=1..}] run function mm:game/game_module/death_cause_display


#击杀显示
execute as @a[scores={mm_death_type=..-1}] run function mm:game/game_module/kill_display


#遗言计时并消失
execute as @e[tag=mm_lastwords] run scoreboard players remove @s mm_cd_tick 1
execute as @e[tag=mm_lastwords] if score @s mm_cd_tick matches 0 run scoreboard players remove @s mm_cd_second 1
execute as @e[tag=mm_lastwords] if score @s mm_cd_tick matches 0 run scoreboard players set @s mm_cd_tick 20

execute as @e[tag=mm_lastwords,scores={mm_cd_second=0}] run kill @s


#遗体计时并消失
execute as @e[tag=mm_dead_body] run scoreboard players remove @s mm_cd_tick 1
execute as @e[tag=mm_dead_body] if score @s mm_cd_tick matches 0 run scoreboard players remove @s mm_cd_second 1
execute as @e[tag=mm_dead_body] if score @s mm_cd_tick matches 0 run scoreboard players set @s mm_cd_tick 20

execute as @e[tag=mm_dead_body,scores={mm_cd_second=0}] at @s run setblock ~ 0 ~ air
execute as @e[tag=mm_dead_body,scores={mm_cd_second=0}] run tp ~ -128 ~
execute as @e[tag=mm_dead_body,scores={mm_cd_second=0}] run kill @s