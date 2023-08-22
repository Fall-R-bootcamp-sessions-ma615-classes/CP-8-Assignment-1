library(dplyr)
library(tidyr)
library(ggplot2)

## Exercise 1
# ?anscombe

#?anscombe

whoWasAnscombe <- ""

## Exercise 2

# use sapply to calculate the mean and variance of columns y1-y4.
# anscombeMeans <- 
# anscombeVar <- 

# Why is this problematic?

## Exercise 3
# run the following code

anscombe_tidy <- anscombe %>% 
  pivot_longer(x1:y4) %>%
  group_by(name) %>%
  # Add a unique ID number to each group
  mutate(row = row_number()) %>%
  # Split the column at the first appearance of a number
  separate(name, into = c('xy','group'), sep = "(?<=[a-zA-Z])\\s*(?=[0-9])") %>%
  pivot_wider(names_from = xy, values_from = value) %>%
  select(-row)
# 
# that's all

## Exercise 4
# make a ggplot
# 
# firstGGplot <- 

## Exercise 5
# add specifics about group to shape and color

# colorPlot <- 

# shapePlot <- 

# greatPlot <-  

## Exercise 6
# draw each group separate using the facet_wrap function, specify 2 rows
# greatPlot <- greatPlot + 

## Exercise 7
# add a line of best fit to each group
# greatPlot <- greatPlot +

## Exercise 8
# label everything
# greatPlot <- greatPlot + 
  
## Exercise 9
# Final Plot, add theme_minimal()

# bestPlot <- greatPlot + 

  
  
# for reference
# okplot <- ggplot(anscombe_tidy) +
#   aes(x = x, y = y, colour = group, shape = group) +
#   geom_point() +
#   facet_wrap(vars(group),
#              nrow = 2L) +
#   stat_smooth(method = "lm",
#               formula = y ~ x,
#               geom = "line") +
#   labs(x = "X Values", y = "Y Values", title = "Anscombe Quartet", subtitle = "Justification of visulaization",
#          caption = "an mssp bootcamp tutorial", color = "group") +
#   theme_minimal()
