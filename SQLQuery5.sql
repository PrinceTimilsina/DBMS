---QNS:1.(NEPAL PREMIER LEAGUE)
--Consider the NPL database of the following structure, where the primary keys are underlined.
---Teams Table: (team_id, team_name, city, manager)
---Players Table: (player_id, player_name, age, role, matches_played, runs_scored, wickets_taken, team_id)
----Matches Table: (match_id, date, venue, team1, team2, team1_score, team2_score)
---Questions:
---a. Insert a new player into the players table with the following details:
---Player Name: "Rohit Poudel"
---Age: 23   
---Role: "Bowler"
---Matches Played: 50
---Runs Scored: 150
---Wickets Taken: 75
---Team ID: 101 
---b. Retrieve the names and roles of all players who are bowlers.
---c. Update the city of the team "Kathmandu Kings" to "Pokhara."
---d. Delete all matches from the matches table where both teams scored less than 100.

create database NPL;
use NPL; 
-----------Here's the Solution:---------
   --------Creating teams table------------
create table teams
(
   team_id INT PRIMARY KEY,
   team_name VARCHAR(50),
   city VARCHAR(50),
   manager_name VARCHAR(50)
);
        ---Creating players table---------here,
create table players(
  player_id INT PRIMARY KEY,
  player_name VARCHAR(50),
  age INT,
  role VARCHAR(50),
  matchedplayed INT,
  runs_scored INT,
  wickets_taken INT,
  team_id INT  --foreign key--
);
               ---Creating match table ------here,
create table matches(
  match_id INT PRIMARY KEY,
  date INT,
  venue VARCHAR(50),
  team1 VARCHAR(50),
  team2 VARCHAR(50),
  team1_score INT,
  team2_score INT,
);
     
	 ---'A' ANS: ---- --Inserting values into Players table------here,
INSERT INTO players VALUES( 1,'Rohit Poudel',23,'Bowler',50,150,75,101);
INSERT INTO players VALUES(2,'Prince Timilsina',17,'WK-Batsman',19,997,0,101);
INSERT INTO players VALUES( 3,'Gulshan Jha',23,'Allrounder',39,1550,95,101);
INSERT INTO players VALUES( 4,'Sompal Kami',34,'Bowler',40,570,97,101);
INSERT INTO players VALUES( 5,'Nandan Yadav',23,'Bowler',5,78,7,101);

---"B" ANS:

SELECT *from players     ---only retrieve the name and roles of players who are bowler
WHERE role = 'Bowler';

INSERT INTO teams VALUES(1,'Kathmandu Kings','Kathmandu','Rahul Sharma');  ---inserting values on teams,table---

SELECT *from teams  --Shows--teams---

---"C" ANS:

UPDATE teams   --now,i updated city to Pokhara-----
Set city='Pokhara'
WHERE city = 'Kathmandu';
                  
SELECT *from teams   ---new,changes can be seen--- here,

--for D,insert values on matches table:
INSERT INTO matches VALUES(1,2025/01/25,'TU Cricket Ground','Karnali Yaks','Lumbini Lions',120,110);  --both scored more than 100
INSERT INTO matches VALUES(2,2025/01/26,'TU Cricket Ground','Karnali Yaks','Kathmandu Gurkhas',98,110);  --one team scored >100
INSERT INTO matches VALUES(3,2025/01/29,'TU Cricket Ground','Karnali Yaks','Janakpur Bolts',120,97);    --one team scored >100
INSERT INTO matches VALUES(4,2025/01/30,'TU Cricket Ground','Karnali Yaks','Lumbini Lions',98,99);   --here,both team scored >100,now this shouldsatisfy

SELECT *FROM matches

---now,here's the answer D:

DELETE FROM matches
WHERE team1_score > 100 AND team2_score > 100;

SELECT *FROM matches
