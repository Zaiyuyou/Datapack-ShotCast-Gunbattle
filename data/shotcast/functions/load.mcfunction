
gamerule fallDamage false
gamerule doImmediateRespawn true

scoreboard objectives add zyy.shotcast.uid dummy "射击实体ID"
scoreboard objectives add zyy.shotcast.teamid dummy "射击队伍ID"


scoreboard objectives add zyy.shotcast.lifetime dummy "生存时间"

scoreboard objectives add zyy.shotcast.opr_1 dummy "计算池1"


scoreboard objectives add zyy.shotcast.weapon.gun.used minecraft.used:minecraft.crossbow "射击次数"
scoreboard objectives add zyy.shotcast.last.gun.used dummy "上一次射击次数"

scoreboard objectives add zyy.shotcast.death deathCount "死亡次数"
scoreboard objectives add zyy.shotcast.last.death dummy "上一次死亡次数"

scoreboard objectives add zyy.shotcast.kills minecraft.custom:minecraft.player_kills "击杀次数"
scoreboard objectives add zyy.shotcast.multi_kills minecraft.custom:minecraft.player_kills "连杀次数"
scoreboard objectives add zyy.shotcast.max_multi_kills minecraft.custom:minecraft.player_kills "最高连杀次数"


scoreboard objectives add zyy.shotcast.constant dummy "数学常数"

scoreboard players set 2 zyy.shotcast.constant 2
scoreboard players set 3 zyy.shotcast.constant 3
scoreboard players set 4 zyy.shotcast.constant 4
scoreboard players set 5 zyy.shotcast.constant 5
scoreboard players set 6 zyy.shotcast.constant 6
scoreboard players set 7 zyy.shotcast.constant 7
scoreboard players set 8 zyy.shotcast.constant 8
scoreboard players set 9 zyy.shotcast.constant 9
scoreboard players set 10 zyy.shotcast.constant 10
scoreboard players set 100 zyy.shotcast.constant 100
scoreboard players set 1000 zyy.shotcast.constant 1000
scoreboard players set 10000 zyy.shotcast.constant 10000
scoreboard players set 100000 zyy.shotcast.constant 100000
scoreboard players set 100000PI zyy.shotcast.constant 314159


scoreboard objectives add zyy.shotcast.motion_x dummy "X速度"
scoreboard objectives add zyy.shotcast.motion_y dummy "y速度"
scoreboard objectives add zyy.shotcast.motion_z dummy "z速度"

tellraw @a ["",{"text":"[","bold":true,"color":"blue"},{"text":"欢乐速射","bold":true,"color":"aqua"},{"text":"]:","bold":true,"color":"blue"},{"text":"已加载！","color":"green"}]