---
title: "Entering the Matrix: Exploring the formation history of a universe on your laptop"
date: "2014-05-13"
pin: false
categories: [writing, astrobites]
tags: ["outreach", "simulations"]
description: "How Dylan Nelson produced amazing, interactive visualizations of the Illustris simulation"
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on May 13, 2014 at [https://astrobites.org/2014/05/13/entering-the-matrix-exploring-the-formation-history-of-a-universe-on-your-laptop/](https://astrobites.org/2014/05/13/entering-the-matrix-exploring-the-formation-history-of-a-universe-on-your-laptop/).*

[![](https://astrobites.org/wp-content/uploads/2014/05/10_compE_small-212x300.jpg)](https://astrobites.org/wp-content/uploads/2014/05/10_compE_small.jpg) Visualization of the Illustris simulation showing the contrast between the dark matter (left) and gas (right) density in the simulation.  Similar views can be made on the Illustris Explorer website.

**

[![](https://astrobites.org/wp-content/uploads/2014/05/DylanNelson-150x150.jpg)](https://astrobites.org/wp-content/uploads/2014/05/DylanNelson.jpg) Harvard Astronomy graduate student Dylan Nelson, architect of the Illustris Project website.

**

Remarkably, there is [a new website](https://www.illustris-project.org) where you can [pan and zoom around a universe](https://www.illustris-project.org/explorer/), as if Google Maps had exquisite data on the density, temperature, and chemical composition of matter throughout space for a hundred million light years.  The site is made possible by the results from [the Illustris project we wrote about yesterday](https://astrobites.org/2014/05/12/something-from-nothing-simulating-our-universe/).  Illustris is a cosmological simulation of truly epic proportions: 10 billion resolution elements, a volume of more than a million Mpc3, and 19 million CPU hours of computing time.

The Illustris website is an exceptional public presence for a scientific project, in a field where the standard practice for releasing scientific research results doesn't go much further than posting a preprint to [the arXiv](https://arxiv.org).  When a public release of a large simulation output or observational dataset is made at all, it's often simply posted as a [tarball](https://en.wikipedia.org/wiki/Tar_%28computing%29) on an ftp site.  This approach puts a substantial burden on other scientists to download, integrate, and interpret the data in order to build on it for their own work.  Expansive and functional interactive tools for exploring or querying large astronomical datasets have been constructed only rarely in the past, as for [the Millenium Run](https://www.mpa-garching.mpg.de/millennium/) and [SDSS](https://www.sdss3.org/dr10/), typically requiring significant new software development and expense.  

So my first thought after seeing the Illustris team's slick website was, how did they build it?  What team of elite Silicon Valley engineers or NSA hackers was cajoled to help this team of astronomers build such an impressive and useful site?

Illustris & the open science movement


[![](https://astrobites.org/wp-content/uploads/2014/05/vorMap.I1820.123.h0.sf20.10.px1440.axes01_all_sz_y_ocR-zeu_mm2.3-5.4_ga13_nB0-300x300.png)](https://astrobites.org/wp-content/uploads/2014/05/vorMap.I1820.123.h0.sf20.10.px1440.axes01_all_sz_y_ocR-zeu_mm2.3-5.4_ga13_nB0.png) Visualization of the strength of the predicted Sunyaev–Zel'dovich effect strength around an AGN in the Illustris simulation volume.

**

It turns out that the interactive tools on the Illustris website are the labor primarily of one man, my fellow Harvard Astronomy graduate student [Dylan Nelson](https://www.cfa.harvard.edu/~dnelson/), and the development was completed in only a couple months.  Dylan credits the recent development and availability of open source web tools, like the javascript mapping library [Leaflet](https://leafletjs.com/) that he used, as making it possible for him to build the site.  These new tools empower astronomers to share their data and results with other scientists, and the public, in fundamentally new and exciting ways.

Dylan sees the offering of interactive tools like the ones he's built as one component of a larger movement towards open science.  Sharing the output and results of scientists' work in a way that other can extract, visualize, and apply to their own research is a critical component of the movement.  Going even further, to make science truly reproducible, scientists should share the analysis code and prescriptions they use to generate the figures in their paper, and the observational data reduction or simulation code that produced the data in the first place.  

Dylan says that the Illustris project is interested in all these aspects of open science, but they necessarily have different timescales for execution.  In upcoming versions of the Illustris website, the team hopes to make the full simulation data available and explorable through their interactive tools.  The data explorer, which is now limited to a single slice of the simulation volume at redshift of 0 (i.e. the modern day universe), would be able to pull data from their ~100 TB simulation output to display the full volume at any time throughout the simulation.  The numerical hydrodynamics code used to run the Illustris simulation, [AREPO](https://www.mpa-garching.mpg.de/~volker/arepo/), will also be made publicly available in the future.


Sharing your research online

Dylan volunteered to take on the task of building the Illustris website.  To do so, he relied on his past web development experience honed on projects including [volume rendering visualizations of hydrodynamic simulations](https://vimeo.com/72435369) and [3D representations of Voronoi Tesellations that run in your browser](https://www.cfa.harvard.edu/~dnelson/webgl/vormesh3.htm).  Dylan's own research within the Illustris group focuses on [tracing gas particles](https://arxiv.org/abs/1301.6753) throughout cosmic time using Monte Carlo methods, so that we can use cosmological simulations to understand how gas accretes, cools, and forms galaxies within dark matter halos.

To young scientists looking to make an impact on the scientific community through interactive projects like the Illustris website, Dylan recommends experimenting and practicing as much as possible.  As science is increasingly dependent on and powered by computational tools, it is increasingly important for students to learn to use those tools--not only to produce scientific results, but also to share those results effectively--in order to prepare for a career in research.  

Dylan suggests practice applying tools like [webGL](https://threejs.org/) and [d3](https://d3js.org/) to interesting projects within your domain of research so that you can deliver your results over the web, as well as in scientific publications.  Like Dylan's past projects, and the [Harvard AY 201b projects](https://astrobites.org/2013/08/09/interactive-astronomy-software-produced-by-graduate-students/) that we previously discussed on Astrobites, these experiments can serve as valuable references and educational tools for others.  And, when applied to significant data releases for scientific projects, your experience can help usher in a new era in astronomy where scientists can easily share data and make comparisons between projects.