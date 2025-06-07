---
title: "Summer of Code 2007 - Ubuntu projects"
date: 2007-05-30
pin: false
categories: [writing, article]
tags: [open source software, google summer of code, ubuntu, linux weekly news]
description: The second entry in a 2007 series for LWN about the Google Summer of Code, focusing on projects from Ubuntu.
# image:
#   path:
#  alt:
---

*This article was originally published in [LWN](https://lwn.net/Articles/235653/) on 2007-05-30 and was the second of six articles in a series about the 2007 Google Summer of Code.*


May 28th marked the official commencement of student projects for the <a href="https://code.google.com/soc">Google Summer of Code</a> (GSoC) 2007.  The Ubuntu Linux distribution is among the program's heavyweights, with twenty projects lined up for 2007.  Its status as a significant organization is not surprising given the remarkable momentum of the distribution, which has undeniably become a juggernaut in the Free software community after only a few short years of development.  The GSoC students and the Ubuntu developer-mentors they are paired with need only work for one season, but their contributions will have lasting value to the Ubuntu distribution, the applications it packages, and, in some cases, other distributions that share the code they write.



Ubuntu's GSoC projects are too numerous to explore comprehensively here.  More information on all of them is available at the <a href="https://code.google.com/soc/ubuntu/about.html">Ubuntu GSoC page</a>.  We contacted students and mentors from five of Ubuntu's GSoC projects and asked them to describe how their initial proposals have evolved to the projects they are now working on, what their work will do for Ubuntu users, and how other distributions may benefit.


## Lois Desplat's "<a href="https://code.google.com/soc/ubuntu/appinfo.html?csaid=F759B5D30A8F79AF">Revision Controlled Home Directories</a>" (mentored by Martin Pitt)


Mentor Martin Pitt, a member of the exclusive Ubuntu Core Development Team, describes Desplat's project, dubbed "Mnemosyne," as "a backup system with extra features".  Despite any temptations to go wild with the concept of revision control as is applied to code, Pitt is seeking to temper the project for the desktop and guarantee that it is minimally taxing on resources, well integrated, and extensible so that it may work with multiple backend and frontends.  The results of the discussion between Pitt and Desplat was compiled into an <a href="https://lists.ubuntu.com/archives/ubuntu-soc/2007-May/000027.html">adjusted Mnemosyne project plan and timeline</a>.



The new plans are a bit more fleshed-out than what is listed on the GSoC project page.  Canonical's own <a href="https://bazaar-vcs.org/">Bazaar</a> revision control system will be adopted as the primary backend over SVN.  SVN will still be implemented as an optional plugin as a demonstration of backend development.  Commits of changed files could be done instantaneously, but to use resources realistically they will probably be done nightly or at some other time interval - as in a traditional backup scheme.



Revision control systems do have advantages over traditional backup schemes and the ubiquitous Recycling Bin system.  The system will allow users to revert back to several versions of their files rather than one specific backup.  Moreover, the system will facilitate other features typical of code repositories, even if their use for file handling isn't immediately obvious.  Users will be able to merge text files, patch binaries, and keep the repository on a remote device.  If the entire /home directory is revision controlled, as is planned, this will include both personal documents and configuration files.  Mnemosyne will also be designed for easy extension to /etc or elsewhere.



Mnemosyne is being designed as a daemon for committing, a command-line program for configuration and management, frontends for Gnome/KDE, and heavy integration into GNOME's Nautilus file manager (with KDE's Konqueror as a goal).  The file manager integration will allow users to selectively omit files from revisioning (so, for instance, a very large file is not revisioned nightly), force commits, or retrieve past versions.  These tools will be written in Python, reverting to C++ if necessary to "interface with another application."  The tools should all be distribution-agnostic and could very well appear outside of Ubuntu.



Desplat is a software engineering student at <a href="https://www.sjsu.edu/">San Jose State University</a>.  He has experience participating in open source projects with the <a href="https://www.ogre3d.org/">OGRE rendering engine</a>.  He has established a <a href="https://launchpad.net/mnemosyne">Launchpad site for Mnemosyne</a> where users may keep track of his work.  Weekly reports will also be published on the <a href="https://lists.ubuntu.com/mailman/listinfo/ubuntu-soc/">GSoC coordination list</a>.  Expect a testable version of the daemon by mid-June and beta .deb packages by early July.


## Kévin Dunglas' "<a href="https://code.google.com/soc/ubuntu/appinfo.html?csaid=EF4FCF874D88234">Privacy tool(s) for Ubuntu</a>" (mentored by Jani Monoses)


