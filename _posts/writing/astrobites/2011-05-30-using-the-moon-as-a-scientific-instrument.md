---
title: "Using the Moon as a scientific instrument"
date: "2011-05-30"
pin: false
categories: [writing, astrobites]
tags: [binary stars, diffraction, Moon, observations]
venue: "Astrobites"
description: "These authors use the surface of the Moon to distinguish between binary star systems separated by just thousandths of an arcsecond - far smaller than can be resolved by traditional imaging."
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on May 30, 2011 at [https://astrobites.org/2011/05/30/using-the-moon-as-a-scientific-instrument/](https://astrobites.org/2011/05/30/using-the-moon-as-a-scientific-instrument/).*

- **Paper title:** [Lunar occultations of 184 stellar sources in two crowded regions towards the galactic bulge](https://arxiv.org/abs/1105.4816)

	- **Authors:**  A. Richichi, W.P. Chen, O. Fors, P.F. Wang

	- **First author's affiliation:** National Astronomical Research Institute of Thailand


One of the persistent frontiers in astronomical observations is [angular resolution](https://en.wikipedia.org/wiki/Angular_resolution). We need extremely high angular resolution to resolve very small features on the sky (e.g. a [protoplanetary disk](https://astrobites.com/2011/03/11/review-article-protoplanetary-disks-and-their-evolution/) around a young star or [a galaxy far, far away](https://astrobites.com/2011/02/17/details-at-a-distance/)), but we're limited by natural factors such as [turbulence in the Earth's atmosphere](https://en.wikipedia.org/wiki/Astronomical_seeing) and [the laws of diffraction](https://hyperphysics.phy-astr.gsu.edu/hbase/phyopt/raylei.html).

These authors figure that if you can't eliminate natural barriers, use them. They have used the Moon as a scientific instrument via the [lunar occultation technique](https://spiff.rit.edu/richmond/occult/bessel/bessel.html) (LO). LO allows observations to be made at an angular resolution higher than the diffraction limit of a given telescope - milliarcseconds vs tenths of an arcsecond. The basis of the technique is that a disc of a given angular diameter (e.g. a star) moving behind a sharp wall (e.g. the limb of the Moon) creates a particular diffraction pattern. This diffraction pattern can be observed as a light curve (intensity vs. time) as the moon passes in front of the object and then compared to models to estimate the parameters of the transiting system.  Note that this observational procedure sounds similar to that of [gravitational microlensing](https://astrobites.com/2011/03/03/dark-matter-with-microlensing/), but there are no general relativistic effects going on here - merely diffraction optics.

The Moon is an [ideal occulter](https://www.lpi.usra.edu/decadal/leag/RichardSMillerLOCO.pdf) because its dense [regolith](https://www.universetoday.com/59106/regolith/) and lack of atmosphere gives it a very sharp edge. The drawback of LO is that Earth-based observers don't get to choose which objects the moon passes in front of, and that we can only recover one-dimensional spatial information because it relies on the straight-line motion of the moon. Observing the occultation from multiple locations or observing the same object occulting multiple times can provide additional information.

[![](https://astrobites.org/wp-content/uploads/2011/05/richichi2.png?w=258)](https://astrobites.org/wp-content/uploads/2011/05/richichi2.png)

*A demonstration of the lunar occultation method for a binary star system. The top-most panel shows the observed lightcurve. The middle panel shows the ligh curve with two different models subtracted: a single-star model (above) and a binary-star model (below). The binary star model gives a much better fit to the data. The lower panel shows a model-independent reconstruction of the brightness profile of the system, clearly displaying two stars. Figure 2 from Richichi et al. 2011.*

To maximize the number of occulting sources, the authors chose to observe the Moon as it passed through the star-rich Galactic bulge (the center of the Milky Way galaxy). These authors used the [ISAAC near-infrared imager](https://www.eso.org/sci/facilities/paranal/instruments/isaac/) on the 8.2m Melipal telescope of [ESO's Very Large Telescope(VLT)](https://www.eso.org/public/teles-instr/vlt.html). They read out ISAAC's detector every 3.2 ms to achieve extremely high temporal resolution observations to sample the diffraction pattern of the source well. In total, they collected ~5000 frames each for 184 objects. To reduce systematic effects, the authors have developed sophisticated data analysis routine that even involves correcting for the shape of the lunar limb.

The authors discover 20 new binary star systems and 4 new triples through their LO observations. For example, they identify a binary companion to HD 165530, which was not detected even by the extremely accurate [Hipparcos astrometry mission](https://www.rssd.esa.int/index.php?project=HIPPARCOS). In an era where we're observing individual stars with [painstaking precision to tease out orbiting planets](https://astrobites.com/2011/05/25/kepler-10c-a-newly-validated-kepler-planet-in-a-multiple-system/), it's important to understand the properties of binary star systems. In the future, [long-baseline interferometry](https://en.wikipedia.org/wiki/Very_Long_Baseline_Interferometry) (LBI) will provide another means for extremely high angular resolution observation.