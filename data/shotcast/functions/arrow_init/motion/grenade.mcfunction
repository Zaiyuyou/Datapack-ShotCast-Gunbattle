#投掷弹0.8倍动量
execute as @s store result score @s zyy.shotcast.motion_x run data get entity @s Motion[0] 8000000
execute as @s store result score @s zyy.shotcast.motion_y run data get entity @s Motion[1] 8000000
execute as @s store result score @s zyy.shotcast.motion_z run data get entity @s Motion[2] 8000000



function shotcast:arrow_init/motion/tail