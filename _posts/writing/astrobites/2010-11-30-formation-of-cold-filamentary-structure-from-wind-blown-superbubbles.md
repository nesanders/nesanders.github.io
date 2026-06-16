---
title: "What happens in the vast voids between stars in galaxies like the Milky Way?"
date: "2010-11-30"
pin: false
categories: [writing, astrobites]
tags: [interstellar medium, simulations, star-formation]
venue: "Astrobites"
description: "We often think of galaxies as collections of stars, but this simple picture omits (among other things) the fascinating interstellar medium (ISM)!"
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on November 30, 2010 at [https://astrobites.org/2010/11/30/formation-of-cold-filamentary-structure-from-wind-blown-superbubbles/](https://astrobites.org/2010/11/30/formation-of-cold-filamentary-structure-from-wind-blown-superbubbles/).*

- **Paper title:** [Formation of Cold Filamentary Structure from Wind Blown Superbubbles](https://arxiv.org/abs/1011.5751)

 	- **Authors:** Evangelia Ntormousi, Andreas Burkert, Katharina Fierlinger, Fabian Heitsch

 	- **First author's affiliation:** University Observatory Munich, Germany


We often think of galaxies as collections of stars, but this simple picture omits (among other things) the fascinating interstellar medium (ISM)!  At the most basic level, clouds of (mostly hydrogen) gas exist in the ISM that may condense gravitationally and fragment into stars, which then evolve and produce winds and explosions that shape the next generation of star-formating clouds. In the past several decades, astronomers have made tremendous strides in understanding the basic picture of this gas feedback cycle that occurs in galaxies. Fundamentally, we expect the conditions for star formation in a cloud to simply depend on the temperature and density distribution of gas - this is the concept of the [Jeans mass](https://burro.cwru.edu/Academics/Astr221/LifeCycle/jeans.html). However, the specifics of this process are not well understood, and you can imagine a myriad of different ways in which the local details of the star formation rate, the mass loss rate of evolved stars, the supernovae rate, turbulence, cooling processes, and other factors can affect the general picture. In just the past decade or so, the advent of a new generation of numerical hydrodynamic simulation codes built to take advantage of ever-growing computational power has provided a new tool to study this cycle in terrific detail.

[![](https://astrobites.org/wp-content/uploads/2010/11/samplefigure.png?w=300)](https://astrobites.org/wp-content/uploads/2010/11/samplefigure.png)

*From Figure 2 of Ntormousi et al., this plot illustrates the effects of two colliding super bubbles on the density of the interstellar medium (without initial turbulence). The left panel shows the bubbles before collision and the right panel is a snapshot taken 4 Myr later. The x and y axes are in parsecs.*

The authors' most general result is that winds from massive stars and supernovae seem to naturally produce high-density filaments in the structure of the interstellar medium. These filaments don't sit still - they merge with other objects and split over timescales much shorter than that of star formation. This is a remarkable deviation from the classical view of the star-forming molecular cloud as a sphere of gas that sits isolated in space until it finally collapses into stars. In three dimensions, they speculate that these filaments would probably look more like sheets, but may condense into actual one-dimensional filaments under self-gravitation. This effect is even more pronounced if the medium has some initial turbulence (random bulk motion of gas). The authors focus on several examples of very high-density clumps forming in their simulations. By looking for rotation in these clumps, they identify possible candidates to form protostellar disks that may be the progenitors of planetary systems.

The authors perform their simulations using a freely available simulation code called RAMSES, written in Fortran. This code and others like it take as input a theoretical box of particles with some specified initial conditions and then apply the physics of bulk fluid motion (hydrodynamics). The authors have turned off some of the features of the code, including adaptive mesh refinement (which would zoom in on the most interesting regions of the particle box for more detailed calculation), self gravitation, and magnetism and they ran the simulation in only two dimensions. The authors specified some assumptions about the composition of the gas medium and the rate of winds over time and implemented two different initial conditions: one with a uniform interstellar medium and one with random velocity perturbations (turbulence).

In addition to self-gravitation, magnetism, a third dimension, and higher computational resolution, the authors note several aspects of the gas feedback cycle that are left for future simulations to investigate. To pick just one example, they do not incorporate the effects of ongoing star formation that would inject yet more wind activity into the cloud over time. They have also only explored one set of initial conditions - they do not consider how varying the distance between OB associations or the number of massive stars would affect the results.