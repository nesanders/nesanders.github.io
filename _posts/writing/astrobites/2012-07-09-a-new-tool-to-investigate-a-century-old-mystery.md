---
title: "A new tool to investigate a century old mystery"
date: "2012-07-09"
pin: false
categories: [writing, astrobites]
tags: [astrophysics, stars, interstellar medium, spectroscopy, astronomical surveys]
venue: "Astrobites"
description: "The current and next generation of large scale spectroscopic surveys could provide new clues in the hunt for the carriers producing mysterious interstellar absorption features."
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on July 09, 2012 at [https://astrobites.org/2012/07/09/a-new-tool-to-investigate-a-century-old-mystery/](https://astrobites.org/2012/07/09/a-new-tool-to-investigate-a-century-old-mystery/).*

**Title**: [Detections of Diffuse Interstellar Bands in the SDSS Low-resolution Spectra](https://arxiv.org/abs/1207.1573)
**Authors**: Haibo Yuan, Xiaowei Liu
**First Author's Institution:** Kavli Institute for Astronomy and Astrophysics, Peking University, Beijing, China

When astronomers perform [spectroscopy](https://astrobites.com/glossaries/spectroscopy-and-spectral-lines/), they're often looking for specific spectral lines, the "fingerprints" of particular species of chemical elements. By measuring the properties of these features, we can derive all sorts of properties of the population of atoms or molecules that produce them: density, temperature, relative abundance, and more. In the visual regime, there are a handful of likely suspects that produce most of the lines we observe in stellar and galactic spectra: hydrogen, oxygen, nitrogen, and other common ions. But occasionally new spectral features, with wavelengths not corresponding to any known [atomic or molecular transitions](https://hyperphysics.phy-astr.gsu.edu/hbase/hyde.html), are discovered.

In 1922, Mary Lea Heger discovered absorption features at the enigmatic wavelengths of 5780 and 5797 Angstroms while she was a graduate student at [Lick Observatory](https://www.ucolick.org/). Building on her work about a decade later, Paul Merrill used observations of binary stars to demonstrate that these features are produced by interstellar gas and/or dust rather than material in or around the stars, because they do not shift in velocity as the binaries complete their orbits. In the decades since, ~400 similar features at various wavelengths (mostly in the red/optical) have been identified and studied. They have been dubbed "Diffuse Interstellar Bands" (DIBs), but their origin remains a mystery. [Popular candidate carriers include](https://adsabs.harvard.edu/abs/1995ARA%26A..33...19H) molecules such as [polycyclic aromatic hydrocarbons](https://en.wikipedia.org/wiki/Polycyclic_aromatic_hydrocarbon) or impurities in solid dust grains.

In their new work, Yuan and Liu demonstrate the potential for huge spectroscopic surveys to reveal more about the nature of DIBs. They have constructed the largest-ever sample of stellar spectra with detected DIBs using observations from the [Sloan Digital Sky Survey](https://www.sdss.org/) (SDSS). The advantage of SDSS is the huge sample size it offers, but the disadvantage is that the spectral resolution is low, so the shape of the DIB absorption feature (the line profile) cannot be studied.

They search for DIBs using a simple template subtraction method. First, they select 2164 SDSS stars that are likely to show DIBs (candidates) because they have high [extinction](https://spiff.rit.edu/classes/phys445/lectures/atmos/atmos.html) (scattering of light by intervening dust) which indicates copious interstellar material between us and the star (along the line of sight). Second, they construct DIB-free (template) stellar spectra using ~60,000 SDSS stars which have low extinction. For each candidate star, they select a group of template spectra that have similar spectroscopic properties to the candidate.  They identify similar stars based on [estimates](https://www.sdss.org/segue/stellarpars.html) of the temperature, surface gravity, and metallicity of each star. They combine ~100 of the templates to produce a model for what the intrinsic, interstellar absorption-free spectrum of the star should look like. They then subtract the template spectrum from the candidate star and look for DIB features in the residuals.

[![](https://astrobites.com/wp-content/uploads/2012/07/yuan2.png)](https://astrobites.com/2012/07/09/a-new-tool-to-investigate-a-century-old-mystery/yuan2/)

*Illustration of the DIB features at 5780 and 6283 Angstroms in a particular SDSS star. The left two panels show the original stellar spectra (black) and the template for similar stars (red). The right two panels show the residuals from the template subtraction (black) and the fit to the resulting DIB feature (red). From Yuan and Liu Figure 2.*

They successfully identify DIB features in ~2000 of the low resolution SDSS stellar spectra. This yield represents only a first-pass analysis of a sample of ~300,000 total SDSS stellar spectra. They point to the upcoming [DSS-GAC](https://kiaa.pku.edu.cn/DSSGAC/news.html) survey as the dataset for the next generation of DIB studies, as it will assemble spectra of >3 million stars using the [LAMOST telescope](https://lamost.us/legue/).

Beyond exploring the mystery of their origin, Yuan and Liu point to a number of interesting applications for a large database of DIB measurements. They show (as others have previously) that DIB strength in the stellar spectra is correlated with reddening, which makes sense given that these absorption features are produced by the same interstellar medium that scatters and reddens light from background sources. This correlation implies that DIBs could be used to measure extinction when other indicators are not available (e.g. when [colors](https://cas.sdss.org/dr4/en/proj/advanced/color/definition.asp) are unreliable, because the relative flux at different wavelengths is poorly calibrated). Extinction estimates are a necessity for doing science with the background sources, and they could also be used to reconstruct 3D maps of the dust and neutral hydrogen of the Milky Way's interstellar medium to study Galactic structure.