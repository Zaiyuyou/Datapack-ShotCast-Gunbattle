scoreboard players reset test_minigame_master mm_package_versions
scoreboard players reset mm_shootcast_load mm_main
scoreboard players operation test_minigame_master mm_package_versions = minigame_master mm_package_versions
execute if score test_minigame_master mm_package_versions >= 29 zyy.shotcast.constant run tellraw @a [{"text":"[枪械附属] ","color":"aqua"},{"text":"已检测到游戏大师接口，正在覆盖","color":"yellow"}]
execute if score test_minigame_master mm_package_versions >= 29 zyy.shotcast.constant run scoreboard players set mm_shootcast_load mm_main 1