Modeled in the style of <a href="https://www.apple.com/macosx/features/filevault/">Apple's FileVault</a>, Dunglas is building Privacy Tool, a GUI to accomplish three principal privacy goals that he has identified for Ubuntu.  His tool will facilitate /home directory encryption, swap partition encryption, and the creation of a "safe deposit box" to secure individual files.  He notes that he will also build a temporary file cleanser for Firefox if time allows.



Dunglas has yet to identify the encryption backend he will use for his tool.  <a href="https://www.truecrypt.org/">TrueCrypt</a> and <a href="https://www.saout.de/tikiwiki/tiki-index.php?page=cryptsetup">cryptsetup</a> have been named as possibilities.  He plans to perform /home directory encryption in-place, via a backend that either encrypts in-place directly or by moving files into the new, encrypted directory.  Dunglas has no plans to implement full-filesystem encryption with Privacy Tool, stating that the /home directory and swap are the most critical places for privatizing user data.  The safe deposit box will be offered as a mechanism for encrypting additional files.



Privacy Tool will be a Gtk/Gnome application built with Glade and Python.  Though Dunglas has no plans to port it beyond Ubuntu, he is conscious of possible ports to other distributions and is building Privacy Tool from widely available packages.  He hopes to make an alpha release available towards the end of July.



Dunglas is a computer science student at the <a href="https://www.iut-lens.univ-artois.fr/index2.php?id_article=&id_rubrique=54&menu=5">Institut Universitaire de Technologie de Lens</a> in France.  He has been involved with Ubuntu France for several years.   Mentor Jani Monoses is a Romanian computer science engineer strongly involved with the <a href="https://www.xubuntu.org/">Xubuntu</a> derivative.


## Krzysztof Lichota's "<a href="https://code.google.com/soc/ubuntu/appinfo.html?csaid=8EDA2B217C83972">Automatic boot and application start file prefetching</a>" (mentored by Tollef Fog Heen)


This project is the continuation of a longstanding effort among Linux distributions to shorten application startup time by techniques such as prefetching.  According to Lichota, Windows XP implements a system whereby application and system startup are analyzed to identify files used in the process.  Those files can then be "prefetched" into cached memory upon future startups to minimize overall disk access.  This technique, in addition to reorganizing these files into sequential, easy-to-access order on the disc may dramatically decrease launch time.



Lichota has made <a href="https://www.mimuw.edu.pl/~lichota/soc2007-prefetch/application.html">the full text of his Prefetching project application</a> available.  In it, he gives detailed analysis of the various prefetching schemes which have already been implemented (including two former GSoC projects) and systematically lists their deficiencies.  In short, Lichota hopes that his system will be less RAM-dependent than the Ubuntu Boot Readahead,
will be more effective at analyzing application-launch file usage than
<a href="https://sourceforge.net/projects/preload">Preload</a>, and will require less user-interaction and improve on the disk defragmentation
capabilities of
<a href="https://code.google.com/p/pagecache-tools/">Pagecache tools</a>.



The key to Lichota's project will be to work at a lower level than previous systems.  While the Preload method employs a daemon to periodically invoke prefetching routines, Lichota will hook prefetching into the fundamental Linux exec() function, probably by patching the kernel itself.  He hopes to reuse code from these previous projects for prefetching functions where appropriate.



Lichota has already begun writing his <a href="https://lichota.net/~krzysiek/projects/e2moveblocks/">tool for reorganizing pre-fetching files on the hard disk</a>.  Unfortunately, there are no plans to implement this tool for anything but ext3 filesystems.  Lichota believes that his code will apply mostly to the kernel and that it would be fairly easy for other distributions to adopt his work.  He hopes to have a working, though untested, version of the prefetching tool in mid-July and an untested version of the disk tool in August.  Lichota will also implement an ext3 tool for metadata pre-caching if time permits.



Krzysztof Lichota is a PhD student at <a href="https://www.uw.edu.pl/en/">Warsaw University</a> who has already earned a Masters degree from their computer science department.  He has five years of experience working for the storage industry on cluster solutions.  Lichota has been encouraging his own students to participate in the GSoC for two years now and is among several University of Warsaw computer science students who are participating in the 2007 GSoC .
Mentor Tollef Fog Heen is a member of the Ubuntu Core Development Team.



