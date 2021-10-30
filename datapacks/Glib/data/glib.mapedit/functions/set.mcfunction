# NAME: set
# PATH: glib.mapedit:set

# AUTHOR: xam74er1

# VERSION: 0.1
# MINECRAFT: 1.14.X

# INPUT:
# - Location 1 :
#	- Pos_xd (score dummy)
#	- Pos_yd (score dummy)
# 	- Pos_zd (score dummy)

# - Location 2 :
#	- Pos_xf (score dummy)
#	- Pos_yf (score dummy)
# 	- Pos_zf (score dummy)

# - Block ID
#	glib.blockId (score dummy)
#
# OUTPUT:
# - Block place bettwen Location 1 and Location 2

# NOTE:
# To take the postion you can use : function glib.mapedit:pos1 and function glib.mapedit:pos1

#Ini


scoreboard objectives add BrushID dummy [{"text":"GLib ","color":"gold"},{"text":"Brush ID","color":"dark_gray"}]

#On initlise tout (factorisation )

function glib.mapedit:set/ini



execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] glib.blockId = @s glib.blockId

#1 corespon au setblock
execute as @s run scoreboard players set @e[tag=spawnSET,limit=1,sort=nearest] BrushID 1



execute as @e[tag=spawnSET] at @s store result entity @s Pos[0] double 1 run scoreboard players get @s Set_X
execute as @e[tag=spawnSET] at @s store result entity @s Pos[1] double 1 run scoreboard players get @s Set_Y
execute as @e[tag=spawnSET] at @s store result entity @s Pos[2] double 1 run scoreboard players get @s Set_Z

#On ajout 1 au nb de set en cour
scoreboard players add setCount Set_Option 1

#tag @e[tag=spawnSET] remove spawnSET

#On lance toute la procedure
function glib.mapedit:set/repeate
