---
title: "Phonon and the future of KDE multimedia"
date: 2006-05-05
pin: false
categories: [writing, article]
tags: [open source software, linux, kde, phonon, linux.com]
description: A 2006 Linux.com article about KDE's then-new for KDE4 multimedia subsystem, Phonon.
# image:
#   path:
#  alt:
---

*This article was originally published on Linux.com on 2006-05-05 at https://applications.linux.com/applications/06/05/05/1540250.shtml and is still on the web at [Linux.com](https://www.linux.com/news/phonon-and-future-kde-multimedia/).*

**Author: [N. Sanders](mailto:editors@ostg.com)**

The development of the next generation of KDE kicked off with the release of the [Qt 4 toolkit](https://www.trolltech.com/products/qt/index.html) and [aKademy](https://conference2005.kde.org/) conference last August and is now in full swing. KDE sub-projects from Kate to KWin are deep in the [midst of planning and coding](https://developer.kde.org/development-versions/kde-4.0-features.html) for the next major overhaul to GNU/Linux’s most popular desktop. Each of KDE’s applications must be rewritten to take advantage of Qt 4 and improve the look, power, and usability of KDE. The latest development announcement is for [Phonon](https://phonon.kde.org/), KDE 4’s multimedia framework, and the replacement for KDE 2 and 3’s aRts.

aRts has drawn the ire of developers and users for years, having long ago become [unmaintained](https://www.arts-project.org/doc/arts-maintenance.html) and outdated to the point where prominent KDE projects such as audio player [amaroK](https://amarok.kde.org/) no longer bother with it. aRts cannot compete with more modern multimedia frameworks such as [Gstreamer](https://gstreamer.freedesktop.org/) and [Helix](https://helixcommunity.org/), which do more of the developers’ work for them by transparently handling dozens of audio codecs for playback, mixing, and editing, and even do video. Other desktop environments such as GNOME and [Enlightenment](https://enlightenment.sourceforge.net/) have already standardized on such frameworks.

Clearly, aRts could not serve as the next generation KDE multimedia framework, but, given that KDE’s emphasis on integration effectively discourages adoption of established projects, what would? The solution will come in the form of a front end to these established frameworks, one for which plugins can be written to support any contemporary or future multimedia back end that has the basic features the Phonon API must provide. Phonon will support a sensible median of the playback, mixing, and effects features of Gstreamer, Helix, [Xine](https://xinehq.de/), [JACK](https://www.jackaudio.org/), [NMM](https://www.networkmultimedia.org/), and other back ends (even aRts), while presenting them to developers in a simple and unified API. The choice of which back end to use, if the user has several installed, will be user-configurable, with some power reserved for applications to choose or recommend their preferred back ends.

Phonon’s API will work no differently than any other Application Programming Interface. That is to say, it will be a layer of abstraction between KDE applications and the world of media handling. KDE apps will make calls to the list of functions that Phonon offers, and Phonon will, in turn, reroute those calls toward the chosen back end. Phonon’s plugins essentially translate the calls made to Phonon’s API to the APIs of other multimedia frameworks. By this method, developers can [play videos](https://developer.kde.org/documentation/library/cvs-api/kdelibs-apidocs/phonon/html/classPhonon_1_1MediaObject.html), [record from microphones](https://developer.kde.org/documentation/library/cvs-api/kdelibs-apidocs/phonon/html/classPhonon_1_1AvCapture.html), [lower the volume](https://developer.kde.org/documentation/library/cvs-api/kdelibs-apidocs/phonon/html/classPhonon_1_1AudioOutput.html), or do anything else they require with just a few lines of code that will work no matter whether the user prefers Gstreamer or Xine.

Though they are two rather different things, a comparison between aRts and Phonon should leave little doubt in a programmer’s mind as to which he would prefer to use. aRts is a sound server with a low-level media framework API, whereas Phonon is a high-level, task-oriented API that leaves the low-level dirty work to its back ends. Phonon lead developer Matthias Kretz gives the following code comparison:

“In aRts, to create a PlayObject for a URL [and] connect it to the output, a few
checks and asynchronous handling was necessary. With Phonon this is all done
in the background.”

```
Sample code in aRts
void ArtsPlayer::play(const FileHandle &file)
{
   if(!file.isNull())
       m_currentURL.setPath(file.absFilePath());

   if(m_server->server().isNull()) {
       KMessageBox::error(0, i18n("Cannot find the aRts soundserver."));
       return;
   }

   if(!m_playobject || !file.isNull()) {
       stop();

       delete m_playobject;
       m_playobject = m_factory->createPlayObject(m_currentURL, false);

       if(m_playobject->object().isNull())
           connect(m_playobject, SIGNAL(playObjectCreated()),
SLOT(playObjectCreated()));
       else
           playObjectCreated();
   }

   m_playobject->play();
}

void ArtsPlayer::playObjectCreated()
{
   setVolume(m_currentVolume);
}

It's much simpler with the Phonon API:

void ArtsPlayer::play(const FileHandle &file)
{
   if(file.isNull())
       return;
   m_currentURL.setPath(file.absFilePath());
   m_mediaobject->setUrl(m_currentURL);
   m_mediaobject->play();
}
```

Kretz also says that Phonon will implement “per-application software volume controls, grouped into categories,” which means that video players can be cranked all the way up while notifications are relegated to quiet beeps in the background. This ought to be a welcome usability enhancement to those who wonder why every application must have its own volume control, and some none at all. He continues, “Phonon will let applications do multimedia in-process (well, if the back end does it like this). With aRts, everything was running in one thread in the artsd process.” A common problem in today’s KDE is one faulty program taking down the entire sound server; Phonon should help to limit that.

Kretz is excited about the advanced hardware handling that Phonon’s cooperation with KDE 4’s [Solid](https://solid.kde.org/) hardware compatibility project will provide. He gives the following example of what can be done by this tandem:

*   You’re working on your computer, and a VoIP call comes in.
*   You answer the call while searching for your USB headset.
*   While talking to the other side via the internal mic and speakers you plug
    in the USB headset.
*   Solid notifies Phonon about the new sound card device.
*   Phonon sees that the Communication category prefers the USB headset over the
    internal soundcard.
*   VoIP program switches to the USB headset and a passive popup notification
    shows the change and a button to undo the switch.
*   Standard KDE notifications are still played through the [speakers] as
    the preferred output for the Notification category is the internal sound card.

Configuration of which application category uses which hardware output will likely be done via a [KControl](https://vir.homelinux.org/blog/index.php?/archives/25-guid.html) module. Because Phonon relies on independent multimedia frameworks to do the actual media handling and hardware I/O, it should also be more portable than aRts was, and KDE 4 has a focus on portability.

## Not without limitations

Phonon can’t do everything, though. Kretz warns that some developers may need to access back ends directly. “To design the Phonon API I did not look at what the frameworks can offer but at what the applications need to do. In the end I defined a functionality that a Phonon back end has to supply…. That means that the full power of the media framework that is used to implement a back end is not available to the developer using only the Phonon API. I guess it’s probably the 80 – 20 rule: 80% of the developers will be satisfied with what Phonon can do, 20% will need more power/control/features and will need to use something else together with Phonon or completely without using the Phonon API at all.”

Although it was announced on April 27, much of the work for Phonon is already finished. Phonon’s [roadmap](https://phonon.kde.org/cms/1007) indicates that the project design and even the [playback API](https://developer.kde.org/documentation/library/cvs-api/kdelibs-apidocs/phonon/html/index.html) have been drafted. Early [reaction](https://dot.kde.org/1146140474/) to the API has been positive, with commendations for its simplicity. A reference back end has also been implemented, and the first working one is under construction [for Network-Integrated Multimedia Middleware](https://www.motama.com/press/PR-Phonon-NMM-Linuxtag2006-engl.html). Ahead of the Phonon team lies some testing and work on the audio-video effects and capture APIs, all of which is in the preliminary stages. The team expects Phonon to be integrated with the KDE 4 codebase around June, with work on a network API to follow.

Phonon is just one of the initiatives that are bringing developers together to make KDE 4 a better designed desktop than its predecessors. [Appeal](https://appeal.kde.org/wiki/Appeal) is a collaboration of designers who are seeking to improve the appearance and visibility of KDE through projects such as the new SVG icon theme and visual motif [Oxygen](https://www.oxygen-icons.org/), hardware accelerated animations labeled [Coolness](https://appeal.kde.org/wiki/Coolness), and desktop search engine [Tenor](https://appeal.kde.org/wiki/Tenor). The [Plasma](https://plasma.kde.org/) coalition is rethinking the desktop interface, which they believe is “essentially the same as [it was] in 1984.” The aforementioned Solid is improving hardware support to help applications manage things like USB devices and wireless networks dynamically as they are connected and disconnected. This system of initiatives is unique in that they are not isolated software projects, but rather groups of people dedicated to enhancing specific qualities of KDE across its many constituents, writing new code where needed. Each initiative has also been accompanied by a fair amount of enthusiasm and discussion thanks to strong marketing, building excitement and hype for the eventual release of KDE 4 in early 2007.