Two important resources exist for those interested in Lichota's project.  He has constructed a <a href="https://code.google.com/p/prefetch/wiki/Soc2007Progress">site to track progress on the Prefetching GSoC project</a> and a general site which he would like to become a <a href="https://code.google.com/p/prefetch/">base for all future Linux prefetching development</a>.  Those interested in participating in development are encouraged to join the <a href="https://groups.google.com/group/prefetch-devel/">prefetch-devel mailinglist</a>.


## Petter Remen's "<a href="https://code.google.com/soc/ubuntu/appinfo.html?csaid=9AC0949C5B6F5260">Device &amp; Driver Manager for Ubuntu</a>" (mentored by Kyle McMartin)


The inspiration for Remen's project comes from a <a href="https://wiki.ubuntu.com/DeviceManagerSpec">device manager specification</a> developed by Ubuntu kernel developer Ben Collins.  His goal was to implement a GUI <a href="https://www.freedesktop.org/wiki/Software/hal">Hardware Abstraction Layer (HAL)</a> device manager for GNOME that will allow users to modify driver configuration without touching plaintext configuration files or a command line.  Collins warns that the existing <a href="https://packages.ubuntu.com/dapper/admin/hal-device-manager">GNOME hal-device-manager</a>, which displays a hardware device tree taken from HAL, but does little for user-friendly configuration, will have to be forked and some kernel hacking may be necessary.



Remen clearly outlines his vision for the project's GUI.  The tool will immediately present users with a list of hardware categorized by simple terminology, which can also be filtered by user defined criteria.  For each listed device, the tool will display the currently enabled driver and allow the user to replace or reconfigure the driver.  Furthermore, the tool will facilitate loading drivers from CDs or other user-specified locations and allow users to disable devices.  Users will be able to save their configurations in "hardware profiles" to apply upon reboot or implement on another computer.



Remen indicates on his GSoC project page that extensibility will be an objective of his work.  He lists X server and CUPS configuration, independent from HAL, as possible future extensions to his project.  Although the existing hal-device-manager is cross-platform, Remen will be implementing features that will make his tool Linux-specific.  If, indeed, kernel development is necessary for his project, it may be difficult for other distributions to incorporate his work.



Mentoring the project will be Kyle McMartin, employed by Canonical as an Ubuntu kernel hacker and a member of the core development team.


## Tomé Vardasca's "<a href="https://code.google.com/soc/ubuntu/appinfo.html?csaid=1B880D85BB307B89">Ubuntu bootloader manager</a>" (mentored by Scott James Remnant)


Bootloader configuration functionality has been present in the administration tools of SUSE and Mandriva for several years, but is an element of GUI system configuration conspicuously absent in Ubuntu.  Vardasca's project will integrate bootloader configuration into Ubuntu's Ubiquity operating system installer, and duplicate the functionality for a GNOME control center module.  The tool is only being designed with the <a href="https://www.gnu.org/software/grub/">GNU GRUB</a> bootloader in mind.



As outlined in the <a href="https://wiki.ubuntu.com/UbuntuBootloaderManager">full Ubuntu bootloader manger specification</a>, users will be able to edit the list of operating systems presented by the bootloader and their ordering, configure kernel options, set passwords for the console and operating systems, and theme the bootloader.  The tool will keep a copy of the configuration in an XML file in case replacement is necessary, along with a backup to use in case of user input error.



Theming options will play a major role in Vardasca's tool.
It will include an interface for installing
<a href="https://doc.gwos.org/index.php/GfxBoot">GfxBoot</a>,
and an enhanced version of GRUB designed for aesthetics.  Alternatively, the tool will enable theming vanilla GRUB with a splash screen and a custom color scheme.  A theme editor will be provided for this purpose.  The configuration tool will include a preview window with a screenshot of the theme.



Although the code integrated into the Ubiquity installer may be difficult to port, the GNOME control center module will be written in Python and may find its way into other distributions.  Vardasca intends to provide an alpha version of the configuration tool at the end of May and complete the integration into Ubiquity and the GNOME control center by the end of July.  Those interested in participating should visit the <a href="https://launchpad.net/ubuntu-bootloader-manager">Ubuntu Bootloader Manager Launchpad project page</a>.



Vardasca is a health informatics student at the <a href="https://www.estg.ipleiria.pt/website/index.php?id=">Superior School of Technology and Management at the Leiria Polytechnic Institute</a>.  He became interested in Ubuntu after switching from Windows upon the release of Vista.  He says that friends' requests prompted him to develop a bootloader manager: "I guessed I could do it in the Google Summer of Code and, surprisingly, I guessed well."  Mentor Scott James Remnant is a member of the Ubuntu Core Development Team.

