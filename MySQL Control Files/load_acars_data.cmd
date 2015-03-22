# C:\Users\nick\Google Drive\SchoolWork\UCF\CEN 4350 OpenWebTechnology\Project 4 - Reformatting_loadingIntoMYSQL\code
LOAD DATA INFILE '\\Users\\nick\\Google Drive\\SchoolWork\\UCF\\CEN 4350 OpenWebTechnology\\Project 4 - Reformatting_loadingIntoMYSQL\\code\\ACARS.txt'
INTO TABLE acars 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
(DATE_TIME, FLIGHT, N_NUMBER, BLK_ID, MSG_LABEL, TEXT_LABEL, MSG_TEXT)
SET ID = NULL