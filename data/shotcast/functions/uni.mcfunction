

#
gamerule fallDamage false
gamerule doImmediateRespawn true

scoreboard objectives remove zyy.shotcast.uid 


scoreboard objectives remove zyy.shotcast.teamid 


scoreboard objectives remove zyy.shotcast.lifetime 


scoreboard objectives remove zyy.shotcast.opr_1 


#射击
scoreboard objectives remove zyy.shotcast.weapon.gun.used 
scoreboard objectives remove zyy.shotcast.last.gun.used 




scoreboard objectives remove zyy.shotcast.weapon.cooldown.shoot 


scoreboard objectives remove zyy.shotcast.weapon.cooldown.load 


scoreboard objectives remove zyy.shotcast.weapon.selected_weapon_id 



scoreboard objectives remove zyy.shotcast.constant 


scoreboard objectives remove zyy.shotcast.motion_x 


scoreboard objectives remove zyy.shotcast.motion_y 


scoreboard objectives remove zyy.shotcast.motion_z 


tellraw @a [{"text":"[枪械附属] v0.0.1 ","color":"aqua"},{"text":"by 在与有","color":"purple"},{"text":"已卸载，统计数据将保留","color":"yellow"}]

function shotcast:disable_pack