-- View complete table
SELECT *
FROM master_adj;

-- View complete table
SELECT *
FROM career_stats_adj3;

-- Show the stats for players in the Hall of Fame
SELECT master_adj.name, master_adj.hofID, career_stats_adj3.G, career_stats_adj3.A, career_stats_adj3.TP
FROM master_adj 
INNER JOIN career_stats_adj3 ON
master_adj.name=career_stats_adj3.name
WHERE master_adj.hofID IS NOT NULL;

-- Show the stats for players not currently in the Hall of Fame
SELECT master_adj.name, master_adj.hofID, career_stats_adj3.G, career_stats_adj3.A, career_stats_adj3.TP
FROM master_adj 
INNER JOIN career_stats_adj3 ON
master_adj.name=career_stats_adj3.name
WHERE master_adj.hofID IS NULL;

-- Show all player stats and sort by total points to compare stats of those not in HoF 
-- to predict if they will or should be included in the future.
SELECT master_adj.name, master_adj.hofID, career_stats_adj3.G, career_stats_adj3.A, career_stats_adj3.TP
FROM master_adj 
INNER JOIN career_stats_adj3 ON
master_adj.name=career_stats_adj3.name
ORDER BY career_stats_adj3.TP DESC;