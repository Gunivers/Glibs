# This function was automatically generated.

execute as @a[tag=glib.menu.debug.glib.time,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.time] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.glib.time] glib.menu.page 0
execute as @a[tag=glib.menu.debug.glib.time,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.glib.time,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.glib.time,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.glib.time,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.glib.time] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.glib.time] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.glib.time] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.glib.time] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.glib.time,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.time] remove glib.menu.debug
tag @a[tag=glib.menu.debug.glib.time.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.glib.time.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.time.close] remove glib.menu.debug.glib.time
tag @a[tag=glib.menu.debug.glib.time.close] remove glib.menu.debug.glib.time.close

tellraw @a[tag=glib.menu.debug.glib.time] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.glib.time,scores={glib.menu.page = 0},tag=!glib.debug.glib.time.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.time.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "???", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.time.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.glib.time,scores={glib.menu.page = 0},tag=glib.debug.glib.time.get] ["", {"text": "   get: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.time.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "???", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.time.get"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.glib.time,scores={glib.menu.page = 0},tag=!glib.debug.glib.time.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.time.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "???", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.time.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.glib.time,scores={glib.menu.page = 0},tag=glib.debug.glib.time.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.time.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "???", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.time.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]

tellraw @a[tag=glib.menu.debug.glib.time] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.time.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / glib.time", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.time.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]