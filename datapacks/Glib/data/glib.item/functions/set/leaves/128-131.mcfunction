execute if score @s glib.itemId matches 128 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:brown_concrete_powder","Count":1b}}
execute if score @s glib.itemId matches 129 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:brown_dye","Count":1b}}
execute if score @s glib.itemId matches 130 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:brown_glazed_terracotta","Count":1b}}
execute if score @s glib.itemId matches 131 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:brown_mushroom","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
