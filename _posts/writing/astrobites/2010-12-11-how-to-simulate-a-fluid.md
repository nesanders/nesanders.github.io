---
title: "How to simulate a fluid"
date: "2010-12-11"
pin: false
categories: [writing, astrobites]
tags: []
venue: "Astrobites"
description: "In my [last post](https://astroph.wordpress.com/2010/11/30/formation-of-cold-filamentary-structure-from-wind-blown-superbubbles/), I wrote about an interesting application of hydrodynamical simulations to a particular astrophysical problem, so when I saw this excellent introduction to the inner-workings of these simulation codes, I couldn't resist highlighting it."
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on December 11, 2010 at [https://astrobites.org/2010/12/11/how-to-simulate-a-fluid/](https://astrobites.org/2010/12/11/how-to-simulate-a-fluid/).*

- **Paper title:** [Smoothed Particle Hydrodynamics and Magnetohydrodynamics](https://arxiv.org/abs/1012.1885)

	- **Author: **Daniel J. Price

	- **First author's affiliation:**  Monash University, Melbourne, Australia


[![](https://astrobites.org/wp-content/uploads/2010/12/price5.png)](https://astrobites.org/wp-content/uploads/2010/12/price5.png)

*Figure 5 of Price 2010, illustrating a simple SPH simulation: the evolution of a two-dimensional *

In my [last post](https://astroph.wordpress.com/2010/11/30/formation-of-cold-filamentary-structure-from-wind-blown-superbubbles/), I wrote about an interesting application of hydrodynamical simulations to a particular astrophysical problem, so when I saw this excellent introduction to the inner-workings of these simulation codes, I couldn't resist highlighting it.  Because smoothed particle hydrodynamics (SPH) and other fluid simulations underpin our theoretical understanding of nearly every field of astrophysics, and because they also have applications in many other realms of science, engineering, and even Hollywood special effects, having some familiarity with how they work is extremely valuable.

Price walks the reader through the basics of the SPH method.  The fundamental aspect of the code is the mechanism for making measurements of local particle densities, which is done by picking a point in the simulation space and then weighting the distance to nearby particles by a "smoothing kernel" (such as a simple Gaussian function).   Once the density is known, Price shows how you can use elementary Lagrangian mechanics (with a hydrodynamic potential energy term) to solve for the equations of motion that tell you how the particles will move during the next time step of the simulation.  The beauty of this method is that by approximating the local particle density, you will essentially be able to treat the physics of the particles in a real gas (all Avogadro's number or so of them!) with just a few datapoints in the simulation.

Price goes in to more detail in explaining how to properly conserve momentum and energy and how to obey the laws of thermodynamics in a simulation (or how to measure the error introduced when you don't).  He ends his paper by including magnetism in the Lagrangian and delving into the consequences thereof (magnetohydrodynamics, or MHD).  For great fun, you can download [Price's NDSPMHD SPH code](https://users.monash.edu.au/~dprice/ndspmhd/) from his website and use it to follow along with the examples in the paper.

If you find Price's introduction to SPH interesting, there's a whole world of computation waiting for you.  Search the arXiv to learn how theorists incorporate gravity, dark matter, star formation and nucleosynthesis, chemical reactions, and more into their simulations.  Of course, for each layer of complexity astronomers have added to these simulations, you can find even more techniques that have been developed to speed up and improve the accuracy of the computation.