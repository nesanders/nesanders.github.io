---
title: "The Faintest Hint of an Exploding Star"
date: "2011-02-16"
pin: false
categories: ["astrobites"]
tags: ["cosmology", "PCA", "SDSS", "spectroscopy", "statistics", "supernovae", "survey"]
description: "Each galaxy in the sky will probably produce just one or two supernovae in our lifetimes, so you have to be lucky to spot one.  But if you happen to be observing hundreds of thousands of galaxies anyway, you're bound to catch a few."
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on February 16, 2011 at [https://astrobites.org/2011/02/16/the-faintest-hint-of-an-exploding-star/](https://astrobites.org/2011/02/16/the-faintest-hint-of-an-exploding-star/).*

- **Title**: [Spectroscopic Determination of the Low Redshift Type Ia Supernova Rate from the Sloan Digital Sky Survey](https://arxiv.org/abs/1102.1485)

	- **Authors**: K. Simon Krughoff, Andrew Connolly, Joshua Frieman, Mark SubbaRao, Gary Kilper, Donald Schneider

	- **First Author's Institutions**: University of Washington, Seattle



[![](https://astrobites.org/wp-content/uploads/2011/02/krughoff.png?w=300)](https://astrobites.org/wp-content/uploads/2011/02/krughoff.png)

*A demonstration of the authors' technique for decomposing each SDSS spectra into a galactic and a supernova component.  First they fit a galaxy (and/or a quasar, AKA QSO) spectrum and then they see if adding in a supernova template reduces the residuals.  From Figure 3 of Krughoff et al. 2011.*

Even though they can be as bright as entire galaxies, [detecting supernovae is hard](https://sitn.hms.harvard.edu/sitnflash_wp/2011/01/issue85/).  Given that a galaxy like the Milky Way only produces one supernova every few decades, and that they only stay bright for about a month, it's amazing that [over 300 supernovae](https://www.cfa.harvard.edu/iau/lists/Supernovae.html) were discovered last year alone.  Almost all of these were found by surveys that image the same galaxies every few nights looking for bright new point sources.  But occasionally you can get lucky and [serendipitously catch a supernova](https://www.nature.com/news/2008/080521/full/news.2008.847.html) in a galaxy you happened to be observing anyway.  Perhaps 1/4000 galaxies will currently have a bright supernova.  Now imagine you're working for the Sloan Digital Sky Survey, taking spectra of [nearly a million galaxies](https://www.sdss3.org/dr8/scope.php) — don't you think you'll get lucky on a few of them?

The authors of this new work search through the SDSS spectra looking for the superimposed spectral signature of a supernova.  This means that for each spectrum, they must figure out what flux is due to the stars and gas in the galaxy and which flux (if any) is due to a supernova.  They first express each spectrum as a linear combination of galaxy eigenspectra.  The eigenspectra are essentially the most important independent features in any galaxy's spectrum and are determined through a popular linear algebra technique called [Principal Component Analysis](https://www.cse.unr.edu/~bebis/MathMethods/PCA/lecture.pdf) (PCA) .  Then they add in a template spectrum of a type Ia supernova that is anywhere from -20 to 70 days before/after peak brightness to see if it reduces the residuals of the fit.  If it does so by a sufficient amount, they conclude that the galaxy is host to a supernova.  They double check by comparing the total flux in the spectrum to the photometric flux from SDSS imaging of the same galaxy to see if there really was additional flux due to a supernova when the spectrum was taken.

The author's report finding 52 type Ia supernovae in 362,431 optical (3800 - 9200 Å) spectra of z < 0.2 (nearby) galaxies from the 5th data release of SDSS.  The SDSS makes all its data public for any astronomer to investigate — the [8th data release](https://www.sdss3.org/dr8/) just came out last month.  One of the advantages to using this data is that the SDSS team has worked extremely hard to carefully calibrate their spectra to make sure that the spectral shape (relative flux) of the objects they observe are very accurate: a 5% error at worst.

These authors were looking for type Ia supernovae in particular, the type that astronomers used in the 1990s to [discover that the expansion of the universe is accelerating](https://hyperphysics.phy-astr.gsu.edu/hbase/astro/univacc.html).  Despite how important these explosions are to modern cosmology, no one is sure exactly how they are produced.  The two most popular model progenitors are, essentially, a white dwarf star accreting from a main-sequence or giant companion star ("single-degenerate," SD) or the merger of two white dwarfs ("double-degenerate," DD).  The fundamental aspect of both models is that the explosion is triggered when a white dwarf's mass approaches the [Chandrasekhar limit](https://farside.ph.utexas.edu/teaching/sm1/lectures/node88.html).  One way to distinguish these models is to measure how many Ia supernovae are produced by stellar populations of different ages (the "delay time distribution").  These authors' measurement of the type Ia rate at z ~ 0.1 is one datapoint in that plot, but they conclude that supernova rate measurements at high redshift (z~2) will be the true discriminant.  The authors look to a new survey in the SDSS project, [BOSS](https://www.sdss3.org/surveys/boss.php), to deliver these higher-redshift spectra.