---
title: "Can you hide a super-massive black hole?"
date: "2012-11-26"
pin: false
categories: ["astrobites"]
tags: ["accretion", "AGN", "black holes", "galaxy evolution", "simulations", "spectroscopy"]
description: "Observational surveys looking for the smallest super-massive black holes come up empty; could they be hiding in plain sight?"
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on November 26, 2012 at [https://astrobites.org/2012/11/26/can-you-hide-a-super-massive-black-hole/](https://astrobites.org/2012/11/26/can-you-hide-a-super-massive-black-hole/).*

**Title**: [A transition mass for black holes to show broad emission lines](https://arxiv.org/abs/1211.3208)
**Authors**: Susmita Chakravorty, Martin Elvis, Gary Ferland
**First Author's Institution**: Harvard-Smithsonian Center for Astrophysics

[![](https://astrobites.com/wp-content/uploads/2012/11/Msigma-287x300.png)](https://astrobites.com/wp-content/uploads/2012/11/Msigma.png)

*A recent calibration of the M-sigma relation, including many low-mass galaxies. They find a lower limit for SMBH mass of ~200,000 solar masses within the SDSS spectroscopic sample. From Figure 6 of Xiao et al. (2011, arXiv:1106.6232).*

One of the most remarkable discoveries in galaxy studies of the past few decades is the [M-sigma](https://astrobites.com/2011/05/31/black-holes-and-dark-halos-growing-together/) relation, which says that the mass of the [super-massive black holes](https://astrobites.com/2012/10/03/where-do-supermassive-black-holes-come-from/) (SMBHs) at the center of galaxies is strongly correlated with the mass of stars in the bulge of the galaxy (as indicated by its velocity dispersion; see figure at right). A flurry of work has sought to explain how the properties of the SMBH, with a mass and size that is a tiny fraction of its host galaxy, is so closely linked to the large-scale properties of galaxies.

But the observed M-sigma relation seems to be telling us something else as well. We detect and measure the properties of these black holes by looking for ones that are currently active, i.e. accreting matter and emitting energy, producing bright objects known as [active galactic nuclei](https://astrobites.com/glossaries/galaxy-and-agn-types/) (AGN). Notice from the figure at right that we don't find any AGN with mass less than about 105 M☉. What could be setting this lower limit? Is it because lower mass objects don't exist, or are our observational surveys biased against low-mass AGN in some way?

Chakravorty et al. propose a solution to this problem: a systematic effect that is preventing us from discovering lower-mass SMBHs. This effect has to do with one of the most common techniques for estimating SMBH mass, which is based on the detection of broad emission lines in AGN spectra. These lines are produced by the cloud of gas surrounding the AGN, called the broad line emitting region. We estimate its radius based on the luminosity of the emission line and estimate its velocity dispersion from the full width at half-maximum of the line. With these two pieces of information about the gas cloud, the mass of the SMBH at the center of the cloud is given by an application of the [Virial theorem](https://spiff.rit.edu/classes/phys440/lectures/glob_clus/glob_clus.html).

It turns out that the broad emission lines should be strongest (in terms of [equivalent width](https://www.astrosurf.com/buil/us/spe2/hresol7.htm)) for the lowest mass SMBHs, because the gas clouds surrounding the smallest SMBHs have higher characteristic densities and receive more ionizing flux from the SMBH [accretion disk](https://astrobites.com/2012/08/10/a-star-screams-while-being-devoured-by-black-hole/). This implies that the smallest SMBHs should be, in some sense, the easiest to find.

But this is only true if the broad line emitting region is "unrestricted," when it may in fact be truncated. Chakravorty et al. point out that the profiles of these broad lines show that the gas clouds seen so far have minimum orbital velocities of ~1000 km/s, implying that we don't see any part that is moving slower. Simple Keplerian mechanics translates this limit on velocity to a limit on the radius that depends on the mass of the central object.  For a given minimum velocity, less massive black holes will have their gas cloud truncated at a smaller radius, giving them a smaller and less luminous total emission region. Chakravorty et al. perform detailed photoionization calculations using the [CLOUDY](https://www.nublado.org/) code with and without this truncated radius.

[![](https://astrobites.com/wp-content/uploads/2012/11/ChakraF3-300x203.png)](https://astrobites.com/wp-content/uploads/2012/11/ChakraF3.png)

*Black lines: theoretical prediction for the strength (equivalent width, EW) of the MgII emission line for AGN as a function of SMBH mass. Red lines: the same prediction, but with broad line emitting regions truncated according to observed Keplerian velocities Blue lines: truncation by gravitational instability. From Figure 3 of Chakravorty et al. (2012).*

The figure at left illustrates the effect of this truncation. Unlike the unrestricted models (black line), the truncated gas clouds (red line) produce emission lines that decrease sharply in strength for the smallest SMBHs. Depending on the minimum velocity, this corresponds to a threshold for the production of emission lines that could explain why we haven't discovered 5M☉ SMBHs - they aren't creating the emission lines we're using to find them.

Chakravorty et al. plan additional analyses and quantitative comparisons with data to test this explanation for the absence of low-mass SMBHs in observational surveys. If it is correct, it implies that our understanding of the mass distribution for SMBHs could be significantly flawed, and that low-mass SMBHs could be hiding in plain sight, without emitting the conspicuous broad lines we expect from them.