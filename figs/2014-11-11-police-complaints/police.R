library(pacman)
p_load(data.table)
p_load(tidyr)
p_load(ggplot2)

police <- fread("police.csv")
setnames(police, sapply(names(police), function(x) {gsub("\\n", "\n", x, fixed=TRUE)}))
police <- police[!grep("total",Result)][`Major Category` != "All"][,!c("Total.2012/13","Total.2011/12"),with=FALSE]
police <- gather(police, key, number, -Result, -`Major Category`)
police <- separate(police, key, into=c("Complaint", "Year"), sep="\\.")
police[,Result := factor(Result, levels = unique(police$Result))] # tidy

policetotals <- police[Year == "2012/13",sum(number),by=Result]
policepresent <- spread(police[Year == "2012/13"][,!c("Year","Major Category"),with=FALSE], Complaint, number)
policepresent[,Total := policetotals$V1]
policepresent <- rbind(policepresent, policepresent[,lapply(.SD, sum), .SDcols = 2:(ncol(policepresent))], fill = TRUE)
policepresent[is.na(Result), Result := Total]

policeplot <- police[!(Complaint %in% c("Police Procedures", "Other\nOffences"))]
ggplot(policeplot) + geom_bar(aes(x = Complaint, y = number, fill = Result, linetype = `Major Category`), stat = "identity") + facet_wrap(~ Year) + ylab("Number")
ggplot(policeplot) + geom_bar(aes(x = Complaint, y = number, fill = Result, linetype = `Major Category`), stat = "identity", position = "fill") + facet_wrap(~ Year) + ylab("Proportion")
