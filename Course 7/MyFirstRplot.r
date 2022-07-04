#Tidyverse

library(tidyverse)
library(lubridate)

#Print Todays Date
print(today())

#Print Date time
print(now())

head(diamonds)

str(diamonds)

glimpse(diamonds)

summarize(diamonds, mean_carat = mean(carat))

ggplot(data = diamonds, aes(x = carat, y = price))+geom_point()

