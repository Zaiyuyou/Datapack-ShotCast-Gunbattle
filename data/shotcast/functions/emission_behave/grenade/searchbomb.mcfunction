#照明箭照亮周围的人
function shotcast:selector/unsame_uid_selector
execute at @s run effect give @a[distance=..7,scores={zyy.shotcast.opr_1=0},gamemode=!spectator] glowing 10 0 true
