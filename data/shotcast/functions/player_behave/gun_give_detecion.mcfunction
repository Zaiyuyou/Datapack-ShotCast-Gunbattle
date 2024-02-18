clear @a crossbow{Tags:["zyy.shotcast.gun"]} 

#give @s crossbow{Tags:["zyy.shotcast.gun"]}

#give @p minecraft:tipped_arrow{Tags:["zyy.shotcast.ammu","zyy.shotcast.ammu.rifle"],Potion:"minecraft:water",display:{Name:"[{\"text\":\"[步枪子弹/Rifle Bullt]\\n\",\"color\":\"aqua\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"一般的出膛速度和射程\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"放在主手以使用\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"Selected in main-hand for use\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]}}
#give @p minecraft:tipped_arrow{Tags:["zyy.shotcast.ammu","zyy.shotcast.ammu.sniper"],Potion:"minecraft:water",display:{Name:"[{\"text\":\"[狙击子弹/Sniper Bullt]\\n\",\"color\":\"aqua\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"很高的出膛速度和射程\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"放在主手以使用\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"Selected in main-hand for use\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]}}
#give @p minecraft:tipped_arrow{Tags:["zyy.shotcast.ammu","zyy.shotcast.ammu.glowing"],Potion:"minecraft:glowing",display:{Name:"[{\"text\":\"[照明弹/Searchlight Grenade]\\n\",\"color\":\"aqua\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"落地后照亮周围的敌人\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"放在主手以使用\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"Selected in main-hand for use\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]}}

#步枪
item replace entity @a[nbt={SelectedItem:{id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammu.rifle"]}}}] weapon.offhand with minecraft:crossbow{Tags:["zyy.shotcast.gun"],Charged:1b,ChargedProjectiles:[{Count:1b,id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:water"}}],Damage:0}
#狙击枪
item replace entity @a[nbt={SelectedItem:{id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammu.sniper"]}}}] weapon.offhand with minecraft:crossbow{Tags:["zyy.shotcast.gun"],Charged:1b,ChargedProjectiles:[{Count:1b,id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:thick"}}],Damage:0}
#探照弹发射器
item replace entity @a[nbt={SelectedItem:{id:"minecraft:tipped_arrow",tag:{Tags:["zyy.shotcast.ammu.glowing"]}}}] weapon.offhand with minecraft:crossbow{Tags:["zyy.shotcast.gun"],Charged:1b,ChargedProjectiles:[{Count:1b,id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:night_vision"}}],Damage:0}




