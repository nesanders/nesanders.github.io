---
title: "Google Summer of Code 2007 Conclusion"
date: 2007-09-19
pin: false
categories: [writing, article]
tags: [open source software, google summer of code, linux weekly news]
description: The final entry in a 2007 series for LWN about the Google Summer of Code.
# image:
#   path:
#  alt:
---

*This article was originally published in [LWN](https://lwn.net/Articles/250412/) on 2007-09-19.*

# Google Summer of Code 2007 Conclusion


<i>
This is the sixth and final piece in LWN's series of Google Summer of Code (GSoC) 2007 articles. The first five articles covered the <a href="https://lwn.net/Articles/230858/">program launch</a>, <a href="https://lwn.net/Articles/236142/">Ubuntu's projects</a>, the <a href="https://lwn.net/Articles/238987/">OpenMRS organization</a>, the student who tackled <a href="https://lwn.net/Articles/242043/">Direct3D 10 support for Wine</a>, and <a href="https://lwn.net/Articles/246196/">Mozilla's projects</a>.
</i>

When LWN contacted Leslie Hawthorn, Google's Open Source Program Coordinator, <a href="https://lwn.net/Articles/230858/">back in April</a>, Google had just announced the names of the 905 students who they would be sponsoring to work for established open source projects for the summer of 2007.  For the program's third year, Google was experimenting with some administrative changes intended primarily to ease the student payment process (each student is given $4500, over three installments) and help them bond with their mentoring developers and organizations.  The program ended on August 31st with the deadline for final student and mentor evaluations, and the participants seem to have had another generally successful year.  Again, we look to Leslie Hawthorn for more information about the effects of those changes, the outcome of the final evaluations, the GSoC 2008, and some of the individual students and projects that LWN hasn't had a chance to cover yet this summer.

<b>LWN:</b> Google made several changes to the Summer of Code from the previous year, such as a new payment mechanism and alterations in the program timeline to give students and mentors more bonding time.  Can you evaluate the impact that these changes have had on the program?  Will you revert any of these changes for next year's program, or are all of them here to stay?

<b>Hawthorn:</b> Overall we've gotten good feedback that adding the community bonding period was helpful.  A few students mentioned it gave them some no-pressure time to just idle in IRC and learn about how the project worked.  Another few commented that the time gave them the opportunity to read up on the latest research in their project area.  I'm hoping that the extra time means more projects end up with long-term contributors.

Our new payments system also meant that we were able to get 89% of our students paid within five days (and usually 48 hours), rather than weeks.  That's a great improvement, but we can always do better.

<b>LWN:</b> From what I understand, students were asked to evaluate their mentors, as well as it going the other way round.  What percentage of them received passing evaluations?  What did you learn from those evaluations?

<b>Hawthorn:</b> We didn't ask students whether their mentors passed or failed, but I think that's not a bad idea.  Most students were very pleased with their interactions with their mentors.  I even had one student who failed ping me to let me know that he thought his mentor did a good job, but that the project just wasn't right for him.

<b>LWN:</b> What trends can you identify in the evaluation data?  How have the evaluation success rates changed over the three years that the Google Summer of Code has been operating?

<b>Hawthorn:</b> Both students and mentors noted that they wish they had more time to devote to the project.  That's a common complaint I hear from most open source developers, though.

A few newer organizations had lower success rates than we'd like, but that's somewhat to be expected.  Students who had previous open source experience were more likely to pass, but other than that there are no clear trends that stick out in my mind at this time.

[The success rates over the years] have remained pretty consistent.

<b>LWN:</b> Are there any particular students, mentors, or organizations which you think deserve special attention?

<b>Hawthorn:</b> I think all of the projects are special, but a few do leap out at me as particularly noteworthy:

I'm a big fan of the <a href="https://code.google.com/soc/2007/openmrs/about.html">OpenMRS project</a>, but you've already profiled them in a previous article.

<a href="https://code.google.com/soc/2007/cc/about.html">Creative Commons</a> had some interesting projects this year, like <a href="https://code.google.com/soc/2007/cc/appinfo.html?csaid=1B2CE25E80A89A15">the work of Jason Kivlighn</a>, mentored by Jon Phillips.  Jason worked on indexing embedded license claims, which resulted in many improvements to <a href="https://wiki.creativecommons.org/Liblicense">Liblicense</a>, a C library that produces licensing information based on the specifications of calling libraries and programs. In addition to generating text for specific licenses, Liblicense allows an application to enumerate which licenses are currently available and provide descriptive text for each license, and for license features.

Another cool project was the work done by <a href="https://code.google.com/soc/2007/drupal/appinfo.html?csaid=3A264F10AC34134E">Andrew Morton</a>, mentored by Angie Byron.  Andrew worked on creating a project quality metrics system for <a href="https://code.google.com/soc/2007/drupal/about.html">Drupal</a> modules, helping Drupal developers choose which modules would be most effective for them to use when creating Drupal sites.  As there are *many* modules contributed to Drupal, Andrew's work has made developers' lives much easier.

<b>LWN:</b>  Thank you very much for your time.


With about <a href="https://googlesummerofcode.blogspot.com/2007/09/results-are-in.html">733 successful projects</a>, it is impossible to discuss every student's work.  Over the past five months, LWN has reported on those GSoC projects that we hoped would be most interesting to our readership, but there have certainly been many qualified projects that slipped through the cracks.  We'll try to bring justice to a few of them here:

<a href="https://code.google.com/soc/2007/abisource/about.html">AbiSource</a>: Philippe Milot's <a href="https://code.google.com/soc/2007/abisource/appinfo.html?csaid=B4EB7E1C095D791C">OpenXML Importer</a>, mentored by     Kamran Khan.

Milot developed a plugin for AbiWord that imports documents in Microsoft's OpenXML format.  According to the last update made on <a href="https://www.abisource.com/twiki/bin/view/Abiword/OpenXMLImport">Milot's project wiki</a>, the plugin is capable of importing text with some associated formatting, though advanced features such as styles had not yet been implemented.

<a href="https://code.google.com/soc/2007/debian/about.html">Debian</a>: Ian Haken's <a href="https://code.google.com/soc/2007/debian/appinfo.html?csaid=24C7766EC4271F15">Automated Upgrade Testing Using QEMU</a>, mentored by Lars Ivar Wirzenius

Haken built VLOSUTS (Virtual Live Operating System Upgrade Test Suite), software which will help Debian developers make sure that their latest package set will not cause errors for upgrading users.  VLOSUTS builds a custom image of a Debian installation with a user-defined set of packages, runs the installation in virtualization software (Zen, KVM, and Qemu are supported), attempts to upgrade a specified list of packages from a particular repository, and then reports any errors.  It is interesting to note that the Qemu backend may make it possible to test <a href="https://qemu.org/status.html">several architectures</a> at once.  As of the <a href="https://www.ianhaken.com/blog.php?id=33">most recent post on Haken's blog</a>, the project was "just out of alpha" and is available to build as a package.

<a href="https://code.google.com/soc/2007/debian/about.html">Debian</a>: Cameron Dale's <a href="https://code.google.com/soc/2007/debian/appinfo.html?csaid=46454031B77ABCBA">BitTorrent Proxy for Debian Archive</a>, mentored by Anthony Towns

Dale created <a href="https://debtorrent.alioth.debian.org/">DebTorrent</a>, software that should significantly decrease the bandwidth required to host a mirror of a Debian repository.  DebTorrent harnesses a modified version of BitTorrent, altered to meet the demands of software repositories, which contain far more files, often of far smaller size and updated more frequently than the protocol is usually applied to.  <a href="https://www.camrdale.org/blog/posts/Aug-25-2007.html">Dale's most recent status report</a> indicates that the software is in working order.  It appears that CPU usage is moderate while downloading packages with DebTorrent, though memory usage needs immediate attention.

<a href="https://code.google.com/soc/2007/freebsd/about.html">FreeBSD</a>: Ivan Voras's <a href="https://code.google.com/soc/2007/freebsd/appinfo.html?csaid=60CD2756E99192BA">Graphical installer for FreeBSD</a>, mentored by Murray Stokely

Voras's <a href="https://wiki.freebsd.org/finstall">finstall</a> modular and extensible LiveCD installer is meant to be an eventual replacement for the six-year old sysinstall installer.  The new installer is meant to be usable by the release of FreeBSD 7.0, but will likely not be the default and will only support the i386 and amd64 architectures.  Voras has released an <a href="https://blogs.freebsdish.org/ivoras/2007/08/29/finstall-alpha-version/">alpha version of finstall</a> (<a href="https://wiki.freebsd.org/finstall/Amnesiac">screenshots</a> are, of course, available) which is only usable on an unparitioned system.

<a href="https://code.google.com/soc/2007/gnome/about.html">Gnome</a>: Raphael Nunes da Motta's <a href="https://code.google.com/soc/2007/gnome/appinfo.html?csaid=4F64D394968BB092">Voice recognition applet to control desktop</a>, mentored by Nickolay Shmyrev

Da Motta's <a href="https://live.gnome.org/GnomeVoiceControl">Gnome-Voice-Control</a>, only at version 0.2, is already an impressive usability tool, with the potential to be a phenomenally fun toy and time saver.  Look to <a href="https://raphaelnunes.wordpress.com/">da Motta's blog</a> for video demonstations of using the tool to run programs and manipulate windows and menus.  The software uses a <a href="https://cmusphinx.sourceforge.net/html/cmusphinx.php">CMU Spinx</a> speech recognition backend and is currently only available for English.

<a href="https://code.google.com/soc/2007/kde/about.html">KDE</a>: Rivo Laks' <a href="https://code.google.com/soc/2007/kde/appinfo.html?csaid=1EF6392A4C8AEADD">Icon cache for KDE</a>, mentored by Aaron Seigo

Laks' <a href="https://api.kde.org/4.0-api/kdelibs-apidocs/kdeui/html/classKIconCache.html">KIconCache</a> substantially reduces disk seeking and access upon KDE application startup by caching icons in memory.  The results are excellent: about 10% faster <a href="https://rivolaks.blogspot.com/2007/09/iconcache-benchmarking-results.html">desktop startup</a> and about 25% faster <a href="https://rivolaks.blogspot.com/2007/08/iconcache-status.html">startup time for applications</a>, using Dolphin as a reference.  He also developed <a href="https://techbase.kde.org/Development/Tutorials/KPixmapCache">KPixmapCache</a> to cache image data for individual applications.  His code has already been merged into kdelibs and will be released as part of KDE 4.0.

<a href="https://code.google.com/soc/2007/kde/about.html">KDE</a>: Urs Wolfer's <a href="https://code.google.com/soc/2007/kde/appinfo.html?csaid=9064143E62AF5BA6">KRDC UI Redesign and overall revamp</a>, mentored by Bradley John Hards

Wolfer's work has received a lot of attention in the KDE community, where improvement of the KDE Remote Desktop Connection (KRDC) tool for VNC and RDP has been long awaited.  All indications are that Wolfer has lived up to the expectations, including the complete rewrite of the VNC code, the new interface with tabbing, and a <a href="https://uwolfer.fwo.ch/blog/2007/06/26/krdc-on-win32/">preliminary Windows build</a>.  The new KRDC has already been integrated into the KDE 4 trunk and is available as part of <a href="https://kde.org/announcements/announce-4.0-beta2.php">KDE 4 beta 2</a>.  Wolfer has indicated that he will continue to work on KRDC, suggesting possible NX support for KDE 4.1.

<a href="https://code.google.com/soc/2007/netbsd/about.html">NetBSD</a>: Jachym Holecek's <a href="https://code.google.com/soc/2007/netbsd/appinfo.html?csaid=20CE8D4F0F53F9C8">Hardware monitoring and HAL port</a>, mentored by Quentin Garnier

Holecek is bringing long overdue hardware event notification support to NetBSD via a port of the <a href="https://www.freedesktop.org/wiki/Software/hal">Hardware Abstraction Layer</a> (HAL).  It's a difficult project, involving some kernel modification, but it should have tremendous ease-of-use implications for NetBSD users, making transparent hardware management possible in KDE and Gnome.  According to the last update posted to <a href="https://netbsd-soc.sourceforge.net/projects/hal/">Holecek's project page</a>, the port now successfully builds with some features disabled.

<a href="https://code.google.com/soc/2007/neuros/about.html">Neuros</a>: Leif Johnson's <a href="https://code.google.com/soc/2007/neuros/appinfo.html?csaid=6E2D43FEA21BE12F">Apple iPod integration for Neuros OSD</a>, mentored by Thomas Bruno

Johnson sought to add a potentially killer feature to Neuros' latest gadget, the Linux-based <a href="https://www.neurostechnology.com/neuros-osd">Open Source Device</a> (OSD) media center.  His project would allow the OSD, as a USB-host device, to sync music and videos with an Apple iPod.  It is difficult to find information on the status of his project, but it <a href="https://groups.google.com/group/Neuros-DM320Hardware/browse_thread/thread/8dd3fa055ec008cb">looks as though</a> he was successful in creating a framework for hotplugging USB devices and implementing audio-read support for the iPod back in early August.

<a href="https://code.google.com/soc/2007/ooo/about.html">OpenOffice.org</a>: Shane Mathews' <a href="https://code.google.com/soc/2007/ooo/appinfo.html?csaid=5944B793ABC186C0">OpenGL rendered Impress transitions</a>, mentored by Thorsten Behrens

Mathews' work should satisfy eye candy-hungry users of OpenOffice.org's Impress slideshow application.  He has released five stylish 3D slide transitions rendered with OpenGL and a platform for making more.  Look to <a href="https://codecoffee.blogspot.com/2007/08/wrap-it-up.html">Mathews' blog</a> for screenshots and more information about the project.

LWN was also interested in learning about how the GSoC might look next year.  In all previous years, the program has received substantial administrative changes, growth in participation and diversity, and budget increases.  While it may be logical to assume that the GSoC 2008 will be no exception, Hawthorn could only remark, "We don't have anything to announce right now about possible future instances of the Google Summer of Code program..."

Despite the fact that Google is unwilling to discuss the next GSoC, or even confirm that it will exist, feel free to attempt your own predictions based on the growth demonstrated in figures from the past summers.  The following data was gathered with the help of Chris Ulbrich of Google's Global Communications and Public Affair division:


## Google <a href="https://code.google.com/soc/2007">Summer of Code 2007</a>


* 905 students
* 137 open source mentoring organizations
* 90 countries
* $4,500,000 approximate budget
* 81% overall student evaluation success rate
* Approximately 1500 mentors


## Google <a href="https://code.google.com/soc/2006">Summer of Code 2006</a>


* 630 students
* 102 open source mentoring organizations
* 90 countries
* $3,000,000 budget
* 82% overall student evaluation success rate
* 1,200 mentors


## Google <a href="https://code.google.com/soc/2005/">Summer of Code 2005</a>


* 419 students
* 40 open source mentoring organizations
* 49 countries
* $2,000,000 budget

