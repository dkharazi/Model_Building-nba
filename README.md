## Data Overview
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

## Modeling Overview

The purpose of this analysis is to identify any variables that increase the rate of wins, and to predict the average rate of wins per season for some given NBA team. There are some interesting implications from the final model. One of the more obvious implications come from looking at the coefficients for three-point attempts and two-point attempts, which intuitively suggest that three-point attempts correspond to a higher win rate than two-point attempts. The coefficient for the "Conference" variable suggests that the  western conference has a slightly higher win rate than eastern conference. This may be due to an underlying confounding variable that we did not measure, which would affect western conference teams differently than eastern conference teams. Another interesting implication is that the "defensive rebounds" variable corresponds to a higher average rate of winning than the "offensive rebounds" variable. This makes sense because a defensive rebound changes the possession of the ball, giving the team that received the rebound a better chance of scoring.

Although the model offers many benefits in predicting the average rate of winning in the NBA, the model possesses a few limitations, as well. For example, the model will model variables that correspond to the rate of winning games, but the model does not prove that the included variables will cause the average rate of winning to change. Another limitation is that the data we used to build our model consisted of 210 "teams." However, even though teams are technically different from season to season, they are closely related to the preceding and following seasons since players and coaches are not randomized every year. Basketball, like most sports in general, has many unknown variables that we were not able to measure such as referees, money, and player health. Finally, statistical analysis is very popular in basketball right now, and strategies change based on that analysis. Teams can change how they play based on perceived or real trends, which can also affect win rate.

## Ideas for Further Analysis

Expanding on what we have started, creating a new model that directly correlates to how a team plays would be different than what we have created. Our model predicts the number of wins/win rate, a coach can’t derive particular value to what plays the team should run, how it should play against certain teams, and who the coach should play or trade for. A larger data set, with specific player statistics could help build this potential model. This new model could help affect gameplay instead of predicting how a team does at the end of the year.

Diving deeper into the impact of players could be interesting for future analysis. Teams such as the Chicago Bulls from 2015-16 season and the Chicago Bulls from this past season 2016-17 are technically different teams but are very closely related. The Bulls acquired Dwayne Wade in the Summer between these two seasons. By tracking who the team trades for and gets rid of could lead interesting correlations between how the team does and who on the team is different to see the different impact of players and how well a team does in a season.
