---
title: "Astronomy software developer Bill Joye on ds9 7.0"
date: "2012-06-26"
pin: false
categories: [writing, astrobites]
tags: [ds9, software, visualization]
venue: "Astrobites"
description: "We discuss software development in astronomy with Bill Joye and tour the newest version of his ubiquitous program, ds9."
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on June 26, 2012 at [https://astrobites.org/2012/06/26/astronomy-software-developer-bill-joye-on-ds9-7-0/](https://astrobites.org/2012/06/26/astronomy-software-developer-bill-joye-on-ds9-7-0/).*

On June 6th, Bill Joye released the latest version of his popular, open source data visualization software, [SAO ds9](https://hea-www.harvard.edu/RD/ds9/site/Home.html) v7.0.  Bill is a software developer at the [Harvard-Smithsonian Center for Astrophysics](https://www.cfa.harvard.edu/), and I sat down with him this week to discuss the new release of ds9, the future of the program, and his views on software development in astronomy.

First, lets look at the key features in the new ds9 release.  If you're not familiar with the software, you may want to first read the [tutorial for using ds9](https://astrobites.com/2011/03/09/how-to-use-sao-ds9-to-examine-astronomical-images/) we posted last year.  You can also read Bill's own description of the release over at [Astrobetter](https://www.astrobetter.com/saoimage-ds9-version-7-released/).

3D visualization in ds9 v7.0

[![](https://astrobites.com/wp-content/uploads/2012/06/ds9_perseus-300x240.png)](https://astrobites.com/2012/06/26/astronomy-software-developer-bill-joye-on-ds9-7-0/ds9_perseus/)

*Version 7.0 of SAO ds9 displaying a 3D data cube (RA vs DEC vs velocity).  The data is from the COMPLETE CO survey of the Perseus region.*

The major feature addition in this release is 3D data cube visualization.  Data cubes are extensions of the 2D [FITS images](https://en.wikipedia.org/wiki/FITS) astronomers have used for decades, but including a third data dimension that can represent, e.g., wavelength or velocity.  For example, see the screenshot at right demonstrating the [COMPLETE CO survey](https://www.cfa.harvard.edu/COMPLETE/index.html) of the Perseus region.  

As Bill describes it, ds9 has taken a different route to 3D data visualization than many other tools used in astronomy.  Rather than using GPU texture mapping to render slices of a data cube, ds9 uses ray-tracing and [maximum (or average) intensity projection](https://en.wikipedia.org/wiki/Maximum_intensity_projection) to generate a 2D image for display.  The advantage is that the resulting 2D image can be manipulated trivially in real time (applying a new stretch, colormap, etc.), although a disadvantage versus the texture mapping approach is that rotating the scene and re-rendering is computationally intensive (taking of order seconds).  On 64-bit systems the software can open data cubes of arbitrary size (Bill says the record so far is ~20 GB).  Ray tracing is done in parallel and visualization speed should be independent of the data cube size as long as you have enough RAM to load the entire cube into memory (if not, swapping will eat up time). 

Loading a data cube

[![](https://astrobites.com/wp-content/uploads/2012/06/ds9_NGC4151-300x225.png)](https://astrobites.com/2012/06/26/astronomy-software-developer-bill-joye-on-ds9-7-0/ds9_ngc4151/)

*Using ds9 to generate a 1D spectrum from a circular region within a 3D datacube.  The data cube displayed is from Tracy Beck's IFU observations of NGC 4151.*


To test out the new 3D visualization features of ds9, you can [download a small example of a data cube](https://www-int.stsci.edu/~tbeck/data/NGC4151_smallcube_FEII.fits) from [IFU](https://star-www.dur.ac.uk/~jra/integral_field.html) observations of [NGC 4151](https://en.wikipedia.org/wiki/NGC_4151) from [Tracy Beck's site](https://www-int.stsci.edu/~tbeck/).  Launch ds9 v7.0 and then go to "Frame > New Frame 3D."  A dialog named "3D" will open that will allow you to change the azimuth and elevation of the visualization (i.e. rotate the data cube).  Open the data cube using "File > Open" and it will appear in the display frame.  Additionally, a "Cube" dialog will open that will allow you to select a current slice in the 3rd dimension of the data cube (e.g. wavelength).  This does not affect the visualization, but you can perform some analysis tasks within this slice.

Another new feature. in the v7.0 release is the "crop" tool, which you can select from the "Edit" menu.  Draw a box with this tool to restrict the volume in RA/DEC space, or hold Shift or Cntrl while dragging to instead crop the third dimension.  You can perform analysis tasks within the cropped volume.  For example, go to "Analysis > Contours" to plot intensity contours on the selected slice in wavelength space, or go to "Edit > Pointer" and then drag out a circular region to generate a 1D spectrum plot from within that cylinder of the volume.  You can also [use ds9 to send out the data](https://hea-www.harvard.edu/RD/ds9/ref/xpa.html#analysis) in this selected sub-volume to external packages for any additional analysis.

More new features

[![](https://astrobites.com/wp-content/uploads/2012/06/ds9_astrobites-212x300.png)](https://astrobites.com/2012/06/26/astronomy-software-developer-bill-joye-on-ds9-7-0/ds9_astrobites/)

*Demonstrating the new capability in ds9 to open non-FITS images (e.g. pngs), and the color tagging feature.*

In addition to data cubes, ds9 can also now load a host of photo file formats including jpg and png (see image at right).  To do so, go to "File > Open Other > Open Photo" and use the option boxes at the bottom of the file dialog to select the image type.  You can perform all of the same analyses on photos as on FITS images.  In any image loaded in ds9, you can now 'tag' pixels of a certain intensity to highlight regions in an image.  Just click on the colorbar at the bottom of the ds9 window to tag a certain value. This is only a small sample of all the [new features](https://hea-www.harvard.edu/RD/ds9/new.html) in ds9 v7.0.

What does Bill have in mind for the next versions of ds9?  He plans to make a minor, bug-fix release in October or so, and then a new major version in the Spring of 2013.  This will probably involve a move to the latest version of the Tcl/Tk language/toolkit (v8.6) that underpins ds9, native widget support for Mac OS/Cocoa, as well as some new features.  The most tantalizing feature that Bill mentioned to me is possible integration with Astrometry.net, which would make it possible to fit a [WCS solution](https://fits.gsfc.nasa.gov/fits_wcs.html) to any image loaded in ds9 with one click.

Bill emphasized that "feedback is good" - if you have any bug reports of feature requests, don't hesitate to [send him an email](https://hea-www.harvard.edu/RD/ds9/helpdesk.html).

Advice for young astronomers

I asked Bill what advice he would give to young astronomers interested in software development.  It didn't take him much thought to suggest, "take CS 101."  It's widely discussed that astronomy students do not necessarily receive any formal education in programming (see e.g. [this recent AstroBetter thread](https://www.astrobetter.com/whats-our-greatest-weakness/#comment-40953)), even though most of us spend vast amounts of our time coding.  We tend to learn it along the way, picking up the basic skills that are needed to support our data analysis.  

Whether or not you'll ever need to go through the machinations of a professional software developer, Bill says that you will benefit from learning the fundamental principles of [data structures](https://en.wikipedia.org/wiki/Data_structures), [recursion](https://en.wikipedia.org/wiki/Recursion), and other introductory concepts that "make your toolbox bigger."  He says not to worry about which programming language to learn, suggesting instead that students focus on concepts.  Whatever you're using now will be obsolete in 10 years anyway, he says.

Bill also had some comments as a professional software developer in the astronomy sphere.  First, he notes that he spends ~70% of his time working on ds9 in "maintenance" mode.  Every time a new OS or compiler version comes out, he says, "something breaks."  Given that he spends a lot of time thinking about how to interface with other software and data services (ds9 has many features to download catalog and imaging data from science archives, for example), Bill also advocates for keeping things as simple as possible.  If your API is easy to implement, Bill says, more people will use it.  He gives the new, XML-based [SAMP](https://www.ivoa.net/Documents/SAMP/) protocol as an example, which ds9 users can use to interact with other SAMP-aware programs such as [Aladin](https://aladin.u-strasbg.fr/java/FAQ.htx#ToC35) and topcat.

If you're interested in learning more about 3D data visualization, you may also want to check out other packages including [AstroMed](https://www.cfa.harvard.edu/COMPLETE/astromed/), [GAIA](https://star-www.dur.ac.uk/~pdraper/gaia/gaia.html), and [VisIVO](https://www.mpa-garching.mpg.de/~mselig/visivo/visivo.html).  Do you develop or contribute to a software package used by astronomers?  Tell us about your software and share your perspective in the comments below.