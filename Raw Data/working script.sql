#SELECT * FROM Dodgers;


#CREATE TABLE Dodgers_data LIKE Dodgers;
#INSERT Dodgers_data SELECT * FROM Dodgers;

SELECT * FROM Dodgers_data;

# Day of Week, Time of Day, Record, Win / Loss Streak, Promotions, Opponent, Key Player Acquisition, Weather

SELECT DAYOFWEEK(YYYYMMDD)
FROM Dodgers_data;

SELECT LENGTH(Streak) - LENGTH(REPLACE(Streak,'+','')) as Win_Streak,Streak
FROM Dodgers_data;

SELECT DISTINCT Opponent,(@cnt := @cnt + 1) AS Opponent_Number
FROM (SELECT DISTINCT Opponent FROM Dodgers_data) as opponent
CROSS JOIN (SELECT @cnt :=0) as cnt;

CREATE TABLE Opponent_Map(
`Opponent` Varchar(3),
`Number` INT
);

INSERT Opponent_Map SELECT DISTINCT Opponent,(@cnt := @cnt + 1) AS Opponent_Number
FROM (SELECT DISTINCT Opponent FROM Dodgers_data) as opponent
CROSS JOIN (SELECT @cnt :=0) as cnt;


UPDATE Dodgers_data as dodger
SET Temp = (SELECT Temp FROM Weather
					WHERE dodger.Game = Weather.game
                    AND   dodger.season = Weather.season);


SELECT Game as Game_ID, `Number` as Opponent_Number,
REPLACE(LEFT(YYYYMMDD,10),'-','') as Date,
DAYOFWEEK(YYYYMMDD),
CASE WHEN `D/N` = 'D' THEN 1 ELSE 0 END as Day_or_Night, 
LENGTH(Streak) - LENGTH(REPLACE(Streak,'+','')) as Win_Streak,
Bobble_head,
precip,
Temp,
Attendance
FROM Dodgers_data as dodger
LEFT JOIN Opponent_Map as map on dodger.Opponent = map.Opponent