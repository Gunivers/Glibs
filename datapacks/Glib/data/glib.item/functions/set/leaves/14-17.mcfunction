execute if score @s glib.itemId matches 14 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:acacia_trapdoor","Count":1b}}
execute if score @s glib.itemId matches 15 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:acacia_wood","Count":1b}}
execute if score @s glib.itemId matches 16 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:activator_rail","Count":1b}}
execute if score @s glib.itemId matches 17 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:air","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
