---
title: "Season of KDE fosters young students, Part One"
date: 2006-08-01
pin: false
categories: [writing, article]
tags: [open source software, kde, linux, kwin, kamion, koffice]
venue: "Linux Weekly News"
description: A 2006 article for the Linux Weekly News about the KDE summer internship-like program, the Season of KDE, detailing several student projects.
# image:
#   path:
#  alt:
---

*This article was originally published in [LWN](https://lwn.net/Articles/193723/) on 2006-08-01 and is the first of two articles in a series.*



For two years now, Google's <a href="https://code.google.com/summerofcode.html">Summer of Code</a> has furnished students with time, money, and help to encourage the next generation of open source developers.  During that time, several thousand applications were submitted to Google, of which only several hundred could be accepted.  The Summer of Code's capacity is limited by funds - each project Google sponsors costs them $4500 to the student and $500 to the mentor, plus associated expenses - as well as organizational concerns.  Dozens of revered open source projects signed up to accept students for the Summer, including <a href="https://kde.org/">KDE</a>, makers of what is one of free software's most popular desktop environments.  As a large project, KDE was lucky enough to have Google sponsor <a href="https://developer.kde.org/summerofcode/soc2006.html">twenty-four students</a>.  Unfortunately, this left nearly 200 hopefuls without work.



The KDE organization itself stepped up to take on many of these left over students as part of their own Season of KDE 2006, which is hoped to be the first of many such events.  Organizer Sebastian Trueg told me: "The idea arose in a discussion between
the Summer of Code mentors when it was obvious that Google would not support as
many students as we had hoped. We did not want to waste all that talent and all
that enthusiasm so we came up with the idea to do our own follow-up project. It
took some time to get off the ground but now 15 projects are running."  Invitations were sent to nearly all those left over from the Summer of Code.  Most politely declined to join the Season of KDE, citing commitments to summer jobs, internships, and other occupations.  Organizer Pradeepto Bhattacharya recalls, however, that: "some of the students replied with so much enthusiasm that many of us were actually surprised."


KDE cannot afford to pay, but there are other incentives for students.  They offer the same mentors and experiences to their students as Google would and, if sponsors can be found, the students may also get to attend <a href="https://conference2006.kde.org/">aKademy 2006</a> in Dublin.  Trueg notes: "For now we only support them in a non-financial way but we hope to improve on that."  The selected students officially began work on their project on July 10th, and are expected to present a mid-term report on September 10th.  The completed projects are due on November 11th, along with final comments from students and mentors.



Not surprisingly, the group of students who have signed on bear a great resemblance to the KDE community as a whole.  A majority of them are from outside the United States and have a strong educational background in computer science.  Nearly all of the students I questioned had intended to become involved with KDE whether or not their Summer of Code applications were accepted, and were delighted by the Season of KDE and the opportunity to work with a mentor.  Student Yang Sheng, working on the "KNotes improvement" project, told me: "I took this as a practice and a challenge more than as a simple project.  So it not only aids KNotes' improvement, but also my own improvement."  Similarly, the mentors were delighted to mold new recruits for their particular area of KDE development.  Trueg, also a
mentor for the "K3b lite" project, explains: "I think it is a very good opportunity for new developers to become involved with the KDE project".



Fifteen projects were registered as members of the Season of KDE.
Many of the ideas were built upon <a href="https://wiki.kde.org/tiki-index.php?page=KDE%20Google%20SoC%202006%20ideas">suggestions</a> given to potential applicants by KDE developers.
This week we take a look at the first five of these projects.
</P>



## Martin B&ouml;hm's <a href="https://developer.kde.org/seasonofkde/project.php?kwin_tabs.xml">Tab support for KWin</a> (mentored by Lubos Lunak)

Inspired by a three year old <a href="https://bugs.kde.org/show_bug.cgi?id=42023">feature request</a> on bugs.kde.com, Martin B&ouml;hm intends to add <a href="https://fluxbox.sourceforge.net/">Fluxbox</a>-like tabs to Kwin, KDE's window manager.
 Tabs in window managers work just like those in web browsers, allowing several
windows to occupy the same space.  The <a
href="https://fluxbox.sourceforge.net/features/tabs.php">Fluxbox
implementation</a> lets you group windows by dragging 
them onto each other with the middle mouse button, and then allows
switching between windows in the group by clicking on a tab bar placed on an edge of
the window.  Groups save on space and clutter and can be moved, minimized,
and maximized together.  They can be disassembled by dragging off tabs with
the middle mouse button. 



Some question the usefulness of tabs for a window manager.  Many note that
having windows overlap as tabs obstructs the ability to drag and drop
documents, a highly touted usability feature.  Others point out that the
taskbar already serves to tab windows, and that developers are free to
implement them per-application if they deem it necessary, though this
argument does not address the ability to group together different
applications.  Fortunately, B&ouml;hm will add configuration options to
KControl, including keyboard shortcuts and default behavior, so that those
who do not like tabs can ignore them.  He also points out that there will
be essentially no performance cost for the feature.  Some users will no
doubt 
enjoy using tabs with applications such as KEdit or the GIMP, which do not implement application tab support but could perhaps benefit from them.



B&ouml;hm considers himself a window-manager connoisseur who has particularly extensive experience with KDE and Fluxbox.  He cites skill in C++ (the foremost requirement for his project), an interest in Qt and KDE, and server administration experience at a small ISP.  He and mentor Lubos Lunak appear to share Czech citizenship and background, which B&ouml;hm feels eliminates any potential communication barrier.  Lunak has had his hand in KDE for years, on a diverse set of components including KHotKeys, Kicker, and kdelibs.




## Ivan Cukic's "<a href="https://developer.kde.org/seasonofkde/project.php?kamion.xml">Kamion</a>" User State Migration Tool (mentored by Thiago Macieira)

"User state migration" refers to saving or restoring a user's application
configuration and data for backup purposes or use on another installation.
Today, wise Unix users may opt to accomplish this by copying their /home
directory, though they must first take a comb to their files to make sure
they aren't restoring application settings of an incompatible version or
wasting space by archiving browser caches.  Kamion promises an integrated
wizard for both "packing" and "unpacking" compressed user states, making
sure to avoid the pitfalls of the /home method.  Cukic envisions a database of application signatures, kept by either distribution packagers or KDE developers, that will instruct Kamion of which versions have incompatible settings and which files are not worth packing.



Cukic intends to offer users a simple and usable solution without depriving them of any power.  Kamion will prompt the users as to which application states they want to restore, and whether to ignore incompatibility warnings.  An option to package only specific applications may be added, or even specific data such as a music collection.  Users will also choose whether to save their packs to disk, email them, or burn them to CD with K3b.  Kamion will be integrated into the desktop via a mime type for .kamion packs and options in the KDE Welcome Wizard.



Many of these details did not exist in Cukic's <a href="https://developer.kde.org/summerofcode/kamion.html">initial Summer of Code application</a>.  He informed me that he has dropped his proposed XML data storage format in favor of a faster <a href="https://www.sqlite.org/">sqlite3</a> method.  When I contacted him he had already nearly completed the Kamion backend library and was readying to begin work on the GUI. Though he told me he has experience with KDE development, Kamion will be his first notable contribution to the desktop.  Cukic, a student at the Faculty of Mathematics, <a href="https://www.beograd.org.yu/cms/view.php?id=201540">University of Belgrade</a> Computer Science Department, seems devoted to software engineering and is active in the free software world.  Mentor Thiago Macieira is one of KDE foremost bug-fixers and maintainer of its networking code.




## Dragan Jovev's <a href="https://developer.kde.org/seasonofkde/project.php?kmetalibrary.xml">API for media file meta-information</a> (mentored by Carsten Pfeiffer)

A user's media collection usually consists of much more than what can be found in a
'Music' folder on the hard drive.  Jovev recognizes that it can be expected
to extend to a large assortment of DVDs, storage cards, external and
network drives, and even the Internet.  Such a distributed collection is
difficult to manage, even with the aid of one of the many "collection
manager" applications like <a
href="https://www.periapsis.org/tellico/">Tellico</a>.  In response to this,
Jovev has designed an API and storage backend to allow KDE applications to
store information about any media that they access and keep this
information even when the media is no longer accessible.  The user will be
able to, for example, browse his entire music collection in <a
href="https://amarok.kde.org/">Amarok</a> and be prompted to insert a
specific CD if necessary. 



His API, KMetaLibrary, needs to be sufficiently fast, configurable, and
robust as to appear transparent to the user.  To that end, Jovev plans to
section off his database.  As described in his Season of KDE page:

> 
Each collection will be done using SQLite, XML or some other type of database. There will be separate collections for movies, songs and pictures. This will make faster manipulation of data for applications that are working, for example, only with pictures.  Also, it will be easier to create and manage separate database structures, since video and audio files will not use same data structure.

Configuration to restrict the API's
cataloging scope will be possible both globally and per-application.  <a
href="https://digikam.org/">Digikam</a>, for instance, may be restricted to
indexing photos it found on flash cards. 



Jovev has had delays in starting his project, but promises that in August
he is "ready to spend all [his] spare time on this project. That means 5-6
hours per day."  He may have to, for an ambitious idea that mentor Carston
Pfeiffer expects to prove an integral part of KDE&nbsp;4.  Pfeiffer is the
creator of image viewer Kuikshow and the KISDN telephony program and has
been a contributor to several other KDE projects, including KDE 3's meta
data facilities.  When I contacted him, he had a very insightful note about
the benefits Season of KDE students are getting: "collaborating on software 
development (which is something you hardly learn in computer science classes)".  He continues: "Due to lack of time, I cannot develop much for KDE myself recently, so the
least I could do is help others doing that."



Jovev is a computer science major at the <a href="https://www.elfak.ni.ac.yu">Faculty of Electronic Engineering</a>, University of Nish in Serbia.  The KMetaLibrary project is his first formal involvement with KDE, though he tells me has written small patches in the past that were not published.  His Season of KDE page imparts that he has been a KDE user for six years and has had software development experience with <a href="https://www.irvas.co.yu/english.html">Irvas International</a>.




## Corey Latislaw's <a href="https://developer.kde.org/seasonofkde/project.php?koffice_clipart_browser.xml">KOffice ClipArt Browser</a> (mentored by Carsten Pfeiffer)

Clip art has undeniable appeal to those doing casual desktop publishing, the exact Microsoft Office jockeys that desktop Linux is targeting.  Such images usually have legal restrictions, but great strides have been made in compiling an <a href="https://openclipart.org/index.php">Open Clip Art archive</a>.  Latislaw is making a clip art library browsing application that she intends to integrate with <a href="https://www.koffice.org/">KOffice</a>.  The applications would be usable across all of <a href="https://docs.kde.org/userguide/kde-office-components.html">KOffice's many components</a>, where inserting an image would be applicable.



In the current version of KOffice, users can easily add preselected pictures to documents, but there are no tools to help them find images.  Latislaw's browser would present them with thumbnails of the images in their clip art libraries, similar to the behavior of many competing office suites.  Mentor Carsten Pfeiffer imagines clip art being selectable from any source, such as CDs or network directories, though Latislaw specifically outlined Open Clip Art integration to me.  He suspects that Latislaw will implement images categories organized and searchable by meta-data or perhaps even <a href="https://www.newsforge.com/article.pl?sid=04/07/14/1825228">content</a>.   
Some <a href="https://www.kde-look.org/content/show.php?content=3156&PHPSESSID=f6cee">
previous attempts</a> at coding a KOffice clip art browser seem to have been abandoned.



Latislaw is a student at <a href="https://fsu.edu/">Florida State University</a>, treasurer of their <a href="https://wics.cs.fsu.edu/aboutus.html"</a>Women in Computer Science</a> organization, and contributes to the FSU Student Leadership Corps.  Latislaw tells me that she has settled on using C++ for her project and has been refreshing her skills in the language.  She hopes to present the browser at aKademy




## Emmanuel Lesser's <a href="https://developer.kde.org/seasonofkde/project.php?touchscreen.xml">optical touchscreen</a> (mentored by Olaf Jan Schmidt)

Lesser's project is a fantastically innovative and interesting method for turning a $20 webcam and a user's existing monitor into a functional touchscreen.  His software will litter the screen with markers, which when photographed by the webcam and fed through <a href="https://en.wikipedia.org/wiki/Optical_character_recognition">OCR</a>, will recognize when a marker is missing (covered by a finger) and report it as the position of the user's click.  He hopes to bring touchscreens, whose applications include aiding the disabled, to the masses, foregoing expensive monitor hardware or Tablet PCs.  Mentor Olaf Jan Schmidt is a member of the KDE Accessibility team.



The optical method for touch recognition does have several hampering flaws.  Lesser intends to write a custom OCR engine tailored to the job which will have some performace penalties that will undoubtedly be exacerbated on older hardware. Logic algorithms, which lesser will write in <a href="https://en.wikipedia.org/wiki/Prolog">Prolog</a>, are needed to differentiate between markers users intentionally cover and those incidentally covered by their arms.  The webcam must also have a direct view of the monitor, which may involve a custom mounting solution and interfere with the user's workspace.  Calibration will be required before use.  Lesser does not address the possibility, if any, of conflict between a low-speed webcam video camera and CRT refresh rates, nor low-resolution images and the detection of markers.



Extensive coding is necessary for the project, ranging from low-level driver support to a graphical configuration utility.  Much of it will be ported from a 2003 prototype that Lesser wrote in JavaScript.  Nonetheless, he will have to code an OCR engine from scratch, develop Prolog algorithms to process the images, manage driver support, create a GUI using the technique, and author a plugin-like sub engine system to allow other applications to hook into his code.  Lesser laments the stagnation of his prototype, but states that, "I firmly believe that by coding a custom OCR-engine, using more flexible (low-level) languages like C and with my extended knowledge and experience, this application can become very fast and compatible with virtually any platform."



Ten more Season of KDE Projects projects will be examined
in the <a href="https://lwn.net/Articles/193724">second and final part</a> of this article series.
