#恢复精度
execute as @s store result storage zyy.shotcast.storage.motion Motion_x double 0.0000001 run scoreboard players get @s zyy.shotcast.motion_x
execute as @s store result storage zyy.shotcast.storage.motion Motion_y double 0.0000001 run scoreboard players get @s zyy.shotcast.motion_y
execute as @s store result storage zyy.shotcast.storage.motion Motion_z double 0.0000001 run scoreboard players get @s zyy.shotcast.motion_z
#写入动量
data modify entity @s Motion[0] set from storage zyy.shotcast.storage.motion Motion_x
data modify entity @s Motion[1] set from storage zyy.shotcast.storage.motion Motion_y
data modify entity @s Motion[2] set from storage zyy.shotcast.storage.motion Motion_z

tag @s add zyy.shotcast.modified_motion