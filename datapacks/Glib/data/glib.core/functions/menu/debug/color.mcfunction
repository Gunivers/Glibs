# This function was automatically generated.

execute as @a[tag=glib.menu.debug.color,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.color] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.color] glib.menu.page 0
execute as @a[tag=glib.menu.debug.color,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.color,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.color,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.color,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.color] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.color] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.color] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.color] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.color,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.color] remove glib.menu.debug
tag @a[tag=glib.menu.debug.color.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.color.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.color.close] remove glib.menu.debug.color
tag @a[tag=glib.menu.debug.color.close] remove glib.menu.debug.color.close

tellraw @a[tag=glib.menu.debug.color] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.color,scores={glib.menu.page = 0},tag=!glib.debug.color.minecraft_color_to_rgb] ["", {"text": "   minecraft_color_to_rgb: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.color.minecraft_color_to_rgb"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "???", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.color.minecraft_color_to_rgb"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.color,scores={glib.menu.page = 0},tag=glib.debug.color.minecraft_color_to_rgb] ["", {"text": "   minecraft_color_to_rgb: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.color.minecraft_color_to_rgb"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "???", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.color.minecraft_color_to_rgb"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=glib.menu.debug.color,scores={glib.menu.page = 0},tag=!glib.debug.color.rgb_to_minecraft_color] ["", {"text": "   rgb_to_minecraft_color: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.color.rgb_to_minecraft_color"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "???", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.color.rgb_to_minecraft_color"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=glib.menu.debug.color,scores={glib.menu.page = 0},tag=glib.debug.color.rgb_to_minecraft_color] ["", {"text": "   rgb_to_minecraft_color: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.color.rgb_to_minecraft_color"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "???", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.color.rgb_to_minecraft_color"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=glib.menu.debug.color] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.color.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / color", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.color.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]