# On Ubuntu, may need apparmour fix from: http://ubuntuforums.org/showthread.php?t=822084
LOAD DATA INFILE "\\Users\\nick\\Google Drive\\SchoolWork\\UCF\\CEN 4350 OpenWebTechnology\\MySQL\\unZippedCSVs\\MASTER.txt"
INTO TABLE master 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS

