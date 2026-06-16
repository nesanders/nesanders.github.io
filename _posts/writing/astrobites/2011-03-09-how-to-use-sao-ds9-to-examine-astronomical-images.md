---
title: "How to use SAO ds9 to examine astronomical images"
date: "2011-03-09"
pin: false
categories: [writing, astrobites]
tags: [ds9, howto, sao, software]
venue: "Astrobites"
description: "The SAO ds9 image viewer is one of the most widely used tools in astronomy.  Read more to learn the basics of ds9 and check out some of the advanced features."
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on March 09, 2011 at [https://astrobites.org/2011/03/09/how-to-use-sao-ds9-to-examine-astronomical-images/](https://astrobites.org/2011/03/09/how-to-use-sao-ds9-to-examine-astronomical-images/).*

This is another in Astrobites' series of articles aiming to introduce important tools used by astronomers in their everyday work.  Earlier Ian tackled the [databases of astronomy](https://astroph.wordpress.com/2011/01/30/the-databases-of-astronomy-organizing-the-knowledge-of-the-field/), and today I'll introduce [SAO ds9](https://hea-www.harvard.edu/RD/ds9/), the terrific image viewer application for the [FITS](https://en.wikipedia.org/wiki/FITS) data format that is ubiquitous in astronomy.  

ds9 (whose name really does [derive from Star Trek](https://hea-www.harvard.edu/RD/ds9/story.html)) can be used for everything from simply inspecting images to making publication-quality figures.  In fact, it has so many features that I can only hope to mention a small fraction of them here.  For more information, consult the excellent and thorough [ds9 user manual](https://hea-www.harvard.edu/RD/ds9/user/user.pdf).

If you have a favorite ds9 feature that I left out, be sure to leave a comment below!

Getting ds9 is simple: it requires no installation, you just need to download the [binary](https://hea-www.harvard.edu/RD/ds9/) appropriate for your operating system.  It's distributed for Linux, Mac OS X, or Windows.

Basic use: opening and navigating an image

[![](https://astrobites.org/wp-content/uploads/2011/03/ds91.png?w=270)](https://astrobites.org/wp-content/uploads/2011/03/ds91.png)

*SAO ds9 dispalying the SDSS g-band image of the Sombrero Galaxy, zoomed to fit and displayed with ZScale.*

First we're just going to experiment with the basics of using ds9.  These are simple tasks that astronomers use constantly to visually inspect images.

As a sample image, we'll use the [Sloan Digital Sky Survey](https://data.sdss3.org/fields.html?search=radec&ra=12%3A39%3A59.4s&dec=+-11%3A37%3A23s&submit=Submit)'s (SDSS) g-band image of the Sombrero galaxy ([M104](https://nedwww.ipac.caltech.edu/cgi-bin/nph-objsearch?objname=sombrero&extend=no&hconst=73&omegam=0.27&omegav=0.73&corr_z=1&out_csys=Equatorial&out_equinox=J2000.0&obj_sort=RA+or+Longitude&of=pre_text&zv_breaker=30000.0&list_limit=5&img_stamp=YES)), which you can [download here](https://data.sdss3.org/returnIms/fits?run=6005&camcol=6&field=85&filter=g).  Download this FITS image and open it via the File > Open menu item in ds9.  You can go to File > Display FITS Header to learn everything you could ever want to know about how this SDSS image was made.

When you first open the image, you'll be greeted by an almost totally black screen.  This is because ds9 will by default show you the full range of the image - from the brightest to the dimmest point - all on a simple linear scale.  Since the sky is mostly dark, almost every pixel will essentially be black.  You'll probably want to change the "lookup table" to something which will better show you the dynamic range of the image.  You can do this using the Scale > ZScale menu option.  

You can go to Scale > Scale Parameters... to see a histogram that will show you the exact brightness profile of the image.  This histogram also allows you to constrict the display range so you can, for example, see the bright center of the Sombrero galaxy.  Additionally, you can play with the colorbar by holding down the right mouse button and dragging the cursor.

[![](https://astrobites.org/wp-content/uploads/2011/03/ds92.png?w=150)](https://astrobites.org/wp-content/uploads/2011/03/ds92.png)

*Using ds9's scale parameters to constrain the display range of the image to highlight the bright center of the Sombrero galaxy.*

You can tell that ds9 is only showing you a small portion of the image by the rectangle drawn in the finder window in the upper right corner of the screen.  By default, it displays the image on a 1:1 pixel scale.  If you want to see the whole image, go to Zoom > Zoom to Fit Frame.  By the way, you can access all of the most common menu options like ZScale and Zoom to Fit from the "buttonbar," which is the double row of buttons right above where the image is displayed.

To practice moving around an image, zoom back in by selecting Zoom > Zoom 1.  You can recenter on any pixel in the image by clicking on it with the middle mouse button (either in the lower display pane or the small finder window above).  Notice that when you mouseover any region in the image, a zoomed-in preview will be displayed in the upper-right corner of the screen.  

When you move your cursor around, also notice that the current [RA/DEC position](https://curious.astro.cornell.edu/question.php?number=112) of your cursor is displayed in the text boxes in the upper-left corner.   Note that ds9 can only calculate these coordinates if your FITS image has a [World Coordinate System](https://fits.gsfc.nasa.gov/fits_wcs.html) (WCS) specified, as all the SDSS images do.  In either case, ds9 will also display the pixel (x,y) coordinates.

Opening multiple images

[![](https://astrobites.org/wp-content/uploads/2011/03/ds93.png?w=272)](https://astrobites.org/wp-content/uploads/2011/03/ds93.png)

*Playing with the colormap parameters of a color mosaic of the Sombrero galaxy with ds9.*

Next let's try opening multiple images at once.  If the images all have WCS data, then we can match them up and compare them directly.  There are all sorts of reasons you might want to do this: for example to compare images taken with different telescopes, at different times, or at different wavelengths (filters).  

With your g-band image still open, download the [SDSS u-band image of the Sombrero galaxy](https://data.sdss3.org/returnIms/fits?run=6005&camcol=6&field=85&filter=u).  Now go to Frame > New Frame.  You can think of a frame in ds9 like a tab in a web browser - it's just a container to open images in.  With the new frame open, go to File > Open to open the u-band image you downloaded.

Navigate to a bright source in one of the two images you have open.  Now match up the position of the two frames by clicking Frame > Match Frames > WCS.  Now you can flip to the other image by typing Tab or going to Frame > Next Frame and you will be able to compare the same spot on the two images.  If you need to, you can also match up the scale and colorbar of the two frames from the Frame menu.  Alternatively, you could go to Frame > Tile Frames to see the images side by side or Frame > Blink Frames to rotate through them.

You should notice that the sources that are bright in the g-band image are dimmer in the u-band and that many faint sources are totally undetectable in the u-band.  This is due to a combination of factors that conspire to make astronomical sources dim in the UV, which the u-band is [just on the edge of](https://cadcwww.dao.nrc.ca/megapipe/docs/cfhtlsugriznew.gif), including atmospheric opacity, the sensitivity of CCDs, and the [effective temperature](https://upload.wikimedia.org/wikipedia/commons/a/a2/Wiens_law.svg) of different sources.

If you download one more image, the [r-band image](https://data.sdss3.org/returnIms/fits?run=6005&camcol=6&field=85&filter=r), you can make a color mosaic!  Go to Frame > New Frame RGB.  A new frame should open, along with a popup window titled "RGB."  You use this window to essentially access the three subframes (R, G, and B) within this color frame.  First click on the "Red" option in the popup and use File > Open to open the r-band image.  Then click on "Green" and open the g-band, and then "Blue" and open the u-band.  You'll have to play with the colormap in each color frame to make something as pretty as the [SDSS mosaic](https://data.sdss3.org/fullJpg?run=6005&camcol=6&field=85).

Basic data analysis & Regions

[![](https://astrobites.org/wp-content/uploads/2011/03/ds94.png?w=300)](https://astrobites.org/wp-content/uploads/2011/03/ds94.png)

*Loading the catalog of 2MASS point sources near the Sombrero galaxy (green circles and table on right) and examining the radial profile of the Sombrero's disk and bulge (below).*

ds9 is chock full of advanced tools that you can use to analyze your data.  I'll just mention a few of my favorites here.

While you have your color mosaic up, let's check the SDSS optical data against an infrared catalog.  You would only expect the sources that are bright and red to show up in the infrared data.  To automatically load the catalog of sources near the Sombrero galaxy from the [Two Micron All Sky Survey](https://www.ipac.caltech.edu/2mass/) (2MASS), go to Analysis > Catalogs > Infrared > 2MASS Point Sources.  ds9 will automatically draw circles around all the infrared sources in your image and also open a table listing them.  Click on an object in the table to pan over to it on the image.  You could even download the actual image from 2MASS by going to Analysis > Image Servers > IPAC-2MASS

The circles ds9 has drawn are called "regions" and are a very powerful plotting tool.  Draw your own regions by selecting the pointer tool from Edit > Pointer and then simply clicking and dragging over the image.  You can go to Region > Shape to pick a different type of region.  Region types include a variety of simple shapes, vectors (arrows), and text (so you can write labels).

One of the most useful region types is the "Projection."  Try it out by selecting it from Region > Shape > Projection and then clicking and dragging across a bright source.  A new window will open displaying the brightness profile of the image along the line you drew.  This is invaluable for taking a quick look at the point spread function of a star, the profile of a galaxy, or a spectrum of dispersed light that was recorded on a CCD chip.

Command line switches and scripting

All of the functions described above are extremely useful for interactively examining data, but it's also possible to automate (script) actions in ds9.  The simplest way is to pass [command line options](https://hea-www.harvard.edu/RD/ds9/ref/command.html) to ds9 when you first load it.  You can also use the [XPA messaging system](https://hea-www.harvard.edu/RD/ds9/ref/xpa.html) (or its [python interface](https://hea-www.harvard.edu/saord/ds9/pyds9/)) to pass commands to an open instance of ds9.

Of course, some of ds9's most powerful and frequently-used functionality comes from its capacity as a [display server](https://hea-www.harvard.edu/RD/ds9/ref/iraf.html) for [IRAF](https://iraf.net/).  ds9 can also interact with the table management software [TOPCAT](https://www.star.bris.ac.uk/~mbt/topcat/).

ds9 is primarily developed by the amazing Bill Joye here at the Harvard-Smithsonian Center for Astrophysics.  The source code for ds9 is freely available.