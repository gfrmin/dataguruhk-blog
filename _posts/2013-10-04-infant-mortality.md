---
layout: post
title: "Hong Kong in graphs: Infant mortality rates by sex"
category: statistics
tags: [hong kong, graphs, population]
---

![center](/../figs/2013-10-04-infant-mortality/unnamed-chunk-1-1.png) 

The response to yesterday's post was phenomenal; thank you everyone for getting in touch and suggesting improvements! Even if I'm a little sceptical about some of those suggestions... But the beauty of data is that there are so many ways of looking at it/them. That, and it's numbers. Mmm, numbers.

I will come back to the general population trends in Hong Kong another time, but today we move in the embarrassment of riches that is the snappily-titled <a href="http://www.censtatd.gov.hk/hkstat/sub/sp180.jsp?productCode=B1130303">"Women and Men in Hong Kong: Key Statistics" (2013 edition)</a>, and remember how lucky we are. Hong Kongers are notorious for complaining constantly about their city, their criticisms probably including the amount of complaining going on, but today's chart should remind us that our problems pale in comparison to those from only a generation ago.

Today's chart is Table 1.6 on page 13/41, "Infant mortality rates by sex". Yes, not every innocent baby survived the tricky time that is birth. In 1981 almost 1% of babies died as infants. <del datetime="2013-10-04T16:15:18+00:00">I don't know whether this means they died very soon after birth or before the age of 5 (which is one definition of infant mortality). Either way, it is sobering.</del> Infant mortality means death before the age of 1, while child mortality refers to death before the age of 5. Thank you Chan Fuk! By 2011 the infant mortality rate had fallen to a tenth of the rate, at 0.13%.

The government has actually collected statistics on infant mortality since long before 1981, and so I use their <a href="http://www.censtatd.gov.hk/fd.jsp?file=B71302FB2013XXXXB01.xls&amp;product_id=FA100108&amp;lang=1">tables "Trends of Infant Mortality in Hong Kong"</a> to plot the infant mortality due to all causes from 1951 to 2011. The numbers are broken down by cause, including "immaturity" (which surely I should have died from by now due to excess levels thereof), but the safest treatment is to look only at all deaths, sadly. I also express mortality as percentages rather than per 1000 births, because that's too many births to consider deaths too. I'm a sentimental statistician.

(More detailed charts about this, created by the government, can be found <a href="http://www.statistics.gov.hk/pub/B71302FB2013XXXXB0100.pdf">in this PDF file</a>).

Code:


{% highlight r %}
library(methods) 
library(reshape2)
library(ggplot2)
library(data.table)
library(scales)

infmor <- read.csv("../old/2.csv")
infmor <- melt(infmor, id.vars = "year")
infmor <- infmor[infmor$variable != "total",]
infmor$value <- infmor$value / 10.0
ggplot() + geom_line(data = infmor, mapping = aes(x = year, y = value, colour = variable, group = variable), size = 1) + labs(x = "Year", y = "Infant mortality per 100 births", colour = "Sex") + scale_x_continuous(limits = c(1950, 2020)) + theme_bw(base_size = 20)
{% endhighlight %}
