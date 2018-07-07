## Overview
The dataset is an aggregate of team statistics for the NBA. The data only contains basic box-score attributes such as points, assists, rebounds etc., to more advanced money-ball like features such as Value Over Replacement. The goal of the analysis is to understand the trends in teams that have a high number of wins in a season. Eventually, we would like to use this knowledge to predict wins in future seasons, given a team's basic statistics (i.e. assists, steals, etc.). 

The data contains 29 statistical summaries about the top thirty teams for the 2009-2016 seasons, implying the data consists of 210 observations and 30 variables. The 2011-2012 season was not used in the analysis, since there were fewer games due to a lockout. The lockout was caused by a disagreement between team owners and players about the league's structure of a salary cap. In 2008, the NBA introduced major changes to the rules, which could have had an effect on the data. Therefore, we decided to exclude any data before 2009. I should note that rule clarifications occurred within the 2009-2016 seasons, but not major rule changes. The data was scraped from the [NBA](https://stats.nba.com/teams/traditional/?sort=W_PCT&dir=-1) and has been uploaded to the repository. For more information about the statistics collected by the NBA, please refer to their [site](https://stats.nba.com/).

## Variable Descriptions

- `Year:` The NBA season.
- `Rk:` The ranking of the team for the season.
- `Team:` The NBA team.
- `ABR:` The abbreviated NBA team.
- `CONF:` The conference to which a team belongs.
- `G:` The number of games played by a team for the season.
- `W:` The number of wins by a team for the season.
- `MP:` The minutes played by a team for the season.
- `FG:` The number of field goals made by a team for the season.
- `FGA:` The number of field goals attempted by a team for the season.
- `FG%:` The field goal percentage of a team for the season.
- `3P:` The number of three point field goals made by a team for the season.
- `3PA:` The number of three point field goals attempted by a team for the season.
- `3P%:` The three point field goal percentage of a team for the season.
- `2P:` The number of two point field goals made by a team for the season.
- `2PA:` The number of two point field goals attempted by a team for the season.
- `2P%:` The two point field goal percentage of a team for the season.
- `FT:` The number of free throws made by a team for the season.
- `FTA:` The number of free throws attempted by a team for the season.
- `FT%:` The free throw percentage of a team for the season.
- `ORB:` The number of offensive rebounds made by a team for the season.
- `DRB:` The number of defensive rebounds made by a team for the season.
- `TRB:` The number of rebounds made by a team for the season.
- `AST:` The number of assists made by a team for the season.
- `STL:` The number of steals made by a team for the season.
- `BLK:` The number of blocks made by a team for the season.
- `TOV:` The number of turnovers made by a team for the season.
- `PF:` The number of personal fouls made by a team for the season.
- `PTS:` The number of points made by a team for the season.
