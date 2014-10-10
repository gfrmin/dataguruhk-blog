library(reshape2)
library(ggplot2)
library(data.table)
library(scales)

infmor <- read.csv("2.csv")
infmor <- melt(infmor, id.vars = "year")
infmor <- infmor[infmor$variable != "total",]
infmor$value <- infmor$value / 10.0
infmorplot <- ggplot() + geom_line(data = infmor, mapping = aes(x = year, y = value, colour = variable, group = variable), size = 1) + labs(x = "Year", y = "Infant mortality per 100 births", colour = "Sex") + scale_x_continuous(limits = c(1950, 2020)) + theme_bw(base_size = 20)
ggsave(filename = "2.png", plot = infmorplot)
