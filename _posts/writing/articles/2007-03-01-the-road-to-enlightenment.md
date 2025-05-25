---
title: "The Road to Enlightnement"
date: 2007-03-01
pin: false
categories: [writing, article]
tags: [open source software, ps3, enlightenment, linux, linux format magazine]
description: A 2007 Linux Format Magazine article about the Enlightment desktop environment running on a Linux distribution for the PS3.
# image:
#   path:
#  alt:
---

*This article was originally published in print in [Linux Format Magazine Issue 90](https://linuxformat.co.uk/archives?issue=90) on 2007-03.*

*A PDF copy of the article including screenshots and graphics is available [here]({{"/assets/articles/2007_linux_format_90_ps3.pdf" | relative_url }}).*

# The road to Enlightenment

The fabled E17 has appeared at last... on the PlayStation 3! Nathan Sanders explains how some bad news for Yellow Dog transformed the desktop project.

If you enjoyed the hours of fiddling it took to get Linux running on a PS2, or took up Michael Robertson's challenge to install Linux on an Xbox, we're sorry. If you just want to exercise the right to use hardware that you've paid for the way you want to use it, welcome. Sony has taken all the hard work out of installing a Linux operating system on its next-generation games console, and when you're done, you'll see a desktop that might surprise you if you were expecting a standard GNU/Linux experience.

That's because Terra Soft has pulled Enlightenment out of the development doldrums for a PS3 version of its Yellow Dog Linux distro, and after five years of development, the Enlightenment 17 (E17) desktop environment is ready for the shelves and ready for your new console. The development of this flavour of Yellow Dog and, as we'll see, the completion of E17 itself, was put in motion back in 2003 when Sony chose the Cell processor (a highly customised derivative of the PPC) as the basis for its new PlayStation 3 console. Let us explain...

> **On the Cell**
>
> The Cell processor used in the PS3 is composed of a primary processing unit - which is binary-compatible with code written for other Power devices such as the Apple G5 - and eight specialised processing units. In order to take advantage of these secondary components, code must be specially written and optimised for the Cell. As with other multi-core processors, this will not do much to aid word processors or web browsers, but could be a tremendous boon to audio encoders or video renderers. Yellow Dog 5 ships with a Cell SDK, which Yellow Dog CEO Kai Staats calls a "good first step toward code optimisation for the Cell", from the Barcelona Supercomputing Centre. To get in deeper, he recommends a compiler from RapidMind at www.rapidmind.net and the MCF Cell libraries from www.mc.com.
{: .prompt-info }

## The Yellow Dog connection

The first Yellow Dog distro was released in 1999 and marketed at Linux enthusiasts who owned Mac hardware. To fill this niche, Terra Soft developed an operating system for the Power architecture used in Apple hardware, rather than for Intel's x86 chips, which are used in almost everything else. The company continued this way until the present day, selling its KDE-based distro primarily to Macintosh owners and occasionally developing specialised applications for supercomputing.

But Terra Soft had to reinvent itself when Apple dealt a blow in 2005 by switching from PowerPC to the Intel x86 architecture. It has responded by becoming a major player in the PPC supercomputing field through improvements to its Y-HPC supercomputer operating system, which works with PPC and x86 hardware. The company has even developed highly specialised software used in gene sequence analysis for the PPC platform. So it was in a great position to capitalise when Sony chose PPC as the basis for its PS3.

Yellow Dog would need a light, graphically-pleasing Linux desktop for its new PS3 version, so in the early summer of 2006 Terra Soft approached Enlightenment lead developer Carsten Haitzler with a proposition to use the new version of his desktop, the hotly anticipated but heavily delayed E17. Haitzler was excited but not entirely enthusiastic: Haitzler refuses to stamp Enlightenment even with the precautionary beta seal if there is a single known bug; according to him, "Alpha is where you finish your feature set but have a list of non-major bugs you know about". At the time Terra Soft approached him, and even after it shipped his work in November, he called Enlightenment 17 pre-alpha.

Despite its developmental nature, it's not hard to understand Terra Soft's reasoning for putting Enlightenment in its flagship product: in Haitzler's words, Enlightenment offered the distro "wipe-on sex appeal." Of course, the decision wasn't all about eye candy. Enlightenment, in contrast to KDE and Gnome, is known for its quick start-up time (usually just a few seconds from login) and general snappiness. Its low memory requirements were also a factor. Though the PS3 has no shortage of processor power, it has only 256MB of RAM. Yellow Dog 5 running Enlightenment on the PS3 uses only about 65MB of RAM, which means you'll have plenty left over for other applications.

Although E17 promised to be a giant step from the previous version of Enlightenment (DR16.0 was released in 2000), it was to be written from the ground up without E16 code, and while it has been drawing attention throughout its development for the eye candy it pumps out on even the lowliest of systems, many potential supporters have been driven away by its tedious pace of work. That Enlightenment was a work in progress was no surprise to Terra Soft CEO Kai Staats, who determined to help the project along. To push Haitzler's team, Terra Soft focused them on several specific projects that both parties determined were most immediate and necessary. For some, they provided cash bounties to coders who volunteered for the task.

Staats reports joyfully that every major project was completed, including an overhaul of the desktop panel code, a rewrite of the background image control module, integration of the new 'fm2' file selector, extension of drag and drop support, and adoption of the Freedesktop.org standards for desktops, icons, and menus.

These things were already under consideration and would have been done (eventually) with or without Terra Soft, but the sponsorship sped everything along. Staats would not comment on the value of these bounties, but from the amount of work that was done we can assume that the developers were not working for peanuts; and everything created with Terra Soft's help has the same BSD licence as the rest of Enlightenment.

Enlightenment isn't the only desktop to come with an armful of eye candy - KDE and Gnome are capable of impressive animation and effects as well, but not when running on the PS3. Xgl and AIGLX both use OpenGL for hardware acceleration, with an overlying compositing window manager built for the server such as Compiz or Beryl. Unfortunately, due to restrictions Sony has placed on the PS3 hardware, OpenGL is not a possibility. But that's OK; Enlightenment doesn't need OpenGL.

> **Yellow Dog 5: from supercomputer to PlayStation**
>
> Modifying the Yellow Dog distro for the PS3 was a relatively simple task. Terra Soft was the first commercial Linux distributor to support the Cell, through a 2005 cooperative effort with Mercury Computers, and aside from the processor architecture, the PS3 is more or less a typical PC, complete with a hard drive, six USB 2.0 ports, Flash card slots, Ethernet, Wi-Fi and an optical drive.
> 
> Nonetheless, Yellow Dog 5 does not support the PS3 perfectly. Standard TVs have a far lower resolution than the average computer monitor, so unless you're using a high-definition television your screen space will be limited. YD5 setup will be different as well, requiring you to use a text-mode installer and do some post-install configuration to get running. At the time of writing, the PS3's built-in wireless card is not supported, though Terra Soft's Kai Staats is expecting help from Sony in fixing this.
> 
Bluetooth devices, too, are troublesome. Yellow Dog can read data from Blu-ray discs inserted into the PS3, but the codecs required to play Blu-ray video could not legally be included with the distribution. When asked about the possibility of working with Sony to remove the restrictions on the PS3's RSX graphics chip that keep Yellow Dog from using hardware accelerated graphics, Staats would only comment, "We are talking with them about it..."
> 
> Yellow Dog is not the only distribution available for the PS3. It must share its territory with Fedora, Gentoo and other PPC-supporters to come. For the moment, however, it will be the only one you can find sitting next to a PlayStation 3 on store shelves and the only one that officially supports the PS3 hardware. As for its specs, YD5 is built on a Fedora Core 5 base, and includes standard tools such as Yum. There's OpenOffice 2.0, GCC 4, KDE 3.5, Gnome 2.14, Firefox 1.5 and the 2.2.16 Linux kernel.
> 
> It is available on DVD or pre-installed on a PS3 (in very limited supply) at www.terrasoftsolutions.com from $49.95. Publicly accessible, unsupported, free download mirrors should be up by January. Though Yellow Dog 5 may still be usable on PPC Apple hardware, Terra Soft claims that it has not yet been tested.
{: .prompt-info }


## Better than Cairo?

Enlightenment's ritzy 2D animation, courtesy of the Evas canvas library, might incite comparison with the Cairo graphics library that has been making waves in the Gnome community. Haitzler warns that this is not a fair comparison. Cairo is a small library meant only to efficiently draw vector graphics, taking advantage of hardware acceleration where possible. Evas is something much more complex: it's a canvas where developers can specify objects such as lines, shapes, text and images, which can be easily manipulated and animated. It serves the same purpose as the Gnome Canvas, but is optimised for 2D animation. According to Haitzler, "Evas using Cairo as a rendering engine performs about one tenth of the speed of Evas' own rendering engine, but then again Evas is very bitmap-focused, and Cairo is vector-focused." Evas can use Cairo and even OpenGL for rendering, but those back-ends are not as supported or as well suited to the task as its own software renderer.

Some of Enlightenment's 2D effects are possible today in Gnome and KDE using Qt and GTK, but they have not been commonly implemented. On KDE, for instance, you can find a few window decoration themes with animated buttons and title bars. In some cases, speed and memory usage differentials between the Enlightenment Foundation Libraries (EFL) and the underpinnings of these other desktops are to thank for Enlightenment's good looks, but the different approach to eye candy is more of a cultural issue than a technical one: KDE was built for features; Gnome was built for accessibility; and Enlightenment was built for flashy effects.

> **Enlightenment 17's widgets**
>
> Just like Mac OS X, KDE and Gnome, Enlightenment 17 has a system for displaying applets with various functions, including email monitoring, note taking, photos viewing and suchlike.
>
> Enlightenment handles these toys through its Gadcon (Gadget Container) code. The gadgets go in shelves (desktop panels) and are managed in the Enlightenment control panel. In future versions of Enlightenment, developers hope to let users place these gadgets in window borders, menus, and other interesting locations. For E18, Carsten Haitzler is also planning tools to simplify themeing and desktop management.
{: .prompt-info }

## A strong foundation

The Enlightenment window manager is just one of many applications that use the underlying Enlightenment Foundation Libraries, which establish a set of components from which the E17 desktop and associated applications are assembled. Enlightenment is based on EFL in much the same way that KDE is built from the Qt toolkit and Gnome is built from GTK, though EFL encompasses a slightly different set of functionality than either of those two. There are more than a dozen individual libraries within EFL - a much broader scope than was initially planned. The Enlightenment team attribute much of E17's lengthy development cycle to the embellishment of these libraries. For information, documentation, and even example code that demonstrates how simple development with EFL can be, visit https://enlightenment.org. For now, here's a quick run through some of the more important component libraries.

*   **Imlib2** is a low-level image rendering and manipulation library.
*   **EPEG** is a thumbnailing (image scaling) library specifically for the JPEG format, useful for file and photo managers. Both of these libraries are faster than competing solutions popularly used in Gnome and KDE applications (such as gdk-pixbuf and the QImage Qt class).
*   **Epsilon** is a thumbnailing library that works with most image types and uses Imlib2 and EPEG where possible for optimal speed. It is Freedesktop.org-compliant, meaning that thumbnails are stored in PNG format in the ~/.thumbnails/folder, so other compliant applications don't have to duplicate scaling work.
*   **EVFS** is the Enlightenment virtual filesystem which, like KDE's KIO or GnomeVFS, abstracts various storage protocols so that obstructed files appear easily accessible to applications. At the moment, it supports bzip2, FTP, gzip, Samba, SFTP, and tar file protocols - a fair selection, but not quite on a par with all the KIO slaves that exist for such things as SSH and system configuration.
*   **Ecore** compiles several small, autonomous libraries into one package in the interest of simplicity and modularity.
*   **Edje** is Enlightenment's interface layout library, responsible for arranging each application's interface in the way that will be best for the user. This customised layout is recorded as an Edje Data Collection (EDC) within a .edj file (complete with images), a description of how these images will be arranged and any other information relevant to an interface's layout.
*   **EET** is used to archive these EDCs. It's another foundation library designed to store and retrieve compressed information as quickly as possible. The compression ratio is a secondary concern for EET - because its archives are used for GUI elements, compression and extraction speed is more important and delays would be very noticeable. Once an EDC is written, only very simple API calls to the Edje library are necessary to complete an interface.

## On the Edje

Like many of EFL's constituent libraries, Edje is designed to ease the job of developers and theme designers. By virtue of the abstraction that Edje provides, application developers can create very specific interfaces that remain well integrated into the Enlightenment desktop. Thorough programmers' guides and cookbooks for these libraries can be found at www.enlightenment.org/Libraries/Documentation and https://edevelop.org.

In a stunning example of naming clarity, Enlightenment's widgets are handled by EWL, the Enlightenment Widget Library; there's also ETK, a widget library designed with an API similar to GTK. Whichever toolkit you use, the widgets are styled by Edje and drawn to the screen with the Enlightenment canvas API, Evas. Evas translates the complex interfaces of Enlightenment applications into instructions for the X Window System so that they can be presented without the developer having to worry about screen resolution, colour depth or other display variables. It even converts graphical file formats and can handle automatic anti-aliasing.

One of the most interesting capabilities of Evas is that it can work with display methods other than X11; this, and its low performance demands, means that Enlightenment can be used on PDAs, mobile phones and beyond (Enlightenment developer David Seikel tests the desktop on a 100MHz Pentium machine to assure that it maintains efficiency).

Although EFL is seriously advanced, Enlightenment has one glaring hole: desktop applications. The current field of apps using EFL doesn't go far beyond EPhoto, a photo album manager and slideshow viewer; Entropy, a file manager using the evfs virtual filesystem; Emphasis, an iTunes-style music player that uses the MPD Music Player Daemon as a back-end; and Extrackt, an audio CD ripper that supports OGG, MP3 and WAV. (These are available at www.get-e.org.) Yellow Dog's adoption of Enlightenment will go a long way towards attracting developers to the Enlightenment platform, but for the moment users have to rely on software written for KDE, Gnome, and other desktops.

If you are a frustrated Enlightenment user who has been waiting half a decade for the release of version 17, you won't have so much trouble the next time around. The development of EFL became a far more intense endeavour than had been originally expected, and took its toll on the overall release. Seikel explains, "E17 was a write-everything-from-scratch process, something that the Enlightenment project is not scared to do when it needs to be done. E18 will be a steady-as-she-goes process, building on the solid foundation of E17. For E17 it was a long time before there was a usable window manager; E18 should be usable from the first commit. On the other hand, there are some things we decided to leave for E18, so there is still some growth to be expected. My prediction is that E18 will be released a lot quicker than E17."

Staats does not dismiss the danger in using a radical and immature desktop when very stable competitors exist. Terra Soft has made Gnome and KDE available on the Yellow Dog 5 DVD and its online repositories for users who prefer a more traditional Linux experience, but assures the concerned that Enlightenment and Yellow Dog 5 are ready for daily use. Terra Soft has been conscientiously testing the entire distribution on the PlayStation 3 since early in the summer 2006 in desktop, workstation, server, and even cluster scenarios.

> **Installing Linux on your PS3**
>
> The Yellow Dog 5 installation process is relatively simple, though it requires a bit of preparation. You'll need the installation DVD, a USB keyboard and mouse, and some sort of storage device. Powering on the PS3 and go to Settings > System Settings > Format Utility > Format Hard Disk in the Sony GameOS. Respond 'Yes', 'Yes' and then 'Custom' to the prompts. Now you'll be given a choice of partition sizes. Terra Soft recommends that you allot 10GB to the PS3 system when prompted. This should leave plenty of room for Yellow Dog 5 - the default installation with both E17 and Gnome is only about 3GB.
>
> Next you'll need to get a bootloader on to your PlayStation. Download the bootloader installer from www.playstation.com/ps3-openplatform and save it as /ps3/otheros/otheros.self. Then download the bootloader itself from www.terrasoftsolutions.com/support/install/ps3/otheros.bld and save it as /ps3/otheros/otheros.bld. Save the bootloader and the bootloader installer on to USB stick or other medium that the PS3 can read, then reboot your PS3 with the USB stick inserted and navigate to Settings > System Settings > Install Other OS in the GameOS. Follow the instructions to install the bootloader. Now, navigate to Settings > System Settings > Default System and select Other OS, and you'll be ready to install YD5. Once you're finished, you'll still be able to run the Sony GameOS whenever necessary by typing boot-game-os at the bootloader command prompt. Boot your PS3 and insert the Yellow Dog 5 DVD. Select Install to launch the Anaconda installer, with which you may be familiar from Fedora and Red Hat. From this point on, you will be guided by a pleasant graphical interface that concisely explains anything that might confuse the inexperienced.
>
> More information can be found at www.terrasoftsolutions.com/support/installation.
{: .prompt-info }

## "More than just a game box"

The futures of Terra Soft and Enlightenment, newly entwined, are bright. Staats hopes having Yellow Dog on the PS3 will broaden its audience: "The games will draw people in and the bonus of a personal computer operating system may keep them," he says. "Our push back into retail will place YDL on the shelves next to PS3s worldwide. Again, this increases visibility for Linux and opens eyes to the potential of the PS3 as more than just a game box." Gamers using OpenOffice.org? Now that is enlightened...
