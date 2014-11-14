---
layout: post
title: "How many people protest in Hong Kong?"
categories: [statistics, protests]
tags: [hong kong, police, crowd size, protests]
---

Before the current "Umbrella Movement/Revolution" protests in Hong Kong, there were many legal protests in Hong Kong that did not involve occupation of public roads. For protests to be considered legal in Hong Kong, they must follow the relevant provisions of the [Public Order Ordinance](http://www.hklii.hk/eng/hk/legis/ord/245/) (which has the unfortunate acronym POO). This includes needing to inform the Commissioner of Police at least 7 days before a planned protest.

One complaint protesters had was that the police were making severe underestimates of the number of protesters joining anti-government processions, while inflating the number joining pro-government protests. For example, [the police gave an estimate of 98,600 attending the 1st July 2014 protests](http://blogs.wsj.com/chinarealtime/2014/07/04/hong-kong-counting-controversy-how-many-protesters-showed-up-on-july-1/), but [110,600 joining the 17th August 2014 anti-Occupy Central march](http://blogs.wsj.com/chinarealtime/2014/08/17/hong-kongs-pro-beijing-crowd-occupies-itself-with-own-march/). Many were incredulous that the latter event was supposed to have attracted more people than the former event, given both political reality and observation of the respective densities of the marches. The anti-government protesters claimed around 500,000 marchers while the pro-government protest organisers claimed up to 250,000.

One issue is that the police estimates represents a different measure than that of the protesters of either side. [The protesters are giving what they consider to be the number who attended the protests at all, while the police claim to be giving the maximum size of the protest at any particular point in time](http://www.scmp.com/comment/insight-opinion/article/1576288/hong-kong-protesters-police-get-all-tangled-numbers-game?page=all). So there is not necessarily any contradiction.

Even if it is assumed that the organisers or police want to give accurate estimates of their respective measures (variables), it is in practice impossible to achieve this wish.

[Paul Siu-Fai Yip (葉兆輝)](http://hub.hku.hk/cris/rp/rp00596), a Professor at the University of Hong Kong and Director at its Centre for Suicide Research and Prevention (yes, really!), [co-wrote an accessible technical exposition of how to measure crowd size](http://onlinelibrary.wiley.com/doi/10.1111/j.1740-9713.2011.00502.x/abstract) for Significance magazine. He was also cited for this [BBC article](http://www.bbc.com/news/magazine-23312656) that gives a good overview of the methodologies available. [The academic article behind his methodology is [here](http://onlinelibrary.wiley.com/doi/10.1111/j.1467-842X.2009.00562.x/abstract?deniedAccessCustomisedMessage=&userIsAuthenticated=false)].

One obvious method to count the number of protesters is to count the number of people passing a particular point (or points) during a reasonably comprehensive period of time. Then, to guard against double-counting with multiple points, you ask those passing a later point if they passed the earlier point. The final estimate N is then calculated by (http://www.scmp.com/news/hong-kong/article/1555654/hong-kongs-credibility-not-served-over-top-protest-estimates)[an equation so simple you wonder why you can't be also be a professor]:

N = N1 + N2 × (1 - R)

where N1 and N2 are the counts at two points, and R is the percentage of people counted who passed through both points.

Professor Yip did this for both the (http://www.scmp.com/news/hong-kong/article/1555654/hong-kongs-credibility-not-served-over-top-protest-estimates)[1st July] and [17th August](http://www.scmp.com/news/hong-kong/article/1578644/exaggerating-march-turnout-does-no-one-any-favours) marches. His estimates for the total number of marchers was then respectively 122,000 and 57,000. Note how the latter figure is less than the police estimate of how many started the march in Victoria Park. This is only consistent if around half the marchers didn't actually, erm, march. 

An alternative is the density method (also called the Jacobs method), which requires estimating the number of people in smaller areas using, well, the density of people (usually assumed to be around 1 to 2 per square metre, unless there are reasons to use a different number). The [SCMP commissioned this method](http://www.scmp.com/news/hong-kong/article/1545694/protest-number-july-1-march-put-test?page=all) to come up with an estimate for the 1st July march of 140,000. So it's quite clear both sets of organisers are probably exaggerating.

The major non-statistical question is why the police gives out estimates at all. According to [this BBC story](http://www.bbc.com/news/magazine-12879582) from 2011, a spokesman for the Metropolitan (London) police said "the force only [provides its own estimates] when it disagrees with the figures being given by those organising an event, and their counting methods rely on experience more than science". I can't say I'm happy with any of that. Will the police in Hong Kong explain both how it counts, and why?