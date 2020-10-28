-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/bfc4D5
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "career_stats_adj3" (
    "Name" VARCHAR   NOT NULL,
    "GP" VARCHAR   NOT NULL,
    "G" DECIMAL   NOT NULL,
    "A" DECIMAL   NOT NULL,
    "TP" DECIMAL   NOT NULL,
    "PPG" VARCHAR   NOT NULL,
    "PIM" DECIMAL   NOT NULL,
    "Period" VARCHAR   NOT NULL,
    "Years" DECIMAL   NOT NULL,
    "POS" VARCHAR   NOT NULL,
    "firstYear" INT   NOT NULL,
    "lastYear" INT   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
    CONSTRAINT "pk_career_stats_adj3" PRIMARY KEY (
        "Name"
     )
);

CREATE TABLE "master_adj" (
    "Name"  VARCHAR   NOT NULL Primary Key,
    "firstName" VARCHAR   NULL,
    "lastName" VARCHAR   NULL,
    "playerID" VARCHAR   NULL,
    "hofID" VARCHAR   NULL,
    "firstNHL" VARCHAR   NULL,
    "lastNHL" VARCHAR   NULL,
    "pos" VARCHAR   NULL
);

ALTER TABLE "career_stats_adj3" ADD CONSTRAINT "fk_career_stats_adj3_Name" FOREIGN KEY("Name")
REFERENCES "master_adj" ("Name");

