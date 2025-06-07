---
title: "Hugin developer launches photographic distortion correction database"
date: 2007-05-25
pin: false
categories: [writing, article]
tags: [open source software, hugin, photography, linux.com]
description: A 2007 Linux.com article about a new database used to correct camera model-specific distortion patterns in photographs when stitching panoramas with Hugin.
# image:
#   path:
#  alt:
---

*This article was originally published on Linux.com on 2007-05-25 at http://www.linux.com/article.pl?sid=07/05/18/1631258 and is still on the web at the [Wayback machine](https://web.archive.org/web/20071217233357/http://www.linux.com/articles/62136).*


The lead developer of the <a href="https://web.archive.org/web/20071217233357/http://hugin.sourceforge.net/">Hugin</a> panorama-stitching application, Pablo d'Angelo, has proposed a new open database for collecting camera lens information that could be used to correct systematic distortion in photographs. The database would be populated by user-submitted calibration data and some data donated from a competitor, but the exact format and licensing of the database are still under consideration. One developer's suggestion would make proprietary software that uses the database pay for the privilege.					        

D'Angelo proposed the database project during the <a href="https://web.archive.org/web/20071217233357/http://www.libregraphicsmeeting.org/">Libre Graphics Meeting</a> earlier this month. <a href="https://web.archive.org/web/20071217233357/http://hugin.sourceforge.net/tech/LGM_2007.pdf">D'Angelo's presentation</a>, &quot;Panoramic imaging - State of the art and future challenges,&quot; outlined a collaborative scheme that would create a database that could be integrated into image processing applications such as <a href="https://web.archive.org/web/20071217233357/http://www.gimp.org/">the GIMP</a>, <a href="https://web.archive.org/web/20071217233357/http://www.digikam.org/">digiKam</a>, and <a href="https://web.archive.org/web/20071217233357/http://www.koffice.org/krita/">Krita</a> to automatically correct distortion for known cameras. D'Angelo's presentation includes several illustrations of the improvement distortion correction can provide to typical images. Continued discussion of the proposal has since taken place between d'Angelo and other developers via email.

Given a centralized repository of calibration data for popular cameras, users of photo management tools could make dramatic corrections to a batch of images with a single click. EXIF data on the photographs under operation could be used to select an appropriate calibration set from the database. The database would require server-side management software and a Web submission system in addition to the &quot;lightweight C library&quot; d'Angelo plans to write for applications to access the database and apply corrections.

## Methods against madness: fixing distortion

The Hugin software will be used to collect calibration data from sample photographs of individual cameras. While stitching panoramas, combining individual photographs taken in spatial sequence into a single large image, Hugin employs <a href="https://web.archive.org/web/20071217233357/http://wiki.panotools.org/Lens_correction_model">techniques for correcting image distortion</a> courtesy of the <a href="https://web.archive.org/web/20071217233357/http://panotools.sourceforge.net/">panotools</a> project. These distortions worsen the appearance of seams between constituent photographs present in the final stitched image, so correcting for them is especially important for panoramic imaging. The primary forms of distortion addressed are:

![Distortion correction animation]({{"/assets/img/writing/2007_hugin_distorion/Demo.gif" | relative_url }})
*Distortion correction*

<ul>

<li>
<strong>Radial distortion:</strong> An effect where the magnification at any given point in an image varies as measured radially from the center. The panotools method discerns three parameters for correction from an image taken at a given <a href="https://web.archive.org/web/20071217233357/http://www.dpreview.com/learn/?/key=focal+length">focal length</a>. For the database, calibration parameters for several focal lengths would be noted, and corrections at other focal lengths could be interpolated.
</li>

<li>
<strong>Chromatic aberration:</strong> The bane of photographers, astronomers, and others dealing with lenses for centuries, <a href="https://web.archive.org/web/20071217233357/http://www.dpreview.com/learn/?/key=chromatic+aberration">chromatic aberration</a> is caused by different wavelengths of light coming to focus at slightly different points and producing multicolored fringes on the edges of objects in images. Although calibrations must be determined for both the red and blue channels at individual focal lengths, only one parameter is necessary for correction.
</li>

<li>
<strong>Vignetting:</strong> Causes the brightness of an image to vary radially from the center. Hugin requires two or three images taken at a given focal length and <a href="https://web.archive.org/web/20071217233357/http://www.dpreview.com/learn/key=aperture">aperture</a> to identify three correction parameters. The large number of samples required will likely make this the most difficult effect to gather calibration data for.
</li>
</ul>

Even in the relatively mild example of distortion correction shown here, from the memorial of Marie Christine of Austria in Augustinerkirche, Vienna, you can clearly see the effects of vignetting and radial distortion. Notice how the corners are darker and the large triangular shape bulges slightly in the uncorrected sample. Click the image for a larger animated GIF.

Because these parameters all depend on the focal length of the camera, it will be important to gather samples at varying focuses. D'Angelo suggests that the database concentrate on gathering data for relatively large focal lengths, where the majority of photographs are taken. Users operating on macroscopic, close-up photographs may be less accommodated by the lens database.

