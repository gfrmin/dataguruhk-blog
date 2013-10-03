library(reshape2)
library(ggplot2)
library(data.table)
library(scales)

infmor <- read.csv("2.csv")
infmor <- melt(infmor, id.vars = "year")
infmorplot <- ggplot() + geom_line(data = infmor, mapping = aes(x = year, y = value, colour = variable, group = variable)) + labs(x = "Year", y = "Infant mortality per 1000 births") + scale_x_continuous(limits = c(1950, 2020)) + theme_bw()
ggsave(filename = "popplot.png", plot = popplot)
