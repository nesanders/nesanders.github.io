---
title: "KDE tips and tricks"
date: 2005-02-01
pin: false
categories: [writing, article]
tags: [open source software, linux, kde]
venue: "NewsForge"
description: A 2005 Newsforge article with a variety of tips and tricks for using KDE 3.
# image:
#   path:
#  alt:
---

*This article was originally published on Newsforge on 2005-02 at https://software.newsforge.com/article.pl?sid=05/01/20/1822225, but the site no longer exists and is not archived on the Wayback machine or elsewhere.*

The [K Desktop Environment](https://www.kde.org/) (KDE) is incredibly popular in the world of GNU/Linux. Distributions such as SUSE and Mandrakelinux use it by default. KDE has some useful features that, while easily accessible, are less prominent. Just as a camera inexplicably makes a cell phone more fun to use, KDE's cool but unnoticed details may make it more attractive to prospective users. Read on to learn about a few such features may help you every day.

The following screenshots and instructions apply to KDE's default state as installed by the Debian Sid distribution.

*Screenshot: In this screenshot, a video player has been stripped of its border and set to the top. Next to it is a Gaim buddy list that is kept on top and shaded. These settings allow the two to stay unobtrusively in view.*

## Using the advanced features of KWin

KWin is KDE's window manager, which means it organizes the placement of applications into windows so that you may easily use many of them simultaneously.

* To shade a window, right-click on its border and click Shade in the resulting menu. After you do, the window will roll up whenever you aren't using it. When you want to see it again, moving your cursor over its border will restore it.
* To keep a window on top, right-click on its border, select the Advanced sub-menu, and click Keep Above Others. This will keep the window visible as you work in the windows below it.
* To resize a window to the full-screen, right-click on its border, select the Advanced sub-menu, and click Fullscreen. To return the window to its previous size, press Alt-Space and disable the Fullscreen option.
* To hide a window's border, right-click on its border, select the Advanced sub-menu, and click No Border. To restore the window's border, press Alt-Space and disable the option. Removing the border will save you a few pixels of valuable screen space.

## Creating and using hot keys

Hot keys are keyboard shortcuts to commands. They allow you easy access to any action without fumbling through menus, by simply pressing a short sequence of keys. The KDE Control Center (KControl) allows you to create hot keys you can use with any application.

Let's assign one of the actions in the previous section to a hot key. Open KControl (use the console command `kcontrol` or find it in the K Menu), expand the Regional and Accessibility branch, and select Keyboard Shortcuts. You will be presented with dozens of actions to assign hot keys to. Scroll down to (or search for) the Shade action and select it. In the Shortcut for Selected Action frame, select the Custom button and enter a key sequence -- for instance, Ctrl-Alt-S -- then click the Apply button. Press the sequence to try shading KControl.

Next, let's assign a keyboard shortcut to a command using the Desktop Communications Protocol ([DCOP](https://en.wikipedia.org/wiki/DCOP)). Still in KControl under the Regional and Accessibility branch, select the KHotKeys module. From here you can assign keyboard shortcuts and mouse gestures to commands that the Keyboard Shortcuts module does not provide.

For the purposes of this example we will set a key to pause the [Kaffeine](https://kaffeine.sourceforge.net/) media player. Press the New Action button to begin, and set the Action type to Keyboard Shortcut -> DCOP Call (simple). Select the Keyboard Shortcut tab, then click the lone button to follow the familiar steps of assigning a key sequence. Now select the DCOP Call Settings tab and type `kaffeine` for Remote Application. Set the Remote object to `KaffeineIface` and the Called function to `pause`, then click Apply. Your keyboard shortcut will now toggle a running Kaffeine player between pause and play. You can do something similar for other applications; you can generally find instructions in each application's documentation.

Most applications designed for integration with KDE have a Configure Shortcuts dialog accessible through their Settings menu that will let you create hot keys that work specifically for that application, and only when its window is selected.

*Screenshot: Here; the Bookmarks, Services, and Media Player sidebars are visible. The page being displayed is in File Size View mode, and a console is open (and horribly blurred out) at the bottom.*

## Using Konqueror's advanced features

Konqueror is KDE's file manager and Web browser. You can turn on its sidebar by going to the 'Window' menu and selecting Show Navigation Panel. The Navigation Panel will appear as a sidebar to Konqueror, with tabs to switch between tools. You can use it to Quick Browse your filesystem (Folder utility), mount CDs (Services utility), or even play music (Sidebar Media Player utility). To have more than one panel open at once, right-click on one of the tabs, select the Configure Navigation Panel sub-menu, and then the Multiple Views option. You can also add new tabs from this menu. Also, clicking Show Terminal Emulator in the Window menu will open an integrated Konsole.

Konqueror supplies many different ways to view your files. Along with the standard Icon, Tree, and Detailed List views is the excellent File Size view, which displays files and folders as graphical sections of your Konqueror page. Larger files are represented by larger blocks, allowing you to visualize your file system. You can configure how this information is presented to you in the bottom section of the View menu.

In Konqueror's Window menu are options to Split View horizontally and vertically. Splitting a window's view lets you see two pages at once, which can be useful for filling in forms at one Web page with information from another, or easily dragging and dropping files from one folder to another.

If you've created a combination of Konqueror options that suits you, you can save it for future use. Go to the Settings menu and click Save View Profile, enter a name for it, and click Save. To load it again later, go back to the Settings menu, the Load View Profile submenu, and click on the name you saved.

[KIO](https://en.wikipedia.org/wiki/KIO) slaves are a much-touted, and oft under-appreciated, aspect of KDE. [KIO slaves](https://osdir.com/Article2159.phtml) allow you to access a number of APIs as if they were Internet protocols in Konqueror. In the same way that you would attach https:// to a Web site's URL, you can access your configured devices by going to devices:// in Konqueror. You can find a list of the KIO slaves on your system in the Protocols section of KInfoCenter. A few you might appreciate are locate://, man://, settings://, and print://. The audiocd:/ KIO slave is especially well implemented. Visiting it with an audio CD in a drive presents you with a list of the files on the CD, any of which can be double-clicked to play. There will also be MP3 and Ogg Vorbis folders that you can simply copy to your hard drive to rip the CD to either format.

*Screenshot: Gedit being rendered in Qt, on top of the GTK-Qt KControl module.*

## Rendering GTK+ apps with Qt

One of the most unfortunate side effects of choice is incompatibility. You may have noticed that applications meant for KDE (which are written using Trolltech's [Qt](https://www.trolltech.com/products/qt/index.html) toolset) look different from those meant for GNOME (which uses the GIMP Toolkit ([GTK+](https://www.gtk.org/))). If you want a more consistent look, you can turn to the [GTK-Qt](https://www.freedesktop.org/Software/gtk-qt) project, which creates a KControl module for simple configuration. Installing and enabling (through KControl) GTK-Qt forces GTK+ applications to call Qt to render their widgets, effectively making GNOME software look like KDE software.

I hope these tips may help those of you who are partial to KDE squeeze more use out of your desktop experience.