## Logistics

Just days after it was proposed, d'Angelo's project has attracted encouraging attention. KDE developer Boudewijn Rempt has already expressed <a href="https://web.archive.org/web/20071217233357/http://www.valdyas.org/fading/index.cgi/2007/05/08#hugin">interest in integrating the database into the image editing application Krita as an &quot;adjustment layer or effect mask.&quot; Venerable panoramic photographer and software developer </a> <a href="https://web.archive.org/web/20071217233357/http://www.yuvallevy.com/">Yuval Levy</a> has stepped forward to &quot;build the online tools to enter and manage the database,&quot; hoping to complete a preliminary version by June. Others on the <a href="https://web.archive.org/web/20071217233357/http://lists.freedesktop.org/mailman/listinfo/create">FreeDesktop.org CREATE mailing list</a> have also participated in the <a href="https://web.archive.org/web/20071217233357/http://www.nabble.com/Lens-correction-database-tf3724554.html">planning of the project</a>.

While a committed development community seems to have emerged, consensus on project specifics has yet to be reached. Of particular interest will be the licensing of both database content and the software infrastructure to be built for its management. A strong proposal from Levy suggests a GPL license for the database management and Web submission software to ensure that it is maintained as Free Software, while distributing the code for application integration as LGPL so that it may be used within proprietary applications.

For the database content, clearly the most valuable aspect of the project, Levy suggests a different scheme. He stresses the importance of assigning ownership of the content to a single body to avoid copyright disputes. A warning on the Web submission system would make users aware that they must cede control of their submission to the database operator. Once assimilated, the content would be freely provided to open source applications for non-commercial use, while commercial users of the database would have to pay. Levy suggests a small flat fee for commercial open source software and a &quot;negotiable&quot; payment structure for proprietary users. Levy assures that any money collected would be used for project expenses and to encourage development through bounties.

The format for storing lens-specific calibration sets in the database has been extensively discussed. D'Angelo has proposed an XML format for calibration parameters, identifying the calibration set by camera/lens model and mount type. Each calibration set would be attributable to a specific contributor, complete with contact information. Levy suggests that this contact information will be stored internally in the database and provided upon request, but not distributed during typical correction operations. The contributor would be asked to submit source images (probably a minimum of three), the Hugin .pto project file used in collecting the calibration set, and as much extraneous information about the source photographs as possible.

Submitter commentary will play a large role in the lens calibration database. As with Wi-Fi adapters or TV tuner card chipsets, individual camera models that are expected to share a common lens may actually house one of many, depending upon manufacturing period. D'Angelo suggests trying to identify which lens a specific camera uses by associating serial number ranges with each possible lens. Serial numbers are an optional component of EXIF data that some manufacturers choose to include in photographs. Levy contends that such ranges would not be reliable and the system would have to default to user judgment.

Current plans are to host and distribute the database and appropriate software through the Hugin page on SourceForge.net. Recent suggestions have posed the idea of integrating submission forms into Hugin itself and automating the calibration process. D'Angelo has raised concerns that users stitching panoramas with Hugin may not necessarily be dealing with samples appropriate for determining lens correction parameters. He suggests that the manual Web upload system be implemented first and the automatic system be considered later.

## The competition

D'Angelo describes his project as a &quot;free alternative to the <a href="https://web.archive.org/web/20071217233357/http://epaperpress.com/ptlens/">PTLens</a> database.&quot; PTLens began as an open database, but is now closed, encrypted, Windows-only software sold for $15. D'Angelo has some familiarity with the old, open version. When the author of PTLens, Thomas Niemann, opted to transform his work into a closed project about a year ago, d'Angelo built the <a href="https://web.archive.org/web/20071217233357/http://wiki.panotools.org/Fulla">fulla</a> tool to apply batch corrections to photographs in Hugin using the older PTLens version, which is still made available.  Now Niemann has granted d'Angelo the ability to integrate the older PTLens content into his new lens correction database.

The PTLens content will give d'Angelo's database an excellent starting point, but it has several limitations. Because PTLens was closed over a year ago, the content only covers cameras made before that point -- although it does have fairly comprehensive coverage of older cameras.  Moreover, the PTLens content only provides data on radial distortion and cannot be used to correct vignetting or chromatic aberration.

<a href="https://web.archive.org/web/20071217233357/http://www.dxo.com/intl/photo">DxO</a> also operates a proprietary database that goes beyond the scope of either the PTLens or d'Angelo's project. It includes calibration data for lens softness and perspective, in addition to features that go beyond systematic distortion correction. DxO's Optics Pro 4 product is only available for Windows and Mac OS X and costs between $79 and $299.

D'Angelo's project already has strong direction, developer commitment, and even some data to start out with. Nonetheless, it could take years to amass a comprehensive database applicable to the hundreds of camera models in popular use around the world, even with substantial user contribution. Before that time, expect many Free Software image editing applications to begin incorporating d'Angelo's work. 

Those interested in learning more about the database project or contributing are encouraged to join the FreeDesktop.org CREATE mailing list.	
