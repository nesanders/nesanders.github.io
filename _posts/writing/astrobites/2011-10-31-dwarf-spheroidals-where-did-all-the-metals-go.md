---
title: "Dwarf Spheroidals: Where did all the metals go?"
date: "2011-10-31"
pin: false
categories: [writing, astrobites]
tags: [chemical evolution, dSph, galaxies, galaxy evolution, IGM, interstellar medium, Local Group, Metallcity, theory]
venue: "Astrobites"
description: "Some galaxies get all the metals, but the dSphs surrounding the Milky Way seem to have lost"
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on October 31, 2011 at [https://astrobites.org/2011/10/31/dwarf-spheroidals-where-did-all-the-metals-go/](https://astrobites.org/2011/10/31/dwarf-spheroidals-where-did-all-the-metals-go/).*

**Title**: [Metals Removed by Outflows from Milky Way Dwarf Spheroidal Galaxies](https://arxiv.org/abs/1110.5624v1)
**Authors**: Evan N. Kirby, Crystal L. Martin, Kristian Finlator
**First Author's Institution:** Caltech

[![](https://astrobites.com/wp-content/uploads/2011/10/Kirby2-298x300.png)](https://astrobites.com/wp-content/uploads/2011/10/Kirby2.png)

*The total mass of various metals ejected by dSph galaxies of different masses. More massive dwarfs contribute far more metals to the IGM than less massive ones.*

Some galaxies get all the [metals](https://en.wikipedia.org/wiki/Metallicity). Others, like the tiny ($latex \sim10^6~M_\odot$) dwarf spheroidals ([dSph](https://astrobites.com/glossaries/galaxy-and-agn-types/)) orbiting the Milky Way (MW), seem to lose their metals as soon as they're given them. New modeling by Kirby et al. suggests that these galaxies have forfeited more than 96% of the metals produced by their stars to the intergalactic medium ([IGM](https://astrobites.com/2011/07/09/exploring-intergalactic-gas-using-radio-galaxies/)) of the Local Group.

The fundamental problem for the dSphs is their small mass. In all galaxies, supernova explosions are largely responsible for releasing metals into the interstellar medium ([ISM](https://astrobites.com/2011/10/26/lighting-up-simulated-galaxies/)) - the gas reservoir between stars from which new generations of stars are formed. Galaxies like dSphs have a low mass, and hence a shallow gravitational well, making it easy for the metals ejected in supernova explosions to become unbound from the galaxy entirely and fly off into the surrounding IGM.

Kirby et al. estimate the mass of several different elements lost by 8 different MW dSphs over their entire ~10 Gyr lifetimes. They do this in two steps. First, they [measure](https://astrobites.com/2011/06/18/reconstructing-the-past-metallicity-abundances-in-dwarfs/) the present-day metallicity of stars in these galaxies and combine that with an estimate of the galaxy's total mass to estimate the present-day mass of each element. Second, they use a model of [chemical evolution](https://astrobites.com/2010/12/27/origin-of-the-chemical-elements-2/) to estimate the total mass of metals each galaxy has produced over its lifetime. The difference between these two masses is the mass of metals ejected.

The [chemical evolution model](https://adsabs.harvard.edu/abs/2011ApJ...727...79K) describes the abundance of different elements in the galaxy as it evolves over time. The model is effectively a differential equation that balances several factors that we think are important in the life of a galaxy:

	- Infall: Metal-free ("[primordial](https://astrobites.com/2011/10/03/the-consequences-of-stellar-rotation/)") gas slowly flows into the galaxy from the IGM. The authors assume the rate of infall rises quickly when the galaxy is young and slowly tapers off as it ages:
$latex dM_g/dt=A_{\rm in} t e^{-t/\tau_{\rm in}}$

	- Star formation: The amount of new stars that form goes as some power of the existing gas reservoir in the galaxy:
$latex dM_*/dt=A_* M^\alpha_g$The masses of the new stars are distributed according to an assumed [IMF](https://astrobites.com/2011/08/14/a-simple-explanation-for-the-slope-of-the-initial-mass-function/):
$latex dN/dM_* = 0.31M_*^{\alpha_{IMF}}$

	- Enrichment: Some stars explode as supernovae (SNe) and inject metals into the gas in the galaxy. SNe come in two relevant types:

	- Type II, caused by massive stars (>8M☉) that live short lives and explode shortly after any episode of star formation

	- Type Ia, caused by white dwarfs (remnants of longer-lived stars) that explode after longer times


Each type ejects its own nucleosynthetic yield (composition of metals): type IIs primarily yield [alpha elements](https://en.wikipedia.org/wiki/Alpha_process) such as O, while Ias primarily yield iron and its neighboring elements ([iron peak elements](https://en.wikipedia.org/wiki/Iron_peak)).

	- Outflow: Each SN is assumed to drive a fixed mass Aout out of the galaxy.



Each of these factors has free parameters that used to fit them to observations of the present-day metal abundances of stars in each galaxy. Of course, there are also lots of factors this model ignores, including [tidal stripping](https://astrobites.com/2011/01/24/origin-of-tidal-streams-in-the-m-81-group/) by the MW.

One of the most interesting results of this paper is its consequences for the metal content of the IGM. Since the IGM is essentially the leftover gas from the Big Bang that didn't make it into galaxies, you may expect it to have a primordial composition (only H and He).  But [observations of the IGM](https://adsabs.harvard.edu/abs/2010ApJ...721..174M) illustrate that some metals are present.  A leading candidate for enriching the IGM are winds from dwarf galaxies.  Kirby et al. suggest that, if this is the case, it's primarily the larger dwarfs that are responsible.  In the figure above, the authors illustrate that even though small ($latex \sim10^6~M_\odot$) dSphs are more than twice as common and even though smaller dSphs lose a larger portion (>99%) of their metals, the larger ($latex >10^7~M_\odot$) dwarfs are responsible for introducing far more metals into the IGM.