## Import libraries
library(knitr)
library(readr)
library(corrplot)
library(dplyr)
library(ggplot2)
library(gridExtra)

## Import data
nba <- read_csv("~/Downloads/nba/data/nba.csv")
nba.df <- data.frame(nba)

## Correlation plots
corrplot(cor(nba.df[,c(9:31)]), method = "circle")

## Filter the best teams
topteams <- c("Cleveland Cavaliers", "Golden State Warriors", "Miami Heat",
              "Oklahoma City Thunder", "Philadelphia 76ers", "Toronto Raptors")

## Format the data
topteams.df <- nba.df %>%
  select(YearEnd, Team, W) %>%
  filter(Team %in% topteams)

## Line graph
ggplot(topteams.df, aes(x = YearEnd, y = W, color = Team)) +
  geom_line(size = 1) +
  geom_point() +
  labs(x = "Season", y = "Wins", color = "Top Teams")
  
## Stepwise model
step.model <- glm(W ~ MP + FG + X3PA + X2P + X2PA + FT. + DRB + TRB + AST + STL + TOV + CONF, 
                  family = poisson,
                  data = nba.df)

## Summary
summary(step.model)

## Anova table
anova(step.model, test = "Chi")

## PCA
summary(prcomp(nba.df[,c(10:31)], scale = TRUE))

## Plotting an interaction for field goals by conference
ggplot(nba.df, aes(x = CONF, y = FG, fill = CONF)) +
  geom_boxplot() +
  scale_fill_discrete(labels = c("East", "West")) +
  scale_x_discrete(labels = c("East", "West")) +
  labs(x = "Conference", y = "Field Goals", fill = "Conference")

## Plotting an interaction for wins by conference
ggplot(nba.df, aes(x = CONF, y = W, fill = CONF)) +
  geom_boxplot() +
  scale_fill_discrete(labels = c("East", "West")) +
  scale_x_discrete(labels = c("East", "West")) +
  labs(x = "Conference", y = "Wins", fill = "Conference")
  
## Interaction model
int.model <- glm(W ~ offset(log(G)) + MP + FG + X3PA + X2P + X2PA + FT. + DRB + TRB + AST + STL + TOV + CONF + FG:CONF, family = poisson, data = nba.df)

## Summary
summary(int.model)

## Anova table
anova(int.model, test = "Chi")

## Final model
final.model <- glm(W ~ offset(log(G)) + X3PA + X2PA + ORB + DRB + AST + STL + TOV + CONF,
                   family = poisson,
                   data = nba.df)

## Summary
summary(final.model)

## Anova table
anova(final.model, test = "Chi")

## Calculate the residuals
res <- resid(final.model)
fits <- fitted(final.model)

## Plot the residuals
par(mfrow = c(1, 2))
plot(fits, res, xlab = "Fitted values", ylab = "Residuals", ylim = c(-3,3))
abline(h = 0, lty = 2)

plot(nba.df$X3PA, res, xlab = "Three-Pointers Attempted", ylab="Residuals", ylim = c(-3,3))
abline(h = 0, lty = 2)

