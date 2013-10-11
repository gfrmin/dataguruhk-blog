library(reshape2)
library(ggplot2)
library(data.table)
library(scales)
library(animation)

#pop <- read.csv("T01_01_01A.csv", sep="\t")
pop <- read.csv("1.csv", sep="\t")
years <- c(1981, 1986, 1991, 1996, 2001, 2006, 2010, 2011, 2012)
colnames(pop) <- c("age", "sex", years)
pop <- melt(pop)
colnames(pop)[3] <- "year"
pop[,3] <- as.integer(as.character(pop$year)) ### I hate factor


smoothing <- function(target, pop, start, end) {
    ## quick and dirty way of doing this.
    ## I hate object mutation but it is quick.
    jump <- end - start
    startPop <- pop[pop$year == start,]
    endPop <- pop[pop$year == end,]
    diffPop <- endPop$value - startPop$value
    aveDiffPop <- diffPop / jump
    increment <- target - start
    targetPop <- startPop$value + (increment * aveDiffPop)
    smoothPop <- startPop
    smoothPop$year <- rep(target, nrow(smoothPop))
    smoothPop$value <- targetPop
    return(smoothPop)
}

require(plyr)

genSmooth <- function(start, end, pop) {
    ldply(seq(start+1, end - 1), smoothing, pop=pop, start=start, end=end)
}

## there must be some DRY-way to do this automatically.

sm82to85 <- genSmooth(1981, 1986, pop)
sm87to90 <- genSmooth(1986, 1991, pop)
sm92to95 <- genSmooth(1991, 1996, pop)
sm97to00 <- genSmooth(1996, 2001, pop)
sm02to05 <- genSmooth(2001, 2006, pop)
sm07to09 <- genSmooth(2006, 2010, pop)

pop <- rbind(pop, sm82to85, sm87to90, sm92to95, sm97to00, sm02to05, sm07to09)



pop <- data.table(pop)
pop[sex == "F", value := -value]
pop[, value := -(value/1000.0)]
pop$age <- factor(pop$age, levels = c("0 - 4", "5 - 9", "10 - 14", "15 - 19", "20 - 24", "25 - 29", "30 - 34", "35 - 39", "40 - 44", "45 - 49", "50 - 54", "55 - 59", "60 - 64", "65 - 69", "70 - 74", "75 - 79", "80 - 84", "≧ 85"))
theme_bw()
saveGIF({for (y in seq(1981, 2012)) plot(ggplot() + geom_bar(data = pop[year == y], mapping = aes(x = age, y = value, group = sex, fill = sex), stat = "identity", position = "identity") + coord_flip() + labs(x = "Age", y = "Population (thousands)", title = y) + scale_y_continuous(labels = comma, limits = c(-400, 400)) + theme_bw())}, interval = 0.3 ,movie.name = "smooth.gif")


