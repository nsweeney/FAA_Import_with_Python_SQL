import sys
import re

# File that needs to be cleaned up
#dirtyFile = open("test.txt")
dirtyFile = open("acars_2014_raw.ssv")
# New file that will contain resulting cleaned up data extracted from the dirtyFile
cleanFile = open("ACARS.txt", "w")
count = 0
delimiter = ","

# Loop through each line in dirty file and put the clean contents in cleanFile
for line in dirtyFile:
    count = count + 1
     # We dont want to use the first line in the cleanFile
    if count == 1:
        continue

    # Split dirtyFile lines on ';'
    line = line.strip()
    column = line.split(";")

    # Create DATE_TIME column for planes.acars table YYYY-MM-DD HH:MM:SS
    tempDate = column[0]
    tempTime = column[1]
    newTimeStamp = tempDate[6:10] + "-" + tempDate[3:5] + "-" + tempDate[0:2] + " " + tempTime[1:3] + ":" \
                   + tempTime[4:6] + ":00"

    cleanLine = '"' + newTimeStamp + '"' + delimiter

    # Create FLIGHT column for planes.acars table
    # Strip leading whitespace
    flight = column[2].lstrip()
    cleanLine += '"' + flight + '"' + delimiter

    # Create N_NUMBER column for planes.acars table
    n_number = column[3]

    if n_number == " ":
        n_number == ""
    else:
        # Strip leading whitespace
        n_number = column[3].lstrip()
        # Strips off the first leading '.'
        n_number = n_number[1:]
        # null n_numbers appear to be replaced with seven underscores (“_”).
        # You may want to convert these to empty strings to facilitate treating them as NULLs within MySQL.
        #print(count)
        #print(n_number)
        if n_number is None:
            n_number = ""
        elif n_number == "______":
            n_number = ""
        # This is here in case we later decide we dont want to bring in info for planes with n_numbers
        # not found in our FAA data tables as mentioned in the Module Overview
        elif n_number[0] == ".":
            n_number = n_number[1:]
        else:
            n_number = n_number[1:]
    cleanLine += '"' + n_number + '"' + delimiter

    # Create BLK_ID column for planes.acars table
    blk_id = column[4].lstrip()
    blk_id = blk_id.replace("\\", "-")
    #if blk_id == "\\":
    #    blk_id = "-"
    cleanLine += '"' + blk_id + '"' + delimiter

    # Create MSG_LABEL column for planes.acars table
    msg_label = column[5].lstrip()
    msg_label = msg_label.replace('"', "'")
    msg_label = msg_label.replace("\\", "-")
    cleanLine += '"' + msg_label + '"' + delimiter

    # Create TEXT_LABEL column for planes.acars table
    # Remove just white spave and leave in ""
    # text_label = column[6].lstrip()
    # Remove white space at front and remove " at beginning and end
    text_label = column[6].lstrip().strip('"')
    text_label = text_label.replace('"', "'")
    text_label = text_label.replace('\\', "-")
    cleanLine += '"' + text_label + '"' + delimiter

    # Create MSG_TEXT column for planes.acars table
    # Remove just white spave and leave in ""
    # msg_text = column[7].lstrip()
    # Remove white space at front and remove " at beginning and end
    msg_text = column[7].lstrip().strip('"')
    msg_text = msg_text.replace('"', "'")
    msg_text = msg_text.replace('\\', "-")
    # Dont need delimter at end of line
    cleanLine += '"' + msg_text + '"'

    # Write clean line to the clean file
    cleanFile.write(cleanLine + "\n")

# Close because were done writing to it
cleanFile.close()

# Open cleanFile for reading
cleanFile = open("ACARS.txt")

# Print contents of clean file, line by line
for line in cleanFile:
    print(line.strip())

cleanFile.close()