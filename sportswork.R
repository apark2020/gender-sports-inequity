# library
library(ggplot2)

# stacked bar graph
data <- read.csv('C:/Users/parkj/gender-sports-inequity/data/dontalphabetize.csv', header = TRUE)
chartt <- ggplot(data) + geom_col(aes(y=team, x=value, fill = div), position  = 'stack', width = 0.9) + 
  facet_wrap(~school, ncol = 1) +  theme(panel.spacing = unit(0.7, "lines"))+ theme(strip.background = element_blank(),strip.text.x = element_blank())
charttflip <- chartt + scale_x_continuous(limits=c(0,15000000),breaks=seq(0,15000000,1000000),labels=c(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15))
charttflip


#operating expenses graph
data2 <- read.csv('C:/Users/parkj/gender-sports-inequity/data/compare.csv',header = TRUE)
ggplot(data = data2,
       aes(x = reorder(Sport,Difference), y = Difference))+
  geom_bar(stat = "identity")+
  theme(aspect.ratio = 2/3)+ 
  theme_classic()+
  coord_flip()

#line graph
library("tidyverse")
data5 <- read.csv('C:/Users/parkj/gender-sports-inequity/data/linenumbers.csv')
ggrap <- ggplot(data=data5, aes(x=Year, y=HCSal, group = Group)) + 
          geom_line()
ggraph <- ggplot(data5, aes(x=Year,y=HCSal,color=Group)) + 
  geom_point() + 
  theme(aspect.ratio = 2/3) + 
  scale_y_continuous(limits=c(50000,200000),breaks=seq(50000,200000,25000)) + 
  theme_classic()
ggraph