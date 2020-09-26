# ETL_project

In this project, we analyzed National Basketball Association ("NBA") players’ 2019-20 salary and average points per game to determine which contracts were overvalued. The NBA salary cap was set at $109.14 million for the 2019-20 season. The salary cap is the limit to the total amount of money teams are allowed to pay their players. The purpose of the cap is to control cost and maintain competitive balance between small and large market teams.  


## Extraction: ##
Two tables were extracted from the [basketball-reference](http://www.basketball-reference.com) webpage; player stats [player stats](https://www.basketball-reference.com/leagues/NBA_2020_totals.html) and player salaries [player stats](https://www.basketball-reference.com/contracts/players.html) for the current (2019-20) basketball season. We saved these tables in the resources folders as nba_salaries2019.csv and and player_stats.csv.


## Transformation: ##
After looking at the dataset and determining which column values were relevant to our thesis we created  a dataframe to reflect this

We pulled the nba_salaries2019.csv file into a dataframe ("contract_data") and removed all columns except: Player, Team, and Salary (see csv file "Salary_clean" in the Resources folder. We pulled the player_stats.csv file into a dataframe ("player_data") (see csv file "stat2019_clean" in the Resources folder). 

Using postgressql, the tables were merged into a single dataframe ("nba_sal") with the columns: Player, Team, Position, and Salary. In some cases, players appeared on duplicate rows as a result of being traded during the season. Only the first instance of each player was kept because salary data remained constant, which was sufficient for the analysis (saved as dataframe "nba_sal_clean").



