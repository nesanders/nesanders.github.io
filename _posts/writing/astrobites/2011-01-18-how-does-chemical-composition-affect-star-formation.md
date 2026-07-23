---
title: "How does chemical composition affect star formation?"
date: "2011-01-18"
pin: false
categories: [writing, astrobites]
tags: [astrophysics, star formation, interstellar medium, spectroscopy, simulations]
venue: "Astrobites"
description: "Incorporating all the effects relevant to star formation into accurate simulations of the interstellar medium is a major frontier in astrophysics.  These authors start to tackle the effects of chemical composition."
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on January 18, 2011 at [https://astrobites.org/2011/01/18/how-does-chemical-composition-affect-star-formation/](https://astrobites.org/2011/01/18/how-does-chemical-composition-affect-star-formation/).*

- **Title**: [The chemo-turbulent fragmentation of the interstellar medium: The impact of metallicity on global star formation](https://arxiv.org/abs/1101.2894)

	- **Author**: S. Walch, R. Wuensch, A. Burkert, S. Glover, A. Whitworth

	- **Institution**: Cardiff University, UK


[![](https://astrobites.org/wp-content/uploads/2011/01/walch.png)](https://astrobites.org/wp-content/uploads/2011/01/walch.png)

*High density, star forming clumps of gas will dissipate in a low metallicity ISM.  This figure shows a 2D cut through the 3D simulated box of gas.  Warmer colors represent higher density regions.  Panel A is for solar metallicity during driven turbulence, B is for low metallicity; panel C is for solar metallicity after the driving has been turned off, D is for low metallicity.  From Figure 2 of Walch et al. 2011.*

Given the concept of the [Jeans mass](https://burro.cwru.edu/Academics/Astr221/LifeCycle/jeans.html) that we've [discussed before on Astrobites](https://astroph.wordpress.com/2010/11/30/formation-of-cold-filamentary-structure-from-wind-blown-superbubbles/), it probably won't surprise you that it's easier for gas to gravitationally collapse into stars where the interstellar medium (ISM) is dense.  In fact, it's long been observed that the rate of star formation is roughly proportional to the gas density squared ([Schmidt 1959](https://adsabs.harvard.edu/abs/1959ApJ...129..243S)).  In detail, though, the star formation rate depends on many other factors, including the temperature of the gas, turbulent motions, the gravitational potential of the surroundings, magnetic effects, ionizing photons from nearby stars, and more.  Incorporating all of these effects into [simulations](https://astroph.wordpress.com/2010/12/11/how-to-simulate-a-fluid/) that can accurately reproduce the evolution of the ISM we observe in galaxies is a major frontier in astrophysics.

These authors start to tackle yet another detail affecting star formation: the chemical composition of the ISM.  The cooling and heating processes that occur in the ISM are highly dependent on metallicity (the abundance of heavy elements).  As one example, gas can cool by radiation from collisional excitation of heavy elements.  Electrons in atoms are excited to higher energy levels by thermal collisions with other atoms.  When those electrons fall back down, they emit photons that effectively carry some thermal energy out of the nebula.  H and He have energy level spacings (excitation potentials) that are typically greater than  the characteristic thermal energy $latex kT$, so they are rarely excited by collisions.  It's the heavier elements, the [nucleosynthetic products of past generations of stars](https://sitn.hms.harvard.edu/sitnflash_wp/2011/01/issue85/), that are then most responsible for this form of cooling.

The authors simulate $latex 4\times10^6 M_\odot$ of gas in 500 pc (1 pc= 3.26 lightyears) boxes starting at 5000 K at either solar metallicity or very lower metallicity ($latex Z=10^{-3} Z_\odot$).  They begin by applying both randomized and coherent driving forces to the box meant to resemble turbulence in the early life galaxies on the scale of about 50 km/s, and then turn the driving force off.  To perform their simulations, the authors modify the [FLASH](https://flash.uchicago.edu/website/information/) code to include many chemical heating and cooling processes.  They do neglect some effects, such as cooling due to the formation of molecular hydrogen.

The simulations suggest that metallicity has only modest effects during the phase of driven turbulence, but has very strong effects once that turbulence is turned off.  They find that the cold regions of the ISM ripe for star formation will disperse once turbulence is gone.  However, the presence of heavy elements seems to stabilize cold, star-forming clumps.  This would seem to explain why some gas-rich dwarf galaxies do not have ongoing star formation; there's plenty of gas, but in these cases the metallicity never got high enough to sustain star-forming clumps.  However, turbulent effects such as interactions with other galaxies or infall of gas could reignite star formation.  The remarkable array of effects relevant to star formation leaves plenty of room for further study.