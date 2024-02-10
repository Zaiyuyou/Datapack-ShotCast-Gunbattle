execute as @s store result score @s zyy.raycast.motion_x run data get entity @s Motion[0] 30000000
execute as @s store result score @s zyy.raycast.motion_y run data get entity @s Motion[1] 30000000
execute as @s store result score @s zyy.raycast.motion_z run data get entity @s Motion[2] 30000000


execute as @s store result storage zyy.raycast.storage.motion Motion_x double 0.0000001 run scoreboard players get @s zyy.raycast.motion_x
execute as @s store result storage zyy.raycast.storage.motion Motion_y double 0.0000001 run scoreboard players get @s zyy.raycast.motion_y
execute as @s store result storage zyy.raycast.storage.motion Motion_z double 0.0000001 run scoreboard players get @s zyy.raycast.motion_z

data modify entity @s Motion[0] set from storage zyy.raycast.storage.motion Motion_x
data modify entity @s Motion[1] set from storage zyy.raycast.storage.motion Motion_y
data modify entity @s Motion[2] set from storage zyy.raycast.storage.motion Motion_z


tag @s add zyy.raycast.modified_motion
