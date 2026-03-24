---
title: "Getting friendly with Pan-STARRS: identifying galaxy clusters"
date: "2011-09-19"
pin: false
categories: [writing, astrobites]
tags: ["Friends of Friends", "galaxy clusters", "optical surveys", "PanSTARRS", "Voronoi Tessellation"]
description: "We can use galaxy clusters for many different science goals, but first we need to figure out where they are."
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on September 19, 2011 at [https://astrobites.org/2011/09/19/getting-friendly-with-pan-starrs-identifying-galaxy-clusters/](https://astrobites.org/2011/09/19/getting-friendly-with-pan-starrs-identifying-galaxy-clusters/).*

**Title**: [ORCA: The Overdense Red-sequence Cluster Algorithm](https://arxiv.org/abs/1109.3182)
**Authors**: D.N.A. Murphy, J.E Geach, R.G. Bower
**First Author's Institution:** Institute for Computational Cosmology, Durham University, UK

[![](https://astrobites.org/wp-content/uploads/2011/09/murphy13.png?w=300)](https://astrobites.org/wp-content/uploads/2011/09/murphy13.png)

*Illustrating ORCA's completeness for detecting simulated galaxy clusters as a function of  distance (redshift) and mass.  Figure 13 of Murphy et al.*

Observations of [galaxy clusters](https://astrobites.com/glossaries/galaxy-and-agn-types/#tclu) have invaluable applications throughout extragalactic astrophysics.  Knowing [how soon massive clusters form](https://astrobites.com/2011/01/07/finding-needles-in-the-cosmological-haystack-with-the-sz-effect/) after the big bang can help constrain models of cosmology.  [Comparing galaxies](https://astrobites.com/2011/01/04/nature-vs-nurture-in-the-evolution-of-elliptical-galaxies/) in clusters to isolated galaxies can help us understand how a galaxy's environment influences its evolution.  Clusters also serve as the universe's largest gravitational lenses, allowing us to study the very distant galaxies behind them.  But to use galaxy clusters for any of this science, first we have to know where they are.

With large imaging surveys such as [SDSS](https://sdss3.org/), it's easy for us to detect hundreds of millions of astronomical objects, but how do we know what they are - and for those that are galaxies, how do we know which are in clusters?  It's not enough to simply look for dense fields of galaxies on the sky, because it's not obvious which of these galaxies are gravitationally bound to the cluster and which are in the foreground or background by chance.  These authors develop a new system called [ORCA](https://orca.dur.ac.uk/) for identifying clusters that they hope to apply to the latest and greatest wide field imaging survey, [Pan-STARRS](https://pan-starrs.ifa.hawaii.edu/public/), now in operation.

Fortunately, we know that cluster galaxies are usually more red than more isolated, "field" galaxies because they tend to be ellipticals - forming the [red sequence](https://astrobites.com/2011/04/05/dissecting-a-merger-between-a-quasar-and-a-green-valley-galaxy/).  They can determine the color of a galaxy by comparing its brightness in different filters observed in the survey.  By using multiple colors, they narrow the selection by breaking the degeneracy between the intrinsic color of a galaxy and its redshift.

Now that they have a sample of red sequence galaxies located near each other (in projection on the sky and in redshift), they can start trying to figure out which really belong to clusters.  To do this, they use a [Voronoi tessellation](https://mathworld.wolfram.com/VoronoiDiagram.html) (VT).  The VT diagram simply draws a polygon around each galaxy such that each point in the polygon is closer to its central galaxy than to any other.  The inverse of the area of each cell is then an estimate of the local density of galaxies at each point.  Finally, they use an algorithm called Friends of Friends to determine if enough small cells are adjacent to each other to be a good candidate for a gravitationally bound cluster.

They tested ORCA by running it on the deepest part of the SDSS survey catalog ([stripe 82](https://www.sdss3.org/dr8/glossary.php#stripe_82_coadd)), which includes about 70,000 galaxies in 7 square degrees.  They find that about 0.5% of these galaxies belong to a total of 97 clusters.  They perform simulations where they test the sensitivity of the algorithm to changes in the galaxy catalog such as omitting certain galaxies, moving clusters to different positions, and checking for false positives by randomizing galaxy positions and colors.

Finally, they run ORCA on a mock Pan-STARRS galaxy catalog created by culling data from the [Millennium Simulation](https://www.mpa-garching.mpg.de/galform/virgo/millennium/).  They can define clusters simply as the members of a single dark matter halo, following ΛCDM cosmology.  In this way, they can assess the completeness, false-positive rate, and other characteristics of their algorithm in a self-consistent way.

[![](https://astrobites.org/wp-content/uploads/2011/09/murphy1.png)](https://astrobites.org/wp-content/uploads/2011/09/murphy1.png)

*Illustrating the procedure ORCA uses to detect galaxy clusters.  From left to right: all galaxies, galaxies determined to be in a small redshift range from their photometry, a Voronoi tessellation, identifying overdense regions in yellow, and finally using Friends of Friends to identify cluster cells in blue. Figure 1 of Murphy et al.*