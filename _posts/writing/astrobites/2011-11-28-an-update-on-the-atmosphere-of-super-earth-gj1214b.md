---
title: "An update on the atmosphere of super-Earth GJ1214b"
date: "2011-11-28"
pin: false
categories: ["astrobites"]
tags: ["atmospheres", "exoplanets", "extra-solar planets", "GJ1214b", "life", "snow line", "Super-Earths", "transits", "water"]
description: "The latest episode in the saga of GJ1214b appeared on the arXiv Wednesday."
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on November 28, 2011 at [https://astrobites.org/2011/11/28/an-update-on-the-atmosphere-of-super-earth-gj1214b/](https://astrobites.org/2011/11/28/an-update-on-the-atmosphere-of-super-earth-gj1214b/).*

**Title**: [The Flat Transmission Spectrum of the Super-Earth GJ1214b from Wide Field Camera 3 on the Hubble Space Telescope](http://arxiv.org/abs/1111.5621)
**Authors**: Zachory K. Berta, David Charbonneau, Jean-Michel Désert, Eliza Miller-Ricci Kempton, Peter R. McCullough, Christopher J. Burke, Jonathan J. Fortney, Jonathan Irwin, Philip Nutzman, Derek Homeier
**First Author's Institution:** Harvard University

[![](https://astrobites.org/wp-content/uploads/2011/11/berta10.png?w=600)](https://astrobites.org/wp-content/uploads/2011/11/berta10.png)

*The flat transmission spectrum of GJ1214b is best-fit by a model atmosphere dominated by water vapor.  From Figure 10 of Berta et al. 2011.*

Since we've already had two Astrobites on the ongoing efforts to characterize the atmosphere of the 2.7 REarth exoplanet GC1214b, I couldn't let this new paper on the subject pass by without a mention.

In our [April 13th Astrobite](http://astrobites.com/2011/04/13/characterizing-the-puzzling-atmosphere-of-super-earth-gj-1214b/), Caroline described how this planet was discovered by MEarth using the [transit method](http://astrobites.com/2011/02/03/dip-detection-in-the-kepler-data/).  She also walked us through the transmission spectroscopy method that allows astronomers to measure the scale height of a planet's atmosphere at different wavelengths based on the depth of its transit as it passes in front of its host star.  In our September 21st Astrobite, Lauren described how the density of the planet could be consistent with either a rocky core and hydrogen-dominated atmosphere or a watery-interior and water vapor-rich atmosphere.  Lauren also showed off the latest preliminary results of transmission spectroscopy of the planet's atmosphere, presented at the Extreme Solar Systems II conference.

[![](https://astrobites.org/wp-content/uploads/2011/11/berta8.png?w=400)](https://astrobites.org/wp-content/uploads/2011/11/berta8.png)

*MCMC posterior probability distributions of the WFC3 instrument systematics over three different observations ('visits,' in different colors).  From Figure 8 of Berta et al. 2011.*

The final version of those results has just been released in a paper accepted by the Astrophysical Journal.  Berta et al. report on [HST WFC3](http://www.stsci.edu/hst/wfc3) observations of the transiting planet.  Their paper includes a very detailed analysis of the performance and systematics of the [slitless spectroscopy mode of WFC3](www.arcetri.astro.it/confraef/pdf/McCarthy_Perugia.pdf) that affect transmission spectroscopy.  A laundry list of effects need to be considered, including stellar limb darkening and image persistence.  The authors assemble a model accounting for each of these effects and see how the best-fit parameters of the model vary using [MCMC](http://astrobites.com/2011/11/26/your-gateway-to-the-bayesian-realm/) methods.  Over three different HST observations, the systematics parameters hardly change, meaning that they can be corrected for reliably.

As they reported in September, they find that the spectrum of the planet's atmosphere is flat to within the measurement uncertainties between 1.1 and 1.7 μm, which indicates that the atmosphere has a high mean molecular weight (e.g. >50% water by mass).  The planetary atmosphere will have many absorption features corresponding to different molecules and ions.  If the atmosphere was dominated by hydrogen with only trace amounts of heavier compounds (like Jupiter), the atmosphere would be puffed up and have a large scale height.  The absorption features would then correspond to large changes in the planets apparent radius at their characteristic wavelengths, making them easy to detect in transmission spectroscopy.  However, if the atmosphere is dominated by a heavy molecule like water, the atmosphere would be weighed down (have a small scale height) and any absorption features would be drowned out.  The resulting spectrum would appear flat, like that of GJ1214b.

If GJ1214b really is dominated by water, it would be surprising that it has been found within its star's [snow line](http://www.scholarpedia.org/article/Planetary_formation_and_migration).  A planet forming at the position of GJ1214b should have been heated such that volatile elements like hydrogen reach their escape velocity and leave the planet.  This might indicate that it formed at a larger radius and then migrated inward.