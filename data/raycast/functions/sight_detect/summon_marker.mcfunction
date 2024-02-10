execute at @s run summon marker ~ ~ ~ {Tags:[raycast_sight_marker,raycast_sight_marker_new]} 
#初始化uid
scoreboard players add @e[tag=raycast_sight_marker_new] zyy.raycast.uid 0 
#同步uid
scoreboard players operation @e[limit=1,sort=nearest,tag=raycast_sight_marker_new,scores={zyy.raycast.uid=0}] zyy.raycast.uid = @s zyy.raycast.uid
#去除初始化标签
tag @e[tag=raycast_sight_marker_new,scores={zyy.raycast.uid=1..}] remove raycast_sight_marker_new