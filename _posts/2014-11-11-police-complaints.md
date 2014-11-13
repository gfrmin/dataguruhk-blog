---
layout: post
title: "Complaints against police in Hong Kong rarely upheld"
categories: [statistics, politics]
tags: [hong kong, police]
---


Hong Kong has recently experienced some of the most severe protests in decades, taking place under the moniker of "Umbrella Revolution/Movement". (That calling the protests a "revolution" is considered too extreme by some protesters is testament to the pragmatic and mild nature of most of the protesters). These protests include "occupation" of some public roads in Hong Kong, at Admiralty, Mong Kok and Causeway Bay.

One immediate trigger for the scale of these protests was the use by the local police of tear gas against peaceful protesters, [as can be seen in this video](https://www.youtube.com/watch?v=ZO6okfun90k).

<iframe width="560" height="315" src="//www.youtube.com/embed/ZO6okfun90k" frameborder="0" allowfullscreen></iframe>

The police, previously holding a reputation as amongst the most professional in the world, lost more public trust [after some officers were allegedly caught on camera beating a protester on the ground](https://www.youtube.com/watch?v=P2aITGfN0qk).

Hong Kong is still governed by the Rule of Law, though, and there are procedures (in theory) for making complaints against police misbehaviour. These complaints are ultimately overseen by the [Independent Police Complaints Council](http://www.ipcc.gov.hk/index.html), and they publish [statistics about the complaints](http://www.ipcc.gov.hk/en/statistics_nature.html). With the professionalism of the police at stake, I wanted to see whether complaints were treated fairly.

Unfortunately the statistics at the above link are only for the years 2007 to 2009, and they are not granulated enough anyway (e.g. the don't show the results of complaints by type of complaint). Instead, one has to retrieve more recent statistics from the [annual reports](http://www.ipcc.gov.hk/en/reports_annual.html) available only in PDF format. But don't worry, I have parsed the figures out of the most recently published annual report for you... You can thank me later.

The data are for 2011/2012 and 2012/2013, and you can get a cleaned version for yourself [here](https://raw.githubusercontent.com/slygent/dataguruhk/master/figs/2014-11-11-police-complaints/police.csv). The numbers look like this for the latest reporting year 2012/2013:



|Result                                |     Assault|     Misconduct/\nImproper Manner/\nOffensive Language|     Neglect of Duty|     Unnecessary\nUse of Authority|     Fabrication\nof Evidence|     Threat|     Police Procedures|     Other\nOffences|     Total|
|:-------------------------------------|-----------:|-----------------------------------------------------:|-------------------:|---------------------------------:|----------------------------:|----------:|---------------------:|-------------------:|---------:|
|Substantiated                         |           0|                                                    15|                  77|                                 8|                            1|          0|                     0|                   0|       101|
|Substantiated Other Than Reported     |           0|                                                     7|                  52|                                 1|                            0|          0|                     1|                   0|        61|
|Not Fully Substantiated               |           1|                                                     5|                  17|                                 6|                            0|          0|                     0|                   0|        29|
|Unsubstantiated                       |          19|                                                   294|                 258|                                38|                           11|          8|                     2|                   0|       630|
|False                                 |          15|                                                    20|                   8|                                 2|                           25|         10|                     0|                   1|        81|
|No Fault                              |          15|                                                   102|                 416|                                40|                           20|          6|                     6|                   0|       605|
|Informally Resolved                   |           0|                                                   258|                 252|                                 0|                            0|          0|                     1|                   0|       511|
|Withdrawn                             |         130|                                                   774|                 916|                                51|                           26|         71|                     1|                   1|      1970|
|Not Pursuable                         |         143|                                                   310|                 317|                                51|                           14|         50|                     0|                   0|       885|
|Curtailed                             |           0|                                                     4|                   4|                                 3|                            0|          0|                     0|                   0|        11|
|Total                                 |         323|                                                  1789|                2317|                               200|                           97|        145|                    11|                   2|      4884|

It is immediately clear that the vast majority of complaints are not substantiated. Regarding assault complaints in particular, out of 323 complaints only *one* was substantiated in part, and *none* substantiated in full. On the contrary, 273 of the complaints were withdrawn or considered not pursuable! Lastly, 15 were found to be _false_, so that it was considered "there is sufficient reliable evidence to indicate that the allegation made by the complainant is untrue, be it a complaint with clear malicious intent or a complaint which is not based upon genuine conviction or sincere belief but with no element of malice.  When a complaint is classified as “False”, CAPO will consider, in consultation with the Department of Justice as necessary, prosecuting the complainant for misleading a police officer", and 15 more led to a conclusion of "no fault", which means that "the complainant may have misunderstood the facts" or "the complainee was acting under lawful instructions from his superior officer or in accordance with established police practice." So 15 alleged assaults weren't really assaults, or the superior officer ordered the assault? I'm personally rather confused by this.

The rarity of complaints being substantiated can be seen in the following two graphs, showing the absolute number and percentage of results for each type of the most complaints for years 2012/13 and 2012/11. It can be seen that assaults and threats are the complaints that are least likely to be substantiated, and most likely to be withdrawn or not pursued. 

I hope this does not bode badly for the investigation currently underway into the [recent famous beating](https://www.youtube.com/watch?v=P2aITGfN0qk).


![center](/../figs/2014-11-11-police-complaints/unnamed-chunk-5-1.png) 
![center](/../figs/2014-11-11-police-complaints/unnamed-chunk-6-1.png) 
