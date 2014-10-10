library(reshape2)
library(ggplot2)
library(data.table)
library(scales)

pop <- read.csv("T01_01_01A.csv", sep="\t")
colnames(pop) <- c("age", "sex", "1981", "1986", "1991", "1996", "2001", "2006", "2010", "2011", "2012")
pop <- melt(pop)
colnames(pop)[3] <- "year"
pop <- data.table(pop)
pop[sex == "F", value := -value]
pop$age <- factor(pop$age, levels = c("0 - 4", "5 - 9", "10 - 14", "15 - 19", "20 - 24", "25 - 29", "30 - 34", "35 - 39", "40 - 44", "45 - 49", "50 - 54", "55 - 59", "60 - 64", "65 - 69", "70 - 74", "75 - 79", "80 - 84", "≧ 85"))
# poptotalage <- pop[,sum(value),by=age]
theme_bw()
popplot <- ggplot() + geom_area(data = pop, mapping = aes(x = age, y = value, group = sex, fill = sex), stat = "identity", position = "identity") + coord_flip() + labs(x = "Age", y = "Population", title = "Hong Kong's population distribution, 1981-2012") + scale_y_continuous(labels = comma, limits = c(-400000, 400000)) + facet_wrap(~ year) + theme_bw()
ggsave(filename = "popplot.png", plot = popplot)
