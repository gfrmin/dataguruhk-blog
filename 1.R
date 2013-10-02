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
pop[, value := -(value/1000.0)]
pop$age <- factor(pop$age, levels = c("0 - 4", "5 - 9", "10 - 14", "15 - 19", "20 - 24", "25 - 29", "30 - 34", "35 - 39", "40 - 44", "45 - 49", "50 - 54", "55 - 59", "60 - 64", "65 - 69", "70 - 74", "75 - 79", "80 - 84", "≧ 85"))
theme_bw()
popplot <- ggplot() + geom_bar(data = pop, mapping = aes(x = age, y = value, group = sex, fill = sex), stat = "identity", position = "identity") + coord_flip() + labs(x = "Age", y = "Population (thousands)") + scale_y_continuous(labels = comma, limits = c(-400, 400)) + facet_wrap(~ year, ncol=2) + theme_bw() + theme(legend.justification=c(1,0), legend.position=c(0.9,0.05))
ggsave(filename = "popplot.png", plot = popplot, width = 100, height = 250, units = "mm")
