#步枪子弹1.5倍动量
execute as @s store result score @s zyy.shotcast.motion_x run data get entity @s Motion[0] 15000000
execute as @s store result score @s zyy.shotcast.motion_y run data get entity @s Motion[1] 15000000
execute as @s store result score @s zyy.shotcast.motion_z run data get entity @s Motion[2] 15000000



function shotcast:emission_init/motion/tail