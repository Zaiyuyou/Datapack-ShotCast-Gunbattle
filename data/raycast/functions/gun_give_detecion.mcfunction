clear @a crossbow{Tags:["zyy.raycast.gun"]} 

#give @s crossbow{Tags:["zyy.raycast.gun"]}

#give @s minecraft:arrow{Tags:["zyy.raycast.bullet"],display:{Name:"[{\"text\":\"[普通子弹/Bullt]\\n\",\"color\":\"aqua\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"text\":\"放在主手以使用\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}","{\"text\":\"Selected in main-hand for use\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}"]}}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:arrow",tag:{Tags:["zyy.raycast.bullet"]}}}] weapon.offhand with minecraft:crossbow{Tags:["zyy.raycast.gun"],Charged:1b,ChargedProjectiles:[{Count:1b,id:"minecraft:arrow"}],Damage:0}
