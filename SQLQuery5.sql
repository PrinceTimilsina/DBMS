create database NPL;
use NPL;
create table teams
(
   team_id INT PRIMARY KEY,
   team_name VARCHAR(50),
   city VARCHAR(50),
   manager_name VARCHAR(50)
);

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

create table matches(
  match_id INT PRIMARY KEY,
  date INT,
  venue VARCHAR(50),
  team1 VARCHAR(50),
  team2 VARCHAR(50),
  team1_score INT,
  team2_score INT,
);

INSERT INTO players VALUES( 1,'Rohit Poudel',23,'Bowler',50,150,75,101);
INSERT INTO players VALUES(2,'Prince Timilsina',20,'Batsman',39,1200,40,101);
INSERT INTO players VALUES( 3,'Rohit Poudel',23,'Bowler',50,150,75,101);
INSERT INTO players VALUES( 4,'Rohit Poudel',23,'Bowler',50,150,75,101);
INSERT INTO players VALUES( 5,'Rohit Poudel',23,'Bowler',50,150,75,101);
SELECT *from players 
WHERE role = 'Bowler';
