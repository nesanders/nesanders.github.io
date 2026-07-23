---
title: "Do galaxies line up?"
date: "2011-03-21"
pin: false
categories: [writing, astrobites]
tags: [ai, astrophysics, statistics, ai safety, galaxies, astronomical surveys]
venue: "Astrobites"
description: "If you see a bunch of galaxies together in a cluster, are their orientations and orbits random or do they align?"
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on March 21, 2011 at [https://astrobites.org/2011/03/21/do-galaxies-line-up/](https://astrobites.org/2011/03/21/do-galaxies-line-up/).*

- **Paper title:** [Intrinsic Alignment of Cluster Galaxies: the Redshift Evolution](https://arxiv.org/abs/1103.3500)

	- **Authors:** 
Jiangang Hao, Jeffrey M. Kubo, Robert Feldmann, James Annis, David E. Johnston, Huan Lin, Timothy A. McKay

	- **First author's affiliation:** Center for Particle Astrophysics, Fermi National Accelerator
Laboratory, Batavia, IL


Astronomers spend a lot of time trying to disentangle real physical processes from orientation effects, which can cause the same type of object to look wildly different simply because you happen to be viewing it from a different angle.  A great example is [AGN](https://astrobites.com/glossaries/galaxy-and-agn-types/#tagn).  There is lots of evidence to suggest that a Type II AGN is the same as a Type I AGN rotated such that the dusty torus obscures the nucleus.  Another example is the [search for exoplanets](https://astrobites.com/2011/03/15/planet-statistics-from-the-latest-kepler-data-release/), in which the angle of the system means the difference between a detectable transit and an unassuming star.  Usually the viewing angle isn't really what we're interested in — it's a nuisance parameter.

[![](https://astrobites.org/wp-content/uploads/2011/03/hao1.png?w=300)](https://astrobites.org/wp-content/uploads/2011/03/hao1.png)

*Illustating the definition of the two different alignment parameters.  Phi describes the alignment of satellite galaxies with respect to the BCG, and theta describes the alignment of the BCG with respect to the satellites. From Figure 1 of Hao et al. 2011.*

But what if the orientation of some objects actually revealed information about the structure of the universe?  For example, if all of the galaxies in a galaxy cluster were aligned, it would tell us something about the gravitational potential and mass distribution of the system.  This could either be a consequence of initial conditions (how clusters form) or evolution (how clusters change over time, e.g. by tides).  This suggestion isn't new — the authors of this new paper point to [a pioneering paper](https://adsabs.harvard.edu/abs/1938MNRAS..98..218B) all the way back in 1938 — but new, large-scale systematic surveys like the [SDSS](https://astrobites.com/2011/02/25/data-mining-is-more-better/) make it possible begin looking for answers in observations.

One of the key results so far has been disagreement!  The authors cite a laundry list of papers presenting evidence both detecting and not detecting galaxy alignment.

How can you quantify and measure alignment?  First the authors elect to use the brightest cluster galaxy ([BCG](https://astrobites.com/glossaries/galaxy-and-agn-types/)) as a proxy for the cluster center.  The authors then define two types of alignment: one ($latex delta$) measures whether or not the satellites are each elongated in the same direction as the BCG, the other ($latex gamma$) measures whether the satellites themselves  are spatially distributed along the major axis of the BCG.  These definitions are illustrated in the figure at left.

The authors calculate these parameters for each of about 11,000 galaxy clusters in a volume-limited sample all the way out to a redshift of z=0.4.  Each galaxy in the sample has a photometric redshift measurement.  Their ["GMBCG" catalog](https://home.fnal.gov/~jghao/gmbcg_sdss_catalog.html) is based on [SDSS DR 7](https://www.sdss.org/dr7/) data.

[![](https://astrobites.org/wp-content/uploads/2011/03/hao5.png?w=300)](https://astrobites.org/wp-content/uploads/2011/03/hao5.png)

*Results suggesting that the spatial alignment of satllite galaxies with respect to the BCG (gamma) is significantly different than for the randomized data (black), regardless of the methodology for measuring the position angle (red, blue, green), and tends to increase over time (lower redshift, photoz).  From Figure 9 of Hao et al. 2011.*

How do you measure the position angle (orientation) of individual galaxies?  The SDSS crew has implemented three different ways.  The isopohotal method basically draws a contour at a particular brightness level around each galaxy and extracts elliptical parameters from this shape.  By choosing a low brightness contour (high limiting magnitude), this method gives a good description of the outer regions of the galaxy.  The exponential and DeVancouleurs methods fit different exponential brightness profiles to the galaxy images.  These methods are more sensitive to the light distribution in the inner region of the galaxies.

One more issue the authors address is the possibility for systematic errors.  They introduce a "control sample" by randomizing their own data; for example, assigning random BCG positions to their cluster catalog and recomputing all the alignment parameters to see what effects this type of error would introduce.

The authors conclude that there is no evidence that satellite galaxies tend to be elongated along the same axis as the BCG, and that tentative signs of alignment they see from the isophotal method are probably due to systematic errors caused by BCG light contamination.  However, they do find that the BCG tends to be aligned with the spatial distribution of the satellites.  Moreover, they find that this alignment increases as a function of both redshift and the brightness of the BCG.  In other words, it seems that satellite galaxies tend to position themselves along the major axis of the BCG increasingly over time and especially so if the BCG is very large.

The presence of alignment would be interesting in its own right, but also has implications for the interpretation of [lensing](https://astrobites.com/2010/12/21/the-emission-line-properties-of-gravitationally-lensed-1-5-z-5-galaxies-2/) in galaxy clusters.  The authors point to next generation surveys to provide the data necessary to resolve this issue.