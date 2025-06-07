---
title: "KDE 4 Graphics Gets New Direction with Gwenview II"
date: 2007-02-07
pin: false
categories: [writing, article]
tags: [open source software, kde, linux, gwenview, linux weekly news]
description: A 2007 article for the Linux Weekly News about the then-forthcoming version of KDE's new graphics viewer application, Gwenview.
# image:
#   path:
#  alt:
---

*This article was originally published in [LWN](https://lwn.net/Articles/221059/) on 2007-02-07.*


On January 27th, KDE developer Aur&eacute;lien G&acirc;teau made an <a href="https://www.kdedevelopers.org/node/2660">entry on his blog announcing the next version of his Gwenview image viewer</a>. The announcement is the result of <a href="https://lists.kde.org/?l=kde-usability&w=2&r=1&s=gwenview&q=b">extensive discussion</a> on the <a href="https://mail.kde.org/mailman/listinfo/kde-usability">kde-usability mailing list</a> towards a completely new interface for the <a href="https://wiki.kde.org/KDE+4+Goals">KDE 4</a> release of the popular image viewer. The new release features a refocusing on simplicity which will have interesting consequences for the venerable application, now in its seventh year of development, and for the K Desktop Environment as a whole.


G&acirc;teau designed the new interface to be efficient for, in his words, "two use-cases...: 1:&nbsp;The user wants to see a single image, for example from an image attachment. Maybe rotate it, scale or crop it. 2:&nbsp;The user wants to browse all images of a folder, which he selected from <a href="https://kde-apps.org/content/show.php?content=40491">Dolphin</a> or <a href="https://www.konqueror.org/">Konqueror</a>. Maybe in fullscreen mode, as a slideshow or not." He summarizes, "...Gwenview [II] strives to be a "simple" image viewer, not a full blown photo management application."



The original Gwenview was made with tasks that were less dependent upon the file manager in mind. <a href="https://gwenview.sourceforge.net/screenshots.php?action=view&album=/1.4&pos=1">Gwenview 1.4 has directory tree and folder view panes</a> for image navigation. For Gwenview II, these have been removed. G&acirc;teau explains, "I simplified the interface by removing the folder view and the use of docked windows..." He explains that these changes were prompted by the evolution of desktop file managers: "...nowadays file managers are capable of providing simple image browsing and cataloging, people won't resort to external image applications until they need the cataloging power of applications such as KPhotoAlbum or Digikam." 



Gwenview II's purpose is to augment the features of these file managers. G&acirc;teau writes, "The new goals of Gwenview are to complement the file manager to provide features it does not supply, such as immersive fullscreen support (not just hiding title bars: showing only the image and providing a discreet minimalist user interface to browse), slideshow and basic image editing (rotate, mirror, scale, crop, adjust colors, maybe red eye correction)." To facilitate this simplification, <a href="https://www.kdedevelopers.org/node/2658">the new interface makes these functions readily available</a> via toolbar buttons. The current interface mockup does not include any menu bars. G&acirc;teau elaborates on the principle: "In the mockups, I ...removed various toolbars and took into consideration the fact that KDE4 will ship with captions below icons by default. To make it easy to perform some editing tasks, I added a new "tools" side bar." 



In light of this new direction, Gwenview has found itself with a more prominent position in KDE for the upcoming fourth version of the desktop. Long relegated to the <a href="https://extragear.kde.org/">kde-extragear module</a>, Gwenview will be moving to kde-graphics. <a href="https://extragear.kde.org/home/about.php">Extragear is, officially,</a> "a collection of KDE applications that are associated with the KDE project. Those apps are not part of the main KDE distribution for various reasons, but they are still part of the project." The space is generally used for applications that either duplicate the functionality of other applications in the main distribution or are too specialized for mass consumption. The kde-graphics module, as one might expect, is filled with <a href="https://packages.debian.org/unstable/source/kdegraphics">KDE applications designed for image manipulation and viewing</a>. In G&acirc;teau's words, "Yes, Gwenview will play a larger role in KDE4 than it played in KDE3." 


The move to kde-graphics is symbolic of higher stature within the KDE project, but has other practical consequences, as well. In order to avoid shipping duplicate functionality within the core of KDE, other applications in the graphics module may have to be forced out. G&acirc;teau writes cautiously, "I would like to see Gwenview replace <a href="https://www.ph.unimelb.edu.au/~ssk/kde/kview/kview.html">KView</a> and <a href="https://kuickshow.sourceforge.net/">Kuickshow</a> as well as the photoalbum KPart, but we need to make sure we provide similar features and performance. Please note that this is just my (subjective) personal opinion, I am not the one who makes such a decision." KView and Kuikshow are the current members of kde-graphics responsible for simple image display tasks. KParts are components of KDE applications which can be easily embedded within other applications; for instance, videos played in Konqueror use the <a href="https://kaffeine.sourceforge.net/">Kaffeine</a> KPart.



Furthermore, the move should ease the work of both developers and users. G&acirc;teau explains, "I believe lots of users will simply use what's supplied by the desktop, and won't take the time to install an application such as Gwenview, so it makes sense to move Gwenview to [the main KDE distribution]. It will also save me some time, as I won't have to worry about making tarballs anymore." Previously, users of GNU/Linux distributions which do not distribute the kde-extragear module through their package management system would have to install Gwenview manually using tarballs. 



G&acirc;teau had help from <a href="https://usability.kde.org/">KDE Usability</a> in designing Gwenview's new interface. KDE Usability is a community of interface usability experts within the project who assist developers throughout the organization. G&acirc;teau recalls the process: "...after getting confirmation from the kde-devel-core mailing list that Gwenview would move to kdegraphics, I was asked to work with the usability team. I already had some ideas in my mind so I prepared some mockups of them, which I posted on the kde-usability mailing list. They were basically satisfied with the general idea of my first set of mockups, but nevertheless made quite a few suggestions to improve them. Based on this feedback I created a second set of mockups, which are the one I posted on my blog. We mainly discussed the toolbar layout, what should get in the toolbar and what should not, as well as the expected behavior of some elements of the interface."  Among the usability experts who assisted him were KDE developers <a href="https://aseigo.blogspot.com/">Aaron Seigo</a>, <a href="https://behindkde.org/people/johnflux/">John Tapsell</a> and <a href="https://behindkde.org/people/celeste/">Celeste Lyn Paul</a>. 



G&acirc;teau, also a developer on the open-source VOIP application <a href="https://www.wengophone.com/index.php/homePage">WengoPhone</a>, only recently decided to see Gwenview through to a second major release. He laments, "I decided to give up mainly because I couldn't find the time to work on it anymore and because I thought I was no longer interested in maintaining Gwenview." His decision to return to the project reflects amusingly ideal behavior for a free software developer: "Taking some days off I realized I was still interested in working on Gwenview, and that it would be better to stop some other non-KDE related activities." G&acirc;teau remarks that he was also influenced by the user comments following <a href="https://www.kdedevelopers.org/node/2579">his call for a new Gwenview maintainer</a>. 



Gwenview II clearly holds some drastic and exciting changes for the classic KDE application, but G&acirc;teau recognizes that they will not be universally well-received. He notes: "Since Gwenview II will be quite different than the present version, it's quite certain that there will be a new [set of] users. I am also aware that, unfortunately, some users of the present version won't like the new interface." Fortunately, the needs of all users should be well addressed in KDE 4, with the Konqueror file manager for the most basic image management, Gwenview II for more intermediate functions, and <a href="https://www.digikam.org/">digiKam</a> for advanced photo management capabilities.

