SELECT Game as Game_ID, `Number` as Opponent_Number,
REPLACE(LEFT(YYYYMMDD,10),'-','') as Date,
CASE WHEN DAYOFWEEK(YYYYMMDD)= 1 OR DAYOFWEEK(YYYYMMDD) = 7 THEN '1' ELSE '0' END as Is_Weekend,
Month(YYYYMMDD) as Month,
Year(YYYYMMDD) as Year,
CASE WHEN LENGTH(`W-L`) <= 5 THEN (LEFT(`W-L`,2)/(LEFT(`W-L`,2)+RIGHT(`W-L`,2)))
	 ELSE (LEFT(`W-L`,3) / (LEFT(`W-L`,3)+RIGHT(`W-L`,2))) END AS Cumulative_Win_Rate,
CASE WHEN `D/N` = 'D' THEN 1 ELSE 0 END as Is_Day, 
LENGTH(Streak) - LENGTH(REPLACE(Streak,'+','')) as Win_Streak,
Bobble_head,
precip,
Temp,
Attendance
FROM Dodgers_data as dodger
LEFT JOIN Opponent_Map as map on dodger.Opponent = map.Opponent