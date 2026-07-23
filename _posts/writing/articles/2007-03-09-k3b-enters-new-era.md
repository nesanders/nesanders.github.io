---
title: "K3b enters new era with approaching 1.0 release"
date: 2007-03-09
pin: false
categories: [writing, article]
tags: [open source software, linux, kde, multimedia, interview]
venue: "Linux.com"
description: A 2007 Linux.com article about the first major release of the KDE CD/DVD-burning and ripping application K3b.
# image:
#   path:
#  alt:
---

*This article was originally published on Linux.com on 2007-03-09 at https://www.linux.com/article.pl?sid=07/03/05/181224 and is no longer hosted or archived elsewhere on the web.*


<p>
One of free software's premiere applications, KDE's CD and DVD burning suite <a href="https://k3b.org">K3b</a>, is about to hit the big 1-0. This milestone touts rewritten DVD video ripping and a refocused interface design. The new release represents a level of feature-completeness and stability that surpasses all previous K3b releases and, perhaps, all free software competitors.
</p>

<p>
For the 1.0 release, K3b founder and maintainer Sebastian Trueg rewrote K3b's DVD ripping front end. It still does not offer the breadth of features that competitor <a href="https://www.exit1.org/dvdrip/">dvd::rip</a> does, but it should prove easier to use for most purposes. Configuration is essentially constrained to video and audio track selection, video rescaling, and bitrate and codec specification. K3b tries to provide sensible defaults so that users need not worry about even these technicalities. Dependencies for K3b DVD ripping include <a href="https://www.videolan.org/developers/libdvdcss.html">libdvdcss</a>, <a href="https://freshmeat.net/projects/libdvdread/">libdvdread</a>, <a href="https://www.transcoding.org/cgi-bin/transcode">transcode</a>, and a video encoder such as <a href="https://www.xvid.org/">Xvid</a>.
</p>

<p>
Trueg refers to K3b 1.0's reworked interface as "media-centric". In past K3b releases, users were presented with a "device-centric" interface, where tasks were executed in terms of devices such as CD-RW or DVD-R drives. For instance, to copy an audio CD, a user might have had to specify a source device as obtuse as "NEC DVD_RW ND-3540A" (the optical drive with the source CD) and something equally as non-descript as the output device. With the new interface, K3b attempts to present these options to the user in a more understandable fashion, so that the "Source Medium" is "Audio CD" and the "Burn Medium" is "Empty CD-R medium". The media-centric interface is a benefit of K3b's new MediaCache, a feature which keeps track of the media in each optical drive.
</p>


![K3b interface screenshot]({{"/assets/img/writing/2007_linuxcom_k3b/Default.png" | relative_url }})
*K3b 1.0 should not look unfamiliar to users of past versions.*

## A new standard

<p>
Though K3b 1.0 is not a revolutionary release, it represents the formal maturation of an already excellent application. Improvements to the interface and video DVD ripping features are noticeable and appreciated. Competitors such as <a href="https://www.nero.com/eng/NeroLINUX.html">Nero Linux</a> and <a href="https://gnomebaker.sourceforge.net/v2/">GnomeBaker</a> have yet to abandon device-centric interfaces. Nonetheless, their interfaces are very similar to K3b's, as a three-pane layout is nearly universal among burning applications (exceptions include <a href="https://graveman.tuxfamily.org/screenshot.php?l=e">Graveman</a> and <a href="https://arson.sourceforge.net/">Arson</a>). Unfortunately, optical disc image formats are not nearly as standardized. K3b users will not be able to import NRG image files created in NeroLinux. K3b only has support for ISO, CUE, Cdrdao TOC, and Cdrecord Clone images. K3b 1.0, even in its release candidate phase, does have stability on par with other applications in the field - while testing K3b 1.0 RC6, I encountered only one crash, which was not reproducible.
</p>

> ## K3b audio capabilities
> 
> Video has stolen the spotlight in K3b 1.0, following improvements to the video DVD ripping feature, but K3b remains just as adept at ripping and burning audio.
> 
> Audio CD Ripping: When you select an audio CD from the media sibedar K3b will automatically download metadata for the disc and display a tracklist in the right-hand file-browser pane. To rip these audio tracks, make sure you have <a href="https://xiph.org/paranoia/">cdparanoia</a> and click the "Start Ripping" button. You will be presented with a CD Ripping dialog where you can select and configure the output filetype. Using various plugins and the "External Audio Encoder" plugin, you can output to nearly any format. You can even drag unripped audio tracks directly into a CD-burning project.
> 
> Audio File Renaming: If you are making a MP3 data CD from a large number of audio tracks, use K3b's file renaming feature to make future browsing easier. With a data disc project full of audio tracks, click the "Rename Audio Files" toolbar button. In the resulting dialog, click "Scan" to establish a list of files to be renamed. You can rename these tracks based on metadata such as artist or album name. Set a renaming pattern and click "Scan" again to rename the files. Click "Start" to commit your changes.
> 
> Audio Track Editing: K3b has a variety of features for editing tracks in audio CD projects. From the right-click context menu you can merge tracks together, split them apart, shave off portions from the beginning or end, or add silence before or afterwards.
> 
> Advanced Burning Features: With K3b, you can normalize the volume on tracks in an audio CD project (this requires the Normalize package) or "overburn" discs past their prescribed storage limit. From the "Advanced" tab of the CD burning dialog, you can even hide the first audio track on a disc so that listeners must seek backwards to hear it. Note that overburning is risky and your success rate will depend upon the media you use.
{: .prompt-info }

