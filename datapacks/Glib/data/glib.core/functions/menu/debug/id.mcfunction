# This function was automatically generated.

execute as @a[tag=glib.menu.debug.id,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.id] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.id] glib.menu.page 0
execute as @a[tag=glib.menu.debug.id,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.id,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.id,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.id,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.id] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.id] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.id] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.id] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.id,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.id] remove glib.menu.debug
tag @a[tag=glib.menu.debug.id.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.id.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.id.close] remove glib.menu.debug.id
tag @a[tag=glib.menu.debug.id.close] remove glib.menu.debug.id.close

tellraw @a[tag=glib.menu.debug.id] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.id,scores={glib.menu.page = 0},tag=!glib.debug.id.check] ["", {"text": "   check: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.id.check"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.id.check"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.id,scores={glib.menu.page = 0},tag=glib.debug.id.check] ["", {"text": "   check: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.id.check"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.id.check"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.id,scores={glib.menu.page = 0},tag=!glib.debug.id.check_parent] ["", {"text": "   check_parent: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.id.check_parent"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.id.check_parent"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.id,scores={glib.menu.page = 0},tag=glib.debug.id.check_parent] ["", {"text": "   check_parent: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.id.check_parent"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.id.check_parent"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.id,scores={glib.menu.page = 0}] {"text": "   + cuid", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.id.cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=glib.menu.debug.id,scores={glib.menu.page = 0},tag=!glib.debug.id.get_cuid] ["", {"text": "   get_cuid: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.id.get_cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.id.get_cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.id,scores={glib.menu.page = 0},tag=glib.debug.id.get_cuid] ["", {"text": "   get_cuid: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.id.get_cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.id.get_cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.id,scores={glib.menu.page = 0},tag=!glib.debug.id.get_suid] ["", {"text": "   get_suid: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.id.get_suid"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.id.get_suid"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.id,scores={glib.menu.page = 0},tag=glib.debug.id.get_suid] ["", {"text": "   get_suid: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.id.get_suid"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.id.get_suid"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.id,scores={glib.menu.page = 0},tag=!glib.debug.id.update_cuid] ["", {"text": "   update_cuid: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.id.update_cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.id.update_cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.id,scores={glib.menu.page = 0},tag=glib.debug.id.update_cuid] ["", {"text": "   update_cuid: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.id.update_cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.id.update_cuid"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]

tellraw @a[tag=glib.menu.debug.id] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.id.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / id", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.id.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]