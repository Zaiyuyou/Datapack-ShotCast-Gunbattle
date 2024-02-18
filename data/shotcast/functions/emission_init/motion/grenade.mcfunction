#投掷弹0.6倍动量
execute as @s store result score @s zyy.shotcast.motion_x run data get entity @s Motion[0] 6000000
execute as @s store result score @s zyy.shotcast.motion_y run data get entity @s Motion[1] 6000000
execute as @s store result score @s zyy.shotcast.motion_z run data get entity @s Motion[2] 6000000



function shotcast:emission_init/motion/tail