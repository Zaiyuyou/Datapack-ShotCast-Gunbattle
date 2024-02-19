#照明箭照亮周围的人
function shotcast:selector/same_uid_selector
execute at @s run effect give @a[distance=..7,tag=!zyy.shotcast.selector.uid.same,gamemode=!spectator] glowing 10 0 true
#粒子效果
execute at @s run particle minecraft:soul_fire_flame ~ ~0.2 ~ 0 0 0 0.25 10 normal

#音效
execute at @s run playsound block.amethyst_block.break player @a ~ ~ ~