library(pacman)
p_load(data.table)
p_load(tidyr)
p_load(ggplot2)

police <- fread("police.csv")
police <- police[!grep("total",Result)][`Major Category` != "All"][,!c("Total.2012/13","Total.2011/12"),with=FALSE]
police <- gather(police, key, number, -Result, -`Major Category`)
police <- separate(police, key, into=c("Complaint", "Year"), sep="\\.")
police[,Result := factor(Result, levels = unique(police$Result))]
write.csv(police, "tidypolice.csv", row.names=FALSE)

ggplot(police) + geom_bar(aes(x = Complaint, y = number, fill = Result, linetype = `Major Category`), stat = "identity") + facet_wrap(~ Year) + ylab("Number")

ggplot(police) + geom_bar(aes(x = Complaint, y = number, fill = Result, linetype = `Major Category`), stat = "identity", position = "fill") + facet_wrap(~ Year) + ylab("Proportion")