<p>
Many small interface features help to set K3b apart from the field of Linux burning applications. K3b automatically detects available disc drives and includes tools to automatically help users identify and correct system privileges and dependency issues. There are undoubtedly hardware and software scenarios for which K3b will not adjust automatically, but I did not encounter them in my testing. K3b's desktop integration is excellent. From Konqueror, users can select folders or files and choose to burn them to audio or data discs in K3b through an option in the right-click context menu. Audio tracks and files can be drag-and-dropped onto a burning project everwhere from the file manager to Amarok. A pleasant-looking, compact on-screen display keeps users aware of progress during burns. Settings for disc burning, audio CD and video DVD ripping, and more can all be saved and recalled later. Filesystem bookmarks can be set within K3b to ease browsing while compiling audio and data CDs.
</p>

<p>
Perhaps the most useful nicety of K3b's interface is extensive What's This? help. Ideally, <a href="https://l10n.kde.org/docs/doc-primer/guidelines.html">What's This? help should be available for any interface item in KDE applications</a> by right-clicking them, but many applications do not implement it. In K3b, nearly all configuration options have What's This? help to succinctly explain the significance of the option to users. Through What's This? help, K3b manages to present a bevy of advanced options such as DAO, TAO, and RAW writing modes and Joilet and Rock Ridge file system extensions without baffling users.
</p>

<p>
Excellent usability aside, K3b's long featurelist may alienate those looking for simplicity. Users looking for a clean and simple disc burning application may rarely use many of the advanced or obscure options that populate menus and toolbars, such as mixed mode and multisession burning, bootable CD burning, and audio CD and video DVD ripping. Those who complain that many KDE applications have cluttered interfaces may not be impressed with K3b, but those who are not phased should find the interface attractive and well-designed. Despite its breadth of features, K3b remains a lightweight program - starting in just a couple of seconds on my hardware. One feature that some may find unfortunately absent is DVD "shrinking", whereby a video DVD written to a dual-layer disc is resized for a single-layer DVD-R while retaining DVD menus and extras. Trueg contacted the author of <a href="https://k9copy.sourceforge.net/">K9Copy</a>, "A Linux DVD shrink", to discuss integrating DVD shrinking functionality in K3b. According to Trueg, this contact "somehow broke", but he hopes to pursue integration again after the 1.0 release.
</p>

<p>
Despite its success, the media-centric interface could be taken further. Its purpose is to make media as easily identifiable to the user as possible, yet there are some respects in which it fails to do this. K3b refers to audio CDs, for instance, as "Audio CD" rather than by the album title. DVDs are referred to by their titles, but even though K3b downloads <a href="https://en.wikipedia.org/wiki/CDDB">CDDB</a> information for audio CDs it does not use this data when referring to the discs. Trueg notes that he would like to implement this feature, but that technical barriers have thus far deterred him. Furthermore, device model names still play a prominent part in the K3b media sidebar while the media title is merely an underheading. Though devices with similar media in them would not be differentiable with device model names, it might be wise to have the model name as the underheading to the media title.
</p>



![K3b DVD ripping screenshot]({{"/assets/img/writing/2007_linuxcom_k3b/RipDVD.png" | relative_url }})
*Clicking "Start" here is enough to fully transform a video DVD into a file suitable for playback on computers or portable devices, but there are plenty of features for advanced users.*

<p>
The rewritten 1.0 DVD ripping system makes use of a specially designed KIO-slave. KIO is a KDE filesystem technology that allows remote or otherwise obstructed files, as well as local files, to be accessed by KDE applications through a single API. KIO-slaves add support for individual file protocols - some as easily recognizable as http or ftp and others more specialized. Trueg explains that K3b's videodvd:// KIO-slave "allows [one] to copy the <a href="https://www.doom9.org/index.html?/dvd-structure.htm">vob files</a> from Video DVDs with transparent decryption (if you happen to live in a country that allows libdvdcss)." Video DVDs are usually protected with <a href="https://www.dvdcca.org/css/">Content Scramble System</a> DRM, which must be decrypted before the video can be played back or copied. There may be legal issues surrounding this decryption in some locales. Once the vob file for the video track is ripped from the dvd using videodvd://, transcode and a video encoder are automatically used to convert the vob into a small, portable format. In past K3b releases, the DVD ripping system demanded that the user rip and encode the vob files from a DVD in separate steps.
</p>


![K3b track merging screenshot]({{"/assets/img/writing/2007_linuxcom_k3b/Merging.png" | relative_url }})
*K3b's interface intelligently handles sophisticated functions such as track merging.*

<p>
Trueg laments that the K3b 1.0 release date has been continually delayed by specific optical device issues. Until then, the sixth release candidate is all but complete and can be <a href="https://k3b.plainblack.com/download">downloaded as source</a> on K3b's website.  K3b's plans for KDE 4 consist mostly of changes to the underpinnings of K3b. Trueg hopes to separate the libraries powering K3b from the interface enough that individual applications such as Konqueror or Amarok can implement their own CD burning interfaces using K3b as a backend. Of course, the current K3b application will only continue to grow and mature.
</p>
