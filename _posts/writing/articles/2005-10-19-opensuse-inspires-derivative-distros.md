---
title: "openSUSE inspires derivative distros"
date: 2005-10-19
pin: false
categories: [writing, article]
tags: [open source software, linux]
venue: "Linux.com"
description: A 2005 Linux.com article about Linux distributions derived from openSUSE just months after it was open sourced.
# image:
#   path:
#  alt:
---

*This article was originally published on Linux.com on 2005-10-19 at https://www.linux.com/article.pl?sid=05/10/19/2026240 and is still on the web at [Linux.com](https://www.linux.com/news/opensuse-inspires-derivative-distros/).*

Just two months ago, Novell [opened the development process](https://os.newsforge.com/article.pl?sid=05/08/03/1246236) behind SUSE Linux, creating the [openSUSE](https://www.opensuse.org/) project. Novell’s move gave developers a chance to be involved in SUSE, which previously had been developed privately without community input. In the short time since openSUSE was unveiled, developers have begun work on several new and interesting SUSE derivatives.

## SUSE Performance Enhanced Release

The [SUSE Performance Enhanced Release](https://www.opensuse.org/SUPER) (SUPER) project is integrating experimental patches, packages, and configurations in an effort to create a faster, more usable, and more attractive bleeding-edge SUSE distribution. Novell, understandably, shies away from implementing these kinds of changes until it has done extensive testing to assure stability for enterprise customers. However, such rigorous standards are not a requirement for the desktop users SUPER targets.

For instance, the SUPER project can optimize binaries for i686 because the majority of its users will be on i686 hardware. The SUPER project also plans to distribute Pentium 4 and Athlon-specific binaries in an extended DVD edition.

So far, SUPER’s greatest success has been cutting boot time [in half](https://www.opensuse.org/SUPER_standard_benchmark) by [launching startup tasks in parallel](https://www.opensuse.org/Fast_boot).

Desktop users are interested in more than speed, of course, so the SUPER developers are also planning improvements to SUSE’s functionality as well. SUPER aims to restore the usefulness of media players such as Kaffeine and MPlayer by shipping MP3 playback packages, something Novell stopped doing for SUSE 9.3 because of potential legal issues under the American patent system. Red Hat, the other major US enterprise Linux provider, follows a similar policy, though many other desktop distribution vendors do not.

To date, SUPER has changed little of openSUSE’s default green desktop style. Novell has themed openSUSE somewhat atypically, using bright-green saturated pictures of reptiles and villages as desktop and login backgrounds rather than dull and professional-looking gray tones and corporate logos. But SUPER plans to break tradition with openSUSE by using the Mac OS X-lookalike [Baghira KDE theme](https://www.kde-look.org/content/show.php?content=8692) and turning on all of KDE’s animations, drop-shadows, translucency, and other visual effects by default. Finally, it plans to implement more appealing fonts for the desktop and Firefox by default, possibly using the Bitstream Free TrueType set. SUPER has created a [page with screenshots](https://www.opensuse.org/SUPER_lookandfeel) of desktops with these changes on display.

SUPER also plans to add the BitTorrent client [Azureus](https://azureus.sourceforge.net/) and the proprietary ATI and Nvidia graphics drivers to its distro. Novell’s openSUSE does not include Azureus because of licensing issues with the Java packages it depends on, and allows the proprietary drivers, which are necessary for proper hardware graphics acceleration, to be installed via YaST Online Update manually after system install.

Novell has already taken note of the SUPER project’s achievements, and has chosen to integrate some of them into the main openSUSE branch. For instance, one of the first configuration changes SUPER made was to preload OpenOffice.org and Firefox at system startup, so that they could be launched within a few seconds when a user needed them. Novell adopted this feature for openSUSE Beta 4. Novell also preloads the GIMP, Mozilla, and various KDE applications such as Konqueror and Kicker.

Novell is providing manpower and webspace for the SUPER project, though it is not dictating or discouraging its goals. Novell has brought on [YOPER](https://www.yoper.com/index.php) founder [Andreas Girardet](https://www.opensuse.org/User:Agirardet) to be the project coordinator for SUPER. Con Kolivas is joining the SUPER development team to maintain his [ck kernel patchset](https://members.optusnet.com.au/ckolivas/kernel/) as an optional package. His version of the kernel attempts to make the desktop more responsive, and may use non-GPL code where needed.

## SLICK Linux

Another offshoot of openSUSE is [SUPER Lite: Core + KDE](https://www.opensuse.org/SLICK) (SLICK), a single-CD distribution of openSUSE featuring all of SUPER’s enhancements, but containing only the base KDE desktop and dependent packages.

Novell ships as many packages with its distro as it can safely support. SLICK appeases minimalists who want only what is needed to accomplish everyday tasks, such as playing music or browsing the Web.

For packages that aren’t on the CD, SLICK plans to provide package repositories and easy package management. The project uses the Advanced Package Tool (APT) for RPM and [Klik](https://klik.atekon.de/) package management, which many feel to be less complicated for end users than SUSE’s native YaST-managed RPM package solution. SLICK also uses the ck kernel patchset by default.

## The moral of the story

Expect more distributions to fork from both openSUSE and SUPER in the future, now that Novell has demonstrated that it will support such efforts.

These projects represent more than the creation of Yet Another Distro. They are real-world examples of the rewards for corporate benevolence to the open source community. Novell is demonstrating that by releasing the source to its products and supporting user contributions, a company can not only spur interest in its software, but also receive some valuable help.
