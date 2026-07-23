---
title: "Hugin: stitch perfect panoramas"
date: 2010-09-01
pin: false
categories: [writing, article]
tags: [open source software, linux, photography]
venue: "Linux Format Magazine"
description: A September 2010 Linux Format Magazine article about Hugin, the tool for stitching panoramic photographs.
# image:
#   path:
#  alt:
---

*This article was originally published in print in [Linux Format Magazine Issue 135](https://linuxformat.co.uk/archives?issue=135) on 2010-09.*

*A PDF copy of the article including screenshots and photographs is available [here]({{"/assets/articles/2010_linux_format_135_hugin.pdf" | relative_url }}).*

# Hugin

## Stitch perfect panoramas

More is always better! Guest reality enhancer Nathan Sanders show you how to stitch dozens of photos into one huge image using Hugin.

A picture is worth a thousand words; a good panorama is worth a thousand pictures. The most beautiful scenes in nature just won't fit into your digicam's viewfinder. If you can't squeeze the whole mountain into the frame or if you can't see the forest for the trees, the cross-platform photo-stitching application Hugin is just what you need. Use it to improve on your camera's resolution and field of view by merging many photos into one.

Actively developed since 2003, Hugin is a wxWidgets front-end for a suite of open source panoramic photography tools. It's licensed under the GPL and available compiled for many Linux and BSD distributions, Windows, and Mac OS X.

### Taking pictures

Dust off your old digital camera, install Hugin from the LXFDVD and follow along with this tutorial. Hugin can stitch together any set of overlapping images, but you'll get better results if you follow these photography guidelines:

*   **Overhang each photo** by about 30% to guarantee that you have plenty of common features to help you align the image. Since the edges of your photos are vulnerable to aberrations, larger overlaps can improve uniformity.
*   **Move the camera** as little as possible between shots to minimise parallax error in the final composition. Don't hesitate to shoot handheld: an ordinary tripod won't necessarily be helpful, since you are aiming to rotate around the camera lens rather than the body.
*   **Don't be shy** with your field of view. You'll probably want to crop of the edges of your panorama, so make sure the features of interest are well within the frame.
*   **Time your photos** carefully, since objects moving between shots could produce strange results. A swaying tree branch might produce a minor misalignment if used as a control point, and a car driving through your scene could show up once per frame in your panorama.
*   **Even though** the stitching process in Hugin will automatically correct for the errors of the casual photographer, you'll minimise seams between photos if you use your camera's manual mode to hold the white balance and exposure constant between shots.

Hugin will open the JPEG or TIFF images output by most digital cameras, as well as PNG and HDR files. If you shot RAW images, though, you'll need to convert them before you get started.

To introduce you to Hugin, we'll walk you through the production of two panoramas. First, a simple one-row panorama composed of just a few photos and, second, a 'little planet' stitched from three rows of images and posing a few more challenges.

> **Panoramic projections**
>
> Remember looking at Mercator maps as a child and concluding that Greenland was roughly the size of South America? Using the wrong projection can distort features in your panorama, so scroll through the options in Hugin's preview window and choose wisely! The default projection, equirectangular, simply maps latitude and longitude to an xy grid – this is usually appropriate for long, skinny panoramas. The rectilinear projection is just what a pinhole camera would produce and similar to what your eyes see, but leaves the edges of a wide field looking stretched out. The fisheye projection produces the same distinctive look as the lens type of the same name. Equirectangular panini preserves vertical and radial lines, which gives a great sense of perspective to architectural scenes.
{: .prompt-info }

> **Step by step: A simple panorama**
> 
> ### 1 Load your images
> 
> To begin, open Hugin, select the Images tab and drag and drop your photos in. You want Hugin to sort through your images and line them up how they were in the real world. To do that, it needs to know the points that each of your images have in common: control points. If you don't mind stepping into a patent quagmire, you can find a variety of tools that integrate with Hugin to automatically generate control points. If you have one installed, just click Create control points.
> 
> ### 2 Align the photos
> 
> To identify control points manually, switch to the Control Points tab. Use the drop-down menus to load two adjacent photos and then click on an identical feature in each image and click Add to create the control point. Aim to add at least five control points per image pair and try to spread them out as far as possible. When you're done, switch to the Optimiser tab, select Positions (incremental, starting from anchor) from the drop-down menu, and hit Optimise Now.
> 
> ### 3 Take a peek
> 
> Hit the Fast Preview panorama button on the toolbar to get a quick look at your panorama now that your images are lined up. If you don't like what you see, click on the Straighten button on the Fast Preview toolbar to automatically centre, zoom to fit and straighten out your row of images. We've used the Crop button to shave off the ragged edges of this panorama. To see how well your images are aligned, select Difference in the Blend mode drop-down menu at the bottom of the preview window and then mouse over an overlap. The overlap will appear black if the agreement is perfect, but you'll see coloured outlines if it's a bit off.
> 
> ### 4 One last tweak
> 
> You may still be able to see seams even though the images are lined up perfectly. This is due to slight differences in the white balance and exposure. To fix these issues, turn to the Exposure tab, choose the 'Low Dynamic Range, Variable White Balance' preset from the drop-down menu and hit Optimise Now. To see the results in the preview window, make sure you enable Photometrics on the toolbar. Finally, open the Stitcher tab and click Calculate Optimal Size to set the output resolution. You can choose JPEG, PNG or TIFF output with varying compression under File formats. When you're fully satisfied, click on Stitch Now.
{: .prompt-info }

> **Step by step: A little planet**
> 
> ### 1 Stereographic projection
> 
> Start by loading your images and finding control points. Since we have three full rows of overlapping images, you'll need at least 1,000 control points. Without an automatic generator, this will take a while. Next, optimise for Positions (incremental, starting from anchor) in the Optimiser tab. Open the Fast Preview and choose Stereographic from the projection menu. Your severed feet at the centre of the little planet will have to be removed later with Gimp or another postprocessor.
> 
> ### 2 Bad control points
> 
> Hit the Show Control Points button on the Preview toolbar to draw the links between each image on the preview. Orange dots represent control points, while any long orange lines you see are the result of control point errors. Return to the main Hugin window and click the Show Control Points button on the toolbar, then the Select By Distance button on the resulting dialog. Try entering a distance of 100 and click OK, then Delete. Getting rid of these poor control points will improve image alignment.
> 
> ### 3 Optimise everything!
> 
> If there are long, straight lines in your panorama (such as the edges of buildings), you can force Hugin to preserve them. Switch to the Control Points tab and find the ends of the line in the images. Click on each end, click Add, and select vertical or horizontal from the mode menu at the bottom. Next go to the Optimiser tab, select Everything from the drop-down menu, and hit Optimise Now. Return to the control point table and sort by distance. Decide on some cutoff in distance for deviant points (probably about 30 or lower). Delete those points and hit Re-optimise on the toolbar. Switch to the Exposure tab and click Optimise Now.
> 
> ### 4 Photometric touch ups
> 
> Open the Fast Preview and click Photometrics on the toolbar. If the colour is off on any image, try modifying its photometric parameters by hand. Use the Identify button on the preview window toolbar to determine what its image number is. On the Camera and Lens tab, select the culprit image and open the Photometric tab at the bottom. Modify the Exposure (EV) value to change its brightness, and the Red and Blue multipliers to alter its colour. When you're done, open the Stitcher tab and pick an output size. You can output at the full resolution of your photos but be prepared for it to take hours, even on a modern machine.
{: .prompt-info }

Stitching enlarges the field of view of your camera, but you're remiss if you don't similarly enlarge your camera's colourspace. High dynamic range (HDR) imaging enables you to capture the details in the shadows and the glittering sunlight all at once. To try it out, consult your camera's manual to learn how to manually vary the exposure level of your photos. For every photo you would have taken for a normal panorama, try to take at least three at different exposure levels for an HDR panorama.

To stitch your HDR panorama with Hugin, you only need to change a few steps in your workflow. When you turn to the exposure tab, choose High Dynamic Range, Fixed Exposure from the drop-down menu. To check on your progress, choose the Preview panorama button from the toolbar. This is slower than the OpenGL-accelerated Fast Preview, but there is an Output drop-down menu at the bottom of this preview window that will give you a peek at the HDR output. Beware that the HDR preview uses a simple logarithmic display that's meant for checking which regions have detail preserved, but won't look nearly as pretty as the final panorama.

The last step in producing an HDR panorama is to check the Merged And Blended Panorama option under HDR Merging in the Stitcher tab before you click on Stitch Now. Hugin will output an OpenEXR file that includes all the colour information from your photos at every exposure level. Since this image may have a far larger dynamic range than your monitor or printer, you won't be able to view it without some processing. Open your HDR panorama in Luminance HDR, an open source, cross-platform tone mapping program to convert it to a JPEG or other low dynamic range (LDR) file. Tone mapping involves a calculation to assign colours to the pixels in your image according to one of a variety of different operator algorithms. Experiment with different operators to produce the most realistic reproduction of your scene, or ratchet up the contrast to render a bizarre circus of colours.

### Pretty colours

Even if you were unable to shoot images at varying exposures, Hugin can still help you get the most out of your colourspace. Simply check the Fused And Blended Panorama box under Exposure Fusion in the Stitcher tab before clicking Stitch Now. This turns on Enfuse, Hugin's exposure fusion engine. Instead of merging the input photos into an HDR image, Enfuse simply gives weight to the best-exposed areas during the stitching process. If just one of your photos is over- or underexposed and the adjacent shots look better, Enfuse can help you preserve as much detail as possible.

Imagine trying to construct a panorama by hand, just by laying down a few printed photos on a table and shifting them around to line them up. While this is all that's strictly needed to produce a panorama, Hugin does an awful lot more. The first order of business is geometric correction. When you selected Everything in the Optimiser tab, you were instructing Hugin to do far more to align your images than just sort them out on the table. First Hugin determined the exact field of view of your images, where it had previously relied on the Exif information from your camera. Next, Hugin corrects for radial lens distortion using a third-order polynomial model. Finally, Hugin determines a vector that indicates how many pixels the centre of the CCD deviates from the centre of the lens (the optical axis). Each image is corrected according to these parameters before stitching.

With or without this series of corrections, Hugin is able to smooth over many alignment errors by virtue of the Enblend plugin. Enblend uses a multiresolution spline algorithm to polish up seams between images. First it identifies a transition line roughly down the centre of the overlap, doing its best to avoid features that differ (such as a car driving by). It then blends the images together across that line, using a wide brush for smoothly varying features like sky and a tight one for sharply varying features like grass.

It's not enough to align the features of your images, though; the colours must match up, too. Hugin begins its photometric corrections by recalculating the exposure for each image to optimise their brightness levels. Next Hugin examines the brightness gradients of overlapping images to determine three vignetting correction terms. If you optimise for variable white balance in the Exposure tab, Hugin will also calculate optimal red and blue levels for each image. One last optimisation, the camera response curve, normalises the colourspace of the panorama.

Now that you can stitch images like a pro, let your camera be your paintbrush! With panoramic photography and Hugin, you can capture any scene, no matter how big.
