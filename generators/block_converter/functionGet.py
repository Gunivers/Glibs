#----------------------------#
# Generation of get function #
#----------------------------#

import math
import os
import predicateFormat

def generate(blockList, functions_path, tags_path, function, verbose=False):

    N = len(blockList)
    n = math.ceil(math.log(N/2,2))
    group = []

    print("Generating " + function + "...")

    if function == "block_to_id":
        folder = "block/"
        mcfunctionName = "get"
        scoreboard = "glib.blockId"
    
    elif function == "item_to_id":
        folder = "item/"
        mcfunctionName = "get"
        scoreboard = "glib.itemId"


    # Create folders
    if not os.path.exists(tags_path + mcfunctionName):
        os.makedirs(tags_path + mcfunctionName)        

    functionGet = open(functions_path + mcfunctionName + ".mcfunction", "w+")

    functionGet.write("scoreboard objectives add " + scoreboard + " dummy\n")
    functionGet.write("scoreboard players set @s " + scoreboard + " 0\n")

    # Making groups
    for i in range(n+1):


        # Creating get function that check all groups and give a score (using dichotomie) if the block is not in the group
        functionGet.write("execute unless predicate glib:" + folder + mcfunctionName + "/group_" + str(i) + " run scoreboard players add @s " + scoreboard + " " + str(2**i) + "\n")

        # Creating group's predicate files
        group.append(open(tags_path + mcfunctionName + "/group_" + str(i) + ".json", "w+"))
        group[i].write("[")
        group[i].write("{")
        group[i].write("\"condition\":\"minecraft:alternative\",")
        group[i].write("\"terms\":[")

        newBlockList = []
        for block in blockList:
            # Composing group "i" with blocks that match: ID / (2^i) % 2 = 0
            if math.floor(int(block.id)/(2**(i)))%2 == 0:
                newBlockList.append(block)

        # For blocks that match condition below (condition to be in the group i)
        for block in newBlockList:

            # Generating Block predicates
            if function == "block_to_id":
                blockStates = ""
                # Concatenation of all blockstates in a json format
                for property in block.blockStates:
                    blockStates += "\"" + property.key + "\": \"" + property.value + "\""
                    if property is not block.blockStates[-1]:
                        blockStates += ","
                # Writing condition
                group[i].write(predicateFormat.getBlock().format(BlockName=block.name, BlockStates=blockStates))

            # Generating predicate for items in entity's mainhand slot
            if function == "item_to_id":
                group[i].write(predicateFormat.getItem().format(BlockName = block.name))

            # Adding comma beetween all conditions to respect json format
            if block is not newBlockList[-1]:
                group[i].write(",")

        # End of json file
        group[i].write("]")
        group[i].write("}")
        group[i].write("]")
        group[i].close()

    # Closing files
    functionGet.close()
