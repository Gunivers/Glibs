execute if score @s glib.itemId matches 1088 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:waxed_exposed_cut_copper","Count":1b}}
execute if score @s glib.itemId matches 1089 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:waxed_exposed_cut_copper_slab","Count":1b}}
execute if score @s glib.itemId matches 1090 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:waxed_exposed_cut_copper_stairs","Count":1b}}
execute if score @s glib.itemId matches 1091 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:waxed_oxidized_copper","Count":1b}}
execute if score @s glib.itemId matches 1092 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:waxed_oxidized_cut_copper","Count":1b}}
execute if score @s glib.itemId matches 1093 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:waxed_oxidized_cut_copper_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
