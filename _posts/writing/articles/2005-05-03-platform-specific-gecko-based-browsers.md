---
title: "Platform-specific Gecko-based browsers"
date: 2005-05-03
pin: false
categories: [writing, article]
tags: [open source software, linux, web browsers]
venue: "NewsForge"
description: A 2005 Newsforge article about platform-specific browsers based on the Gecko rendering engine.
# image:
#   path:
#  alt:
---

*This article was originally published on Newsforge on 2005-05-03 at https://internet.newsforge.com/article.pl?sid=05/05/03/1649210 and still available on the web at [Linux.com](https://www.linux.com/news/platform-specific-gecko-based-browsers/).*

Among the goals common to most open source projects is cross-platform compatibility, which allows developers to expand their user base and allows users to deploy the software more widely. But while some users enjoy having consistent software across the various platforms that they use, sometimes a browser that’s optimized for a particular operating system may be a better choice. The three open source Gecko-based browsers detailed here all use their respective operating systems’ native widget toolkit to render their user interfaces.

Gecko is the open source page-rendering engine used by [Mozilla Firefox](https://www.mozilla.org/products/firefox/). It has attracted a large base of developers, some of whom have used it to create browsers explicitly for users of certain platforms. While these applications all share Gecko’s tabbed browsing feature, they also can provide features that are available only on specific operating systems by using a platform’s native widget set. This platform-specific optimization improves the browsers’ usability and speed compared to a cross-platform browser such as Firefox.

> What’s a widget?
> 
> A widget toolkit provides the various forms, list boxes, scroll bars, and buttons used to construct any program with a graphical interface. It’s the library that describes how those objects (widgets) should look and react to user input. Each operating system generally has one or two primary toolkits that the majority of its software uses.
> 
> Firefox and many other Mozilla applications use the XML-based User-interface Language (XUL), a markup language to describe interfaces similar to the way HTML describes Web pages. XUL code is rendered with the same Gecko engine the software uses to display Web pages, so the interfaces can be ported easily to any system Gecko can. Unfortunately, because it is not designed and optimized for a specific system as a native toolkit is, XUL interfaces are slightly slower and less responsive than others. More importantly, they do not provide the same look and feel as most of the applications on a given system (which generally use the native toolkit), which may make users uncomfortable and confused with the XUL-based application’s appearance.
{: .prompt-info }

## K-Meleon

Any Windows browser must compete with Internet Explorer 6 (IE), the system’s default and most used browser. [K-Meleon](https://kmeleon.sourceforge.net/) has managed to distinguish itself with an especially functional and efficient interface. K-Meleon users can create a custom GUI to best suit their needs. They can control each individual menu option, toolbar button, mouse gesture, and keyboard shortcut so they can easily manage open tabs, surf the Web, and use the program’s more advanced features. Users can make many of these changes through menus and the preferences dialogue, but to implement some obscure options users need to edit config files. Those who do not wish to hand-tailor options can download a pre-made profile. Because it uses the Windows standard Microsoft Foundation Classes toolkit, K-Meleon can blend in with its surroundings, but for those who don’t mind a different look, the developers offer several [themes](https://kmeleon.sourceforge.net/wiki/index.php?id=KMeleonThemesWiki) on their site.

A barrier to the adoption of alternative browsers on Windows has been Internet Explorer’s speedy startup, thanks to the fact that IE loads a copy of itself into RAM at Windows startup. K-Meleon too supports this “symbiotic loading” method. But even those who don’t want unused programs using RAM will find K-Meleon noticeably faster than Firefox in a “cold start.”

K-Meleon has a macro language that acts in a way similar to Firefox’s extension architecture. Coders can write what are essentially plug-ins to extend the feature set of the browser. K-Meleon’s extensions include RSS aggregators for news feeds and even a slide show mode within the interface.

![K-meleon screenshot]({{"/assets/img/writing/2005_newsforge_gecko/kmeleon.png" | relative_url }})
*K-Meleon’s Flexibility*

## Camino

The default browser for Mac OS X, Safari, is a much less dominant competitor (in terms of market share) than IE. It uses the Mac platform’s beautiful Cocoa toolkit. The Mozilla Foundation has responded with its own Cocoa-based browser: [Camino](https://caminobrowser.org/).

Along with its pretty graphics, Max OS X has made available to all its programs some useful tools. It has a system-wide address book so that users can get information about their contacts, and a “Keychain” so users can store passwords and login information securely in any well-integrated program on the system. Camino supports both of these tools and other services in OS X’s Application Menu just as Safari does.

Camino’s bookmark manager has a split-panel interface, as in Safari and iTunes. Aside from being immediately understandable to users of those programs (meaning just about every OS X user), the split panel makes it easy to organize bookmarks into folders and place them on a toolbar. Camino’s download manager compiles every active download into a list, and simultaneously displays each of their vital statistics (such as size, download speed, and remaining time).

![Camino screenshot]({{"/assets/img/writing/2005_newsforge_gecko/camino.png" | relative_url }})
*Camino’s Interface*

## Kazehakase

Because [Kazehakase](https://kazehakase.sourceforge.jp) was designed for GNU/Linux, it’s the only browser on this list that does not have to compete with some version of IE or a single default and entrenched browser. Many Gecko-based browsers are available under GNU/Linux, using either of the two most common toolkits on the platform, GTK+ and Qt. Though [Galeon](https://galeon.sourceforge.net/), [Epiphany](https://www.gnome.org/projects/epiphany/), [Skipstone](https://www.muhri.net/skipstone/), [Salamander](https://members.tripod.com/OskarK/salamander.html), and even Konqueror (with the advent of KMozilla) share many design elements, Kazehakase has managed to develop its own set of impressive and innovative features.

Kazehakase uses GTK+, but will still fit in with a Qt-based KDE environment if used in conjunction with software like [GTK-Qt](https://www.freedesktop.org/Software/gtk-qt). Its interface is configurable on a level similar to K-Meleon’s, and it even offers three default settings for beginning, intermediate, and advanced users.

Advanced desktop search is becoming a popular feature on many platforms. It’s no longer enough to identify files simply by their filename, and so too should it not be enough to identify a Web page simply by its title. For that reason, Kazehakase provides a full-text history search. If you enable it, you can search through any page you’ve ever visited for any phrase that was written in it.

### Kazehakase Tabs

Most impressive is Kazehakase’s management of tabs. One of its sidebar’s modes is a tree view, which lets you see which pages you’re looking at came from which in a parent-child relationship. Another view in the tab bar represents closed tabs with actual screenshots of them. This graphical description is much more informative than the page title or URL that you would expect to see in the History panel of other browsers. Kazehakase has session management, so you can choose to have it remember each of your open tabs and reload them next time you browse. It also offers a “zoom” feature that lets users enlarge images and text on pages.

![Kazehakase screenshot]({{"/assets/img/writing/2005_newsforge_gecko/kazehakase.png" | relative_url }})
*Kazehakase's Interface*


K-Meleon, Camino, and Kazehakase all enhance a browser’s usability and effectiveness because they embrace their platforms’ abilities. Because of their integration with native operating system feature, they may be easier for new browser users to learn than a XUL-based browser such as Firefox. For more experienced users, these applications sport many innovative and useful features.
