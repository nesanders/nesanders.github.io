---
title: "French company embraces, contributes to free software"
date: 2006-08-18
pin: false
categories: [writing, article]
tags: [open source software, kde]
venue: "NewsForge"
description: A 2006 Newsforge interview with free software developer Aurélien Gāteau about his company's (Dental-On-Line's) investment in open source software development.
# image:
#   path:
#  alt:
---

*This article was originally published on Newsforge on 2006-08-18 at http://www.newsforge.com/article.pl?sid=06/08/11/1832232 and is no longer hosted or archived elsewhere on the web.*

<a href="https://www.dental-on-line.com/">Dental-On-Line</a>, a French company selling hardware and software for use in dentists' offices, offers full dental assistance suites and associated services. The twenty-first century dentist's office includes a computer with a touchscreen interface for displaying a patient's oral X-rays, photographs, medical history, treatment plans, and <a href="https://www.dental-on-line.com/fonctions.php">other information</a>, all of which needs to be kept secure and backed up. To that end, DOL implements a locked-down KDE interface running on Debian Linux, nightly rsync backups, and remote assistance via VNC for its customers. All data is made available to the customer in widely used formats, in case they choose to switch away from DOL.

While adapting Debian and KDE for use with touchscreen hardware, DOL's employees had to do a bit of hacking. In accordance with the GPL, they have been returning their code to the community, and recently launched a <a href="https://opensource.dental-on-line.com/?page_id=3">Web site detailing the various patches they have contributed</a>. The site lists code for <a href="https://www.kontact.org/">Kontact</a>, <a href="https://www.konqueror.org/">Konqueror</a>, <a href="https://docs.kde.org/development/en/kdebase/kdm/">KDM</a>, and <a href="https://opensource.dental-on-line.com/?page_id=16">Ghostscript</a>.
Clearly, DOL adheres to all the necessary components of good free software citizenship -- it even goes the extra mile and hires established OSS developers. <a href="https://gwenview.sourceforge.net/">Gwenview</a> lead developer and DOL employee <a href="https://www.kdedevelopers.org/blog/1586">Aur&eacute;lien Gāteau</a> is responsible for many of the patches DOL has released, and has continued to actively develop Gwenview while working for the company. We contacted him to learn more about DOL.

<strong>NewsForge:</strong> What is your position at DOL?

<strong>Aur&eacute;lien Gāteau:</strong> I am primarily a software developer, the "KDE guy" of the company. I also manage some of the development facilities, such as the Subversion server, Bugzilla, and <a href="https://www.informatik.uni-koeln.de/fai/">FAI</a>.

<strong>NF:</strong> Tell us about DOL's product line and what it uses open source software for.

<strong>AG:</strong> We produce dental software. Our product handles both cabinet management and clinical assistance. What sets us apart from our competitors is that we do not only provide software, but we rent a complete system that includes one or more machines, preinstalled with our own distribution and custom software, online nightly backup, hotline with remote assistance, and even hardware assistance through our hardware partners.

<strong>NF:</strong> Has DOL always used open source software in its products?

<strong>AG:</strong> Yes. The distribution installed is a Debian Sarge with our own modifications. The application server is based on PostgreSQL, Python, and SQLObject. The application client is developed using Python and PyQt. Online backup is implemented using rsync. For remote assistance we use VNC. Finally, the dentist machines are installed using FAI. We went for open source software because there were so many components already available for us, and these components could be customized to fit our needs.

<strong>NF:</strong> Explain what DOL is doing to keep customer data open and accessible.

<strong>AG:</strong> The main idea behind this is that if the customer decides to stop using Dental-On-Line, we can provide him with an export of his database in DSIO format, a format which can be imported by other dental management software. We would provide this at no cost, while most of our competitors would charge the user for such an export.

<strong>NF:</strong> Please describe your recently released KDE patches.

<strong>AG:</strong> The one for Konqueror is [an Adobe Flash] installer. This patch was needed because it was not possible for us to preinstall the Flash player due to license restrictions. While most distributions provide a package that can download the player and install it, this was not a solution for us because our users can't install packages on their system (it would be a nightmare to maintain and upgrade otherwise). Thus we decided to implement a way for the user to easily install the Flash player when he first visits a page with Flash content. This installer is similar to the Flash installer in Firefox.
One advantage of our system is that it can be fully operated using a touchscreen monitor, attached to the dentist's armchair. In this configuration, the machine does not feature any keyboard or mouse. In the application, whenever it's necessary to enter some text, there is a keyboard widget. To make it possible for the user to log in, we needed to display a keyboard widget in KDM too, so that he can enter his password. Rather than reimplementing another keyboard in KDM, we thought it would be nicer and more consistent to reuse the same keyboard widget. We thus extended the format of KDM themes to make it possible to embed PyQt widgets, such as our keyboard.

[The Kontact] patches are quite simple: our customers use KOrganizer to manage their schedule. To make it easier for them to categorize and filter their events, we provide a default set of categories adapted to dentist usage. There was a little bug in KOrganizer which prevented us from providing site-wide default lists, so we fixed it.

<strong>NF:</strong> Has Dental-On-Line made any other modifications to open source software that you expect to be released?

<strong>AG:</strong> Yes, but if you can't find them on our site, this means they have already been integrated upstream. For example, we made some small patches to improve KHTML handling of broken JavaScript code and to improve some features in the <a href="https://developer.kde.org/documentation/tutorials/kiosk/index.html">Kiosk</a> framework. We also implemented support for embedded images in KMail messages.

<strong>The verdict</strong>
While Dental-On-Line's product line and language keep the company in a niche market, their work is felt by a much broader userbase, thanks to their patches. Ultimately, DOL is one of many companies that have awoken to the promise and capability of free software and open development principles.
