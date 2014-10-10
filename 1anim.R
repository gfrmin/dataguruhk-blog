library(reshape2)
library(ggplot2)
library(data.table)
library(scales)
library(animation)

pop <- read.csv("T01_01_01A.csv", sep="\t")
years <- c("1981", "1986", "1991", "1996", "2001", "2006", "2010", "2011", "2012")
colnames(pop) <- c("age", "sex", years)
pop <- melt(pop)
colnames(pop)[3] <- "year"
pop <- data.table(pop)
pop[sex == "F", value := -value]
pop[, value := -(value/1000.0)]
pop$age <- factor(pop$age, levels = c("0 - 4", "5 - 9", "10 - 14", "15 - 19", "20 - 24", "25 - 29", "30 - 34", "35 - 39", "40 - 44", "45 - 49", "50 - 54", "55 - 59", "60 - 64", "65 - 69", "70 - 74", "75 - 79", "80 - 84", "≧ 85"))
theme_bw()
saveGIF({for (y in 1:9) plot(ggplot() + geom_bar(data = pop[year == years[y]], mapping = aes(x = age, y = value, group = sex, fill = sex), stat = "identity", position = "identity") + coord_flip() + labs(x = "Age", y = "Population (thousands)", title = years[y]) + scale_y_continuous(labels = comma, limits = c(-400, 400)) + theme_bw())}, movie.name = "1.gif")
