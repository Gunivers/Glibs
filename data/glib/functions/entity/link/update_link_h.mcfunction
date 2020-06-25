#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/link/update_link_h
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Parallelizable: <true/false/global>
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.link.r.v dummy
scoreboard objectives add glib.link.to dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.id.target = @s glib.link.to

function glib:entity/id/check

execute store result score @s glib.var0 run data get entity @s Rotation[0] 1000

execute store result score @s glib.link.r.v run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Rotation[0] 1000

scoreboard players operation @s glib.link.r.v -= @s glib.var0

scoreboard players operation @s glib.link.r.v *= -1 glib.const
