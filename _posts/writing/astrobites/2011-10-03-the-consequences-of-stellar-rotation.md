---
title: "The consequences of stellar rotation"
date: "2011-10-03"
pin: false
categories: [writing, astrobites]
tags: [gamma-ray bursts, GRBs, Population III stars, Review, stars, stellar rotation, WR stars]
venue: "Astrobites"
description: "What aspects of a star's life are affected by its rate of rotation?  Just about everything!"
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on October 03, 2011 at [https://astrobites.org/2011/10/03/the-consequences-of-stellar-rotation/](https://astrobites.org/2011/10/03/the-consequences-of-stellar-rotation/).*

**Title**: [Rotating massive stars through the ages, with applications to WR stars, Pop III stars and Gamma Ray Bursts](https://arxiv.org/abs/1109.6171)
**Authors**: Andre Maeder, Georges Meynet
**First Author's Institution:** Geneva Observatory, University of Geneva

[![](https://astrobites.org/wp-content/uploads/2011/10/MaederF2-150x150.png)](https://astrobites.org/wp-content/uploads/2011/10/MaederF2.png)

*The curves illustrate that the equatorial radius (x-axis) increases relative to the polar radius (y-axis) for stars with increasing velocity, from left to right. From Georgy et al. 2011.*

Maeder and Meynet begin their detailed review article, summarizing decades of research by a great many astronomers into the effects of stellar rotation, by listing exactly what aspects of a star's life are affected by its rate of rotation. It turns out to be just about everything, from how long it lives to its chemical composition! As a consequence, the physical properties we infer for individual stars from observations will depend on whether or not we model the star with rotation.

The authors identify four primary effects of rotation:

	- The equilibrium configuration: Rotation (angular velocity Ω) adds a centrifugal term to the equipotential surface of the star that varies with lattitude (ν):$latex \Psi(r,\nu)\approx-\frac{GM_r}{r}-\frac{1}{2}\Omega^2r^2\sin^2{\nu}$where Ω may depend on r (differential rotation). This has consequences for the shape and effective (surface) temperature of the star (see figure at right).

	- Mass transfer: Rotation introduces anisotropy to the stellar surface, with consequences for mass loss and accretion. In turn, mass loss and accretion import or export angular momentum to the system, with consequences for stellar rotation.

	- Mixing: Rotation induces circulation currents (see figure below) and instabilities which redistribute heavy elements and angular momentum within the star. In particular, the circulation and turbulence may interact to force heavy elements formed in the core of the star to diffuse down their abundance gradient to the surface. The Eddington-Sweet timescale governing this circulation goes as [tKH](https://c2h2.ifa.hawaii.edu/Tutorial/pages/Definitions/kelvinhelm.htm)Ω-2, so it is very important (~10 Myr) for fast rotating stars.

	- Magnetic fields: Magnetic fields can strongly couple the interior of a star to its surface or even an accretion disk or stellar wind, effectively providing a mechanism for angular momentum transport within the star.  This can lead to solid body rotation (Ω constant with radius) or magnetic breaking, which can slow the rotation speed at the surface. In [radiative regions](https://www.universetoday.com/18465/radiative-zone/) with differential rotation, a [dynamo](https://solarscience.msfc.nasa.gov/dynamo.shtml) may even result.


[![](https://astrobites.org/wp-content/uploads/2011/10/MaederF5-150x150.png)](https://astrobites.org/wp-content/uploads/2011/10/MaederF5.png)

*A schematic illustration of circulation in a 20 solar mass star with an initial rotational velocity of 300 km/s. From Meynet & Maeder 2002.*

Unfortunately, measuring the rotational velocities of stars in order to constrain these theoretical models is not trivial. [Doppler Broadening](https://hyperphysics.phy-astr.gsu.edu/hbase/atomic/broaden.html) can be used to measure a velocity, but we can only observe the line-of-sight component of this velocity (v sin(i)). Moreover, we expect the angular velocity of main sequence stars to decrease as they age and there are complex radiative processes determining the exact shape of the [line profiles](https://astrobites.com/glossaries/spectroscopy-and-spectral-lines/). For example, we expect the line broadening to saturate at the highest velocities because the equator of the star will puff out and darken, meaning that more of the light will come from lower-velocity regions. It would also be nice to know the velocity profile within the star, which [asteroseismology](https://astrobites.com/2011/08/17/investigating-stars-like-our-sun-using-asteroseismology/) may help with.

The authors conclude with a discussion of the implications of stellar rotation for other important astrophysical phenomena.  

[Population III stars](https://astrobites.com/2011/09/12/a-star-that-shouldnt-exist/) form from primordial gas (zero metallicity) and may play a key role in the [epoch of reionization](https://astrobites.com/2011/05/02/bosss-3d-map-of-the-early-universe/).  However, their ability to produce ionizing photons depends on exactly what temperatures/luminosities/masses they may reach.  We expect these to be more extreme than stars in the modern universe (at solar metallicity), but to model them in detail we need to take rotation into account due to the effects described above.  

For another example, take [Wolf Rayet (WR) stars](https://www.cfa.harvard.edu/~pberlind/atlas/htmls/wrstars.html). The hallmark feature of WR stars is the high abundance of heavy elements at their surface, which has traditionally been interpreted as a result of tremendous mass loss: the outer H and He layers of the star get stripped off, letting us see down to the fusion products at the core. However, rotation provides an alternate pathway to form WR stars via mixing, regardless of the mass loss rate. The authors highlight WR stars, in part, because they are the leading candidates to be progenitors of [Type Ibc supernovae and long gamma ray bursts](https://astrobites.com/2011/06/27/a-new-grb-supernova/).