
CREATE TABLE career_stats_adj3 (
    Name VARCHAR NOT NULL Primary Key,
    GP VARCHAR,
    G DECIMAL,
    A DECIMAL,
    TP DECIMAL,
    PPG VARCHAR,
    PIM DECIMAL,
    Period VARCHAR,
    Years DECIMAL,
    POS VARCHAR,
    firstYear INT,
    lastYear INT
);


CREATE TABLE master_adj (
    Name  VARCHAR  NOT NULL,
    firstName VARCHAR,
    lastName VARCHAR,
    playerID VARCHAR,
    hofID VARCHAR,
    firstNHL VARCHAR,
    lastNHL VARCHAR,
    pos VARCHAR
);