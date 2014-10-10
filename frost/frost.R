library(data.table)
library(ggplot2)
library(reshape2)

theme_set(theme_bw())

frost <- fread(input = "frost.tsv", header=TRUE) # , colClasses=c())
frost[,Ann := NULL]
frost <- data.table(melt(frost, id.vars = "Year"), key="Year,variable")
setnames(frost, c("year", "month", "frost"))

frostbyyear <- frost[,list(frost=sum(frost)),by=year]
frostbyyearplot <- ggplot(frostbyyear) + geom_line(aes(x = year, y = frost), size = 2) + labs(x = "Year", y = "Days with reported frost") + scale_y_continuous(breaks=seq(0,10,1))
ggsave(plot = frostbyyearplot, filename = "frostyear.png")

frostbymonth <- frost[,list(frost=sum(frost)),by=month]
frostbymonthplot <- ggplot(frostbymonth) + geom_line(aes(x = month, y = frost, group = 1)) + theme_bw()  + labs(x = "Month", y = "Days with reported frost") #  + theme(axis.title.y = element_text(angle = 0))
ggsave(plot = frostbymonthplot, filename = "frostmonth.png")

frostbymonthperyear <- frost[,list(frost=mean(frost)),by=month]
frostbymonthperyearplot <- ggplot(frostbymonthperyear) + geom_line(aes(x = month, y = frost, group = 1)) + theme_bw()  + labs(x = "Month", y = "Mean with reported frost") #  + theme(axis.title.y = element_text(angle = 0))
ggsave(plot = frostbymonthperyearplot, filename = "frostmonthperyear.png")
