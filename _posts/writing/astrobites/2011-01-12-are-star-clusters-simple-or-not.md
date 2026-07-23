---
title: "Are star clusters simple or not?"
date: "2011-01-12"
pin: false
categories: [writing, astrobites]
tags: [astrophysics, stars, simulations, astronomical surveys]
venue: "Astrobites"
description: "Assuming every star in a cluster has the same age and metallicity is a powerful simplification, but it may not be true."
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on January 12, 2011 at [https://astrobites.org/2011/01/12/are-star-clusters-simple-or-not/](https://astrobites.org/2011/01/12/are-star-clusters-simple-or-not/).*

- **Title**: [Can rotation explain the multiple main sequence turn-offs of Magellanic Cloud star clusters?](https://arxiv.org/abs/1101.1880)

	- **Author**: Leo Girardi, Patrick Eggenberger, Andrea Miglio

	- **Institution**: Osservatorio Astronomico di Padova, Padova, Italy


[![](https://astrobites.org/wp-content/uploads/2011/01/cluster.png)](https://astrobites.org/wp-content/uploads/2011/01/cluster.png)

*A synthetic HR diagram for a star cluster with no stellar rotation which experienced a constant rate of star formation for 400 Myr, from 1.3-1.7 Gyr after it formed.  The authors claim that the width of main sequence turn-off in this diagram resembles observations of Magellenic Cloud clusters.  This is panel (i) of Figure 3 in Girardi et al.*

The simplifying assumptions that star clusters are "simple stellar populations" has been invaluable to astronomical research for decades.  By supposing that clusters form all at once from a homogeneous cloud of gas, any differences observed between stars in a cluster can be attributed, essentially, to differences in mass.  The other factors that usually complicate analysis of stars (age, chemical composition, and distance from us) can be neglected because every star in the cluster would share these properties identically.  Much of our knowledge of stellar and galactic evolution is derived from cluster observations and owes many insights to this assumption.  But observations in just the past few years have revealed more and more examples of clusters that are not "simple," and which in fact could have have a second population of younger stars.

This revelation relies upon filling [Hertzsprung-Russell (HR) diagrams](https://casswww.ucsd.edu/public/tutorial/HR.html) with more data points, and more precise ones at that.  HR diagrams (also known as "color-magnitude diagrams") are simply plots of a stars' luminosity (e.g. observed brightness magnitude) versus color (e.g. temperature).  One of the most remarkable facts in astronomy is that most stars fall along a very tight line (the "main sequence") in such a diagram.  This is essentially because any star burning hydrogen at its core will look the same on the outside, with the exception that more massive stars will be brighter and hotter (bluer).  But very massive stars soon run out hydrogen fuel in their core and "turn off" from the main sequence by expanding to become cooler (redder) and more luminous.  Eventually, these "evolved stars" follow one of many complicated evolutionary paths to their deaths.  Take a look at the HR diagram in the figure above — the points falling along the line towards the bottom left corner are on the main sequence; the line heading towards the upper right corner is the turn-off.

The evidence for multiple stellar populations in clusters is the appearance of multiple main sequence turn-offs in some clusters' HR diagrams.  This could certainly be due to the existence of a second, younger population of stars whose turn-off is lagging behind at the higher-luminosity end of the HR diagram.  It seems possible that a new generation of stars could be formed from gas expelled by the stellar winds of the first generation or could be assimilated by merging with another cluster.

However, age may not be the only explanation for a second turn-off.  The authors of this paper examine the hypothesis that it is not due to populations with different ages, but instead different stellar rotation rates.  [The idea](https://arxiv.org/abs/0906.1590) is that fast rotation will deform the otherwise spherical ball of gas that is a star, causing reduced effective gravity and a variety of mixing processes that may cause the star to have a different color and brightness.

The authors test this hypothesis by using the [Geneva stellar evolution models](https://obswww.unige.ch/~mowlavi/evol/stev_database.html) of stars with and without rotation.  They compute colors and luminosities for hypothetical stars to try to reproduce the HR diagrams observed in some clusters in the Large and Small Magellanic Cloud.  They assume a rotation rate of 150 km/s, typical of observations of nearby stars.  They use the [TRILEGAL](https://stev.oapd.inaf.it/~lgirardi/trilegal_1.4/help.html) code to produce synthetic HR diagrams under a variety of physical scenarios.  They conclude that synthetic HR diagrams for clusters with age differences among their stars match the observed cluster diagrams better than those produced by stellar rotation.  They argue that this is partly because the effects of rotation on the color and magnitude of stars are somewhat offset by an increased main-sequence lifetime caused by rotation.

The possibility of prolonged star formation in clusters is a very exciting opportunity for new research, especially in modelling cluster formation, but it wouldn't mean that past conclusions based on the SSP assumption are invalid.  Clear evidence for multiple main sequence turn-offs has so far only been observed in a handful of clusters.  Moreover, because the age range of the populations appears to be fairly small (perhaps a few hundred Myr) compared to the age of the clusters (several Gyr), the changes that need to be made to most old models would probably be modest.