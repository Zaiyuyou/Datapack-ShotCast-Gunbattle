

#
gamerule fallDamage false
gamerule doImmediateRespawn true

scoreboard objectives add zyy.shotcast.uid dummy "射击实体ID"
scoreboard objectives add zyy.shotcast.teamid dummy "射击队伍ID"


scoreboard objectives add zyy.shotcast.lifetime dummy "生存时间"

scoreboard objectives add zyy.shotcast.opr_1 dummy "计算池1"

##检查依赖

scoreboard players set test_minigame_master mm_package_versions -1
scoreboard players set mm_shootcast_load zyy.shotcast.uid -1
scoreboard players reset mm_shootcast_load zyy.shotcast.uid 
scoreboard players operation test_minigame_master mm_package_versions = minigame_master mm_package_versions

execute if score test_minigame_master mm_package_versions >= 29 zyy.shotcast.constant run tellraw @a [{"text":"[枪械附属] v0.0.1 ","color":"aqua"},{"text":"已检测到游戏大师前置。","color":"green"}]
execute if score test_minigame_master mm_package_versions >= 29 zyy.shotcast.constant run scoreboard players set mm_shootcast_load zyy.shotcast.uid 1


#射击
scoreboard objectives add zyy.shotcast.weapon.gun.used minecraft.used:minecraft.crossbow "射击次数"
scoreboard objectives add zyy.shotcast.last.gun.used dummy "上一次射击次数"


scoreboard objectives add zyy.shotcast.weapon.cooldown.shoot dummy "枪射击冷却"
scoreboard objectives add zyy.shotcast.weapon.cooldown.load dummy "枪射击冷却"
scoreboard objectives add zyy.shotcast.weapon.selected_weapon_id dummy "主手持有的武器的ID"

#武器类型对应计分值
scoreboard players set gun.rifel zyy.shotcast.weapon.selected_weapon_id 1
scoreboard players set gun.sniper zyy.shotcast.weapon.selected_weapon_id 2
scoreboard players set thrower zyy.shotcast.weapon.selected_weapon_id -1
scoreboard players set march.knife zyy.shotcast.weapon.selected_weapon_id -2

#武器射击冷却时间对应计分值(玩家的所有枪械延迟都使用这个计分板)
scoreboard players set gun.rifel zyy.shotcast.weapon.cooldown.shoot 4
scoreboard players set gun.sniper zyy.shotcast.weapon.cooldown.shoot 30
scoreboard players set thrower zyy.shotcast.weapon.cooldown.shoot 24

#武器换弹冷却时间对应计分值(这个计分板不应该有玩家数据)
scoreboard players set gun.rifel zyy.shotcast.weapon.cooldown.shoot 4
scoreboard players set gun.sniper zyy.shotcast.weapon.cooldown.shoot 30
scoreboard players set thrower zyy.shotcast.weapon.cooldown.shoot 24


#总击杀次数
scoreboard objectives add zyy.shotcast.kills minecraft.custom:minecraft.player_kills "总击杀次数"

#总死亡次数
scoreboard objectives add zyy.shotcast.death deathCount "总死亡次数"

#连杀次数
scoreboard objectives add zyy.shotcast.multi_kills dummy "连杀次数"
scoreboard objectives add zyy.shotcast.max_multi_kills dummy "最高连杀次数"

#总造成伤害
scoreboard objectives add zyy.shotcast.damage minecraft.custom:minecraft.damage_dealt "总造成伤害"

#总收到伤害
scoreboard objectives add zyy.shotcast.damaged minecraft.custom:minecraft.damage_taken "总收到伤害"

#游戏场次
scoreboard objectives add zyy.shotcast.game_count dummy "游戏场次"

#游戏内统计信息
#游戏开始前重置这些计分板
#游戏内死亡次数
scoreboard objectives add zyy.shotcast.ingame.death_count deathCount "游戏内死亡次数"
#游戏内造成伤害
scoreboard objectives add zyy.shotcast.ingame.damage_dealt minecraft.custom:minecraft.damage_dealt "游戏内造成伤害"
#游戏内收到伤害
scoreboard objectives add zyy.shotcast.ingame.damage_taken minecraft.custom:minecraft.damage_taken "游戏内收到伤害"



scoreboard objectives add zyy.shotcast.constant dummy "数学常数"

scoreboard players set 1 zyy.shotcast.constant 1
scoreboard players set 2 zyy.shotcast.constant 2
scoreboard players set 3 zyy.shotcast.constant 3
scoreboard players set 4 zyy.shotcast.constant 4
scoreboard players set 5 zyy.shotcast.constant 5
scoreboard players set 6 zyy.shotcast.constant 6
scoreboard players set 7 zyy.shotcast.constant 7
scoreboard players set 8 zyy.shotcast.constant 8
scoreboard players set 9 zyy.shotcast.constant 9
scoreboard players set 29 zyy.shotcast.constant 29
scoreboard players set 10 zyy.shotcast.constant 10
scoreboard players set 100 zyy.shotcast.constant 100
scoreboard players set 1000 zyy.shotcast.constant 1000
scoreboard players set 10000 zyy.shotcast.constant 10000
scoreboard players set 100000 zyy.shotcast.constant 100000
scoreboard players set 100000PI zyy.shotcast.constant 314159


scoreboard objectives add zyy.shotcast.motion_x dummy "X速度"
scoreboard objectives add zyy.shotcast.motion_y dummy "y速度"
scoreboard objectives add zyy.shotcast.motion_z dummy "z速度"

execute if score mm_shootcast_load zyy.shotcast.uid matches 1 run tellraw @a [{"text":"[枪械附属] v0.0.1 ","color":"aqua"},{"text":"by 在与有","color":"purple"},{"text":"加载成功!欢迎使用！","color":"green"},{"text":"[点击我卸载本包] ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s run function shotcast:uni"}}]
execute unless score mm_shootcast_load zyy.shotcast.uid matches 1 run tellraw @a [{"text":"[枪械附属] v0.0.1 ","color":"aqua"},{"text":"by 在与有","color":"purple"},{"text":"加载异常！请检查前置数据包","color":"red"},{"text":"[游戏大师]","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Zaiyuyou/Datapack-Minigame-Master"},"hoverEvent":{"action":"show_text","contents":"点击访问前置项目的开源地址"}},{"text":"是否正常加载。如果已加载前置","color":"red"},{"text":"[点击我禁用本包] ","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s run function shotcast:disable_pack"}}]
scoreboard players reset mm_shootcast_load zyy.shotcast.uid 

