---
title: "KDE 4 Multimedia Meeting exceeds expectations"
date: 2006-05-31
pin: false
categories: [writing, article]
tags: [open source software, linux, kde, phonon]
venue: "NewsForge"
description: A 2006 Linux.com article about KDE's then-new for KDE4 multimedia subsystem, Phonon.
# image:
#   path:
#  alt:
---

*This article was originally published on Newsforge on 2006-05-31 at https://software.newsforge.com/software/06/05/31/1536229.shtml and is still on the web at [Linux.com](https://www.linux.com/news/kde-4-multimedia-meeting-exceeds-expectations/).*

KDE members associated with the desktop environment’s major multimedia components and marketing efforts met last weekend in Achtmaal, The Netherlands, at the [KDE 4 Multimedia Meeting](https://www.kde.nl/agenda/2006-05-k3m/index-en.php) (K4M, previously known as K3M). Attendees discussed goals for their projects and wrote a fair amount of code that promises exciting improvements in KDE 4’s multimedia components.

K4M attendees hailed from 15 countries and four continents. While open source software is often developed by individuals separated by thousands of miles who communicate through email and IRC, airfare and lodging expenses may be justified for short bursts of fantastically productive meetings such as this. Meeting organizer Adriaan de Groot notes in his [blog](https://people.fruitsalad.org/adridg/bobulate/index.php?/archives/208-guid.html), “It’s difficult to quantify how much extra bandwidth ‘being there’ adds to development, but our past experiences are just great.”

The weather in Achtmaal was unfortunately rainy over the weekend, so most attendees chose to stay inside the [Annahoeve hotel](https://www.wallsteijn.nl/). Nonetheless, Sebastian Kügler’s [photo gallery](https://vizzzion.org/?id=gallery&gcat=KDE4MultimediaMeeting) illustrates a happy and well-entertained group. Meeting organizers made sure that food and accommodations were available to the programmers so that they need not worry about such distractions. A [day](https://dot.kde.org/1148680949/) by [day](https://dot.kde.org/1148805012/) first-hand rundown of the meeting is available at The Dot, KDE’s news site.

The meeting began with a presentation by amaroK developer Max Howell. Though work continues on amaroK 1.4, much of the discussion at the meeting would revolve around amaroK 2, planned for release alongside KDE 4. The first step towards 2.0, porting the code to [Qt 4](https://webshop.trolltech.com/products/qt/qt4info.html), began during the meeting. As coding continues, the team plans to utilize the advanced features of Qt 4 to enhance amaroK’s interface. Developers hope to add Windows support for version 2, as well as improved [last.fm](https://www.last.fm/) integration. Users can already have their listening habits submitted to the site and be returned a list of songs which they may also like. Users may soon take advantage of last.fm’s other features, including being able to stream suggested songs that are not in their collection. Last.fm also provides the capacity to automatically create playlists tuned to users’ interests, and automatically fill in missing tags for their files.

Though the attendees were eager to discuss the next major version of amaroK, they didn’t neglect the current version (1.4.1). A [dramatic improvement in startup time](https://lists.kde.org/?l=kde-commits&m=114874707422018&w=2) and a similar speedup for the context browser were committed to the repository during the meeting, which will benefit users following the next minor release. The moodbar, which made the color of the song position bar reflect the “mood” of the currently playing song, was removed because it was no longer being maintained. The collection will now also be updated via inotify signals from newer kernels (2.6.13 and above), which allows amaroK’s song database to reflect changes in a user’s collection instantly. A new mailing list set up by [roKymotion](https://amarok.kde.org/amarokwiki/index.php/Promotion) will inform distribution package maintainers about amaroK. This should help to dispel problems such as distributions making their amaroK package rely on MySQL inappropriately.

User interface changes that were made to the current version include a categorized display for scripts in the script manager and experimentation with the position of the context browser. Users will be able to move the browser to the top of the window, above the playlist, from its current position alongside the other browsers, which are used for playlist creation and media device handling. This will allow users to have things such as lyrics and Wikipedia information available without having to switch away from the other browsers. The additional width afforded by a horizontal situation will also ease viewing of Wikipedia pages and other context information. Many of the changes planned for amaroK 2.0 may also find their way into 1.4.1.

## Phonon, KIO, and more

Following Howell’s talk was a presentation by Phonon lead developer Matthias Kretz. He gave an overview of Phonon, the [recently unveiled multimedia API for KDE 4](https://applications.linux.com/applications/06/05/05/1540250.shtml?tid=26&tid=39). [Great progress](https://lists.kde.org/?l=kde-commits&w=2&r=1&s=phonon&q=b) was made on his project at the meeting, much of it to satisfy the needs amaroK developers expressed.

KHTML developer Allan Sandfeld Jensen made a significant improvement to [KIO](https://en.wikipedia.org/wiki/KIO), which is responsible for handling network protocols for KDE applications. His work allows programs to seek during media playback, which will allow, for instance, users playing videos over HTTP to skip to the middle of a file without having to watch its entirety.

Because KDE multimedia applications besides amaroK were not well represented at the meeting, little progress was made for projects such as Kaffeine, Juk, and Noatun. However, all KDE applications will benefit from the work done on fundamental KDE technologies such as Phonon and KIO.

The meeting, one of a series of KDE subproject meetings designed to accelerate the version 4 development process, was sponsored by KDE supporters such as [Novell](https://www.novell.com/) and [Trolltech](https://www.trolltech.com/), and attended by about 20 representatives from the KDE Multimedia team (consisting chiefly of [amaroK](https://amarok.kde.org/) and [Phonon](https://phonon.kde.org/) developers), the KDE marketing team, and [Open Usability](https://openusability.org/). Previously, the [Personal Information Management](https://pim.kde.org/development/meetings/nlpim1/index.php) team met, also in Achtmaal. Other major KDE subprojects expect to announce similar gatherings.

The subproject meetings and initiatives such as [Appeal](https://appeal.kde.org/wiki/Appeal) and [Plasma](https://plasma.kde.org/) are both professionally executed marketing strategies and methods for focusing developer manpower in areas which are crucial to KDE’s success. By leveraging support from its backers, who sponsor developers as well as meetings, KDE has been able to adopt many of the financial and organizational advantages which proprietary commercial software companies traditionally hold. [Kügler writes](https://vizzzion.org/?blogentry=623), “All in all, the meeting has exceeded all our expectations by far…. The network effects of the meeting are not measurable, but probably even more important than the code that has actually been written.”
