
gamerule fallDamage false
gamerule doImmediateRespawn true

scoreboard objectives add zyy.raycast.uid dummy "视击ID"

scoreboard objectives add zyy.raycast.opr_1 dummy "计算池1"


scoreboard objectives add zyy.raycast.gun.used minecraft.used:minecraft.crossbow "射击次数"
scoreboard objectives add zyy.raycast.last.gun.used dummy "上一次射击次数"

scoreboard objectives add zyy.raycast.death deathCount "死亡次数"
scoreboard objectives add zyy.raycast.last.death dummy "上一次死亡次数"

scoreboard objectives add zyy.raycast.kills minecraft.custom:minecraft.player_kills "击杀次数"
scoreboard objectives add zyy.raycast.multi_kills minecraft.custom:minecraft.player_kills "连杀次数"
scoreboard objectives add zyy.raycast.max_multi_kills minecraft.custom:minecraft.player_kills "最高连杀次数"


scoreboard objectives add zyy.raycast.constant dummy "数学常数"

scoreboard players set 2 zyy.raycast.constant 2
scoreboard players set 3 zyy.raycast.constant 3
scoreboard players set 4 zyy.raycast.constant 4
scoreboard players set 5 zyy.raycast.constant 5
scoreboard players set 6 zyy.raycast.constant 6
scoreboard players set 7 zyy.raycast.constant 7
scoreboard players set 8 zyy.raycast.constant 8
scoreboard players set 9 zyy.raycast.constant 9
scoreboard players set 10 zyy.raycast.constant 10
scoreboard players set 100 zyy.raycast.constant 100
scoreboard players set 1000 zyy.raycast.constant 1000
scoreboard players set 10000 zyy.raycast.constant 10000
scoreboard players set 100000 zyy.raycast.constant 100000
scoreboard players set 100000PI zyy.raycast.constant 314159


scoreboard objectives add zyy.raycast.motion_x dummy "X速度"
scoreboard objectives add zyy.raycast.motion_y dummy "y速度"
scoreboard objectives add zyy.raycast.motion_z dummy "z速度"

tellraw @a ["",{"text":"[","bold":true,"color":"blue"},{"text":"欢乐速射","bold":true,"color":"aqua"},{"text":"]:","bold":true,"color":"blue"},{"text":"已加载！","color":"green"}]