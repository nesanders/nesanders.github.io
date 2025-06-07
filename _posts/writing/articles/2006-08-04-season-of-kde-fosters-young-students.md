---
title: "Season of KDE fosters young students, Part Two"
date: 2006-08-04
pin: false
categories: [writing, article]
tags: [open source software, kde, linux, gwenview, linux weekly news]
description: A 2006 article for the Linux Weekly News about the KDE summer internship-like program, the Season of KDE, detailing several student projects.
# image:
#   path:
#  alt:
---

*This article was originally published in [LWN]https://lwn.net/Articles/193724/) on 2006-08-04.*

The first five student projects in the Season of KDE
coding effort were explored in
<a href="https://lwn.net/Articles/193723/">part one</a>
(subscription required) of this two-part series.
We look at the final ten projects in this article.


## Hugo Parente Lima's <a href="https://developer.kde.org/seasonofkde/project.php?database_modeller.xml">database modeler</a> (mentored by Jaroslaw Staniek)


For <a href="https://docs.kde.org/userguide/kde-office-components.html">
all its components</a>, KOffice (and KDE) lack a database modeler.
Applications such as the open source <a href="https://www.fabforce.net/dbdesigner4/screenshots.php">DBDesigner</a> render <a href="https://www.fabforce.net/dbdesigner4/screenshot_image.php?screenshot=dbd4_ss_simplemodel.png">visual representations</a> to help users maintain their expansive databases.  Lima is targeting his implementation at KDE and Qt 4, which have tools and optimizations well suited for such modeling.  His work will consist of developing the underlying logic for mapping the database, a KDE interface for the program, and a plugin architecture to offer extensibility and future support for diverse databases.



Mentor Jaroslaw Staniek has suggested that Lima focus his efforts on improving existing software such as <a href="https://uml.sourceforge.net/index.php">Umbello</a> or Staniek's own <a href="https://www.koffice.org/kexi/">Kexi</a>.  A final decision has not yet been made, but Lima reported to me that: "I analyzed the Umbrello support to ER diagrams... my conclusion is that Umbrello is for UML and not for database design, nor has it the functionality to handle databases.  Making a tool specialized to handle databases give me much more freedom that I do not have in a UML editor."  For the moment, Lima can be expected to continue developing his independent project: "So... against the majority, but respecting the opinion of the majority, I'll continue to develop the project."  Code already exists in the <a href="https://websvn.kde.org/trunk/playground/devtools/dbmodeler/">KDE SVN repository</a> and Lima hopes for a stable version within two months.  Staniek maintains that due to the short time frame for development (one season), his code is more likely to be integrated into an existing application.



Lima is a student at the <a href="https://ufcg.edu.br/">Universidade Federal de Campina Grande</a> in Brazil, noted for its focus on technology and computer science.  He began his project before the Summer of Code, and had intended to continue it with or without support from either Google or KDE.  He is the creator of <a href="https://knetstats.sourceforge.net/">KNetStats</a>, part of the kdeextragear module, and several other unpublished projects developed with the KDE framework.  When asked when his project might be finished, Lima offered a wise philosophy of software development: "a finished version... never! Finished
applications are applications that no one uses, it's like asking what's the final version of KDE ;-)"




## Marcin Przylucki's <a href="https://developer.kde.org/seasonofkde/project.php?kmobile_filesystem.xml">mobile:/ KIOslave</a> (mentored by Stephan Kulow and Marco Gulino)

Today's mobile phones present problems for desktop users similar to those that PDAs once did: there are several different access protocols and no unified way to get data on to all of them.  The <a href="https://kandy.kde.org/">Kandy</a> and <a href="https://www.opensync.org/wiki/kitchensync">KitchenSync</a> <a href="https://kontact.kde.org/">Kontact</a> components are addressing synchronization of calendars, address books, and other information with mobile phones, but users still may want direct access to their mobile phone's filesystem.



Currently, users must figure out which of several protocols their phone uses and pray that it is one of those which KDE has support for.  Like other directory protocols, mobile phones can be accessed through <a href="https://osdir.com/Article2159.phtml">KIO-Slaves</a> by any KDE application.  KIO-Slaves exist for everything from network file-sharing protocols like NTFS, Samba, FTP, and even HTTP, to specialized slaves that format man pages and audio CDs for easy browsing.  KIO-Slaves can already be used with some Bluetooth phones, but those with other models may need to use <a href="https://www.gammu.org/wiki/index.php?title=Gammu:Main_Page">Gammu</a>, <a href="https://moto4lin.sourceforge.net/wiki/Program_description">moto4lin</a>, or <a href="https://chaos.allsiemens.com/siefs/">SieFS</a>. Przylucki will try to unify all these protocols, and ones that don't currently work with Linux, into a single "mobile://" KIO-slave.



Przylucki will work with two mentors on her project.  Marco Gulino, creator of related application <a href="https://kmobiletools.org/">KMobileTools</a>, should be invaluable in helping with protocol support.  KMobileTools already works with <a href="https://kmobiletools.org/phones"> a few dozen</a> phones, and has a user friendly interface for checking voice and text messages, addresses, and phone status.  Stephen Kulow was among the original KDE developers and remains an integral part of the core team.  His work in SVN maintenance, mailing list moderation, and code porting leaves his footprint on nearly ever part of KDE.




## Klaus Rieger's <a href="https://developer.kde.org/seasonofkde/project.php?see_by_touch.xml">See-By-Touch integration</a> (mentored by Olaf Jan Schmidt)

<a href="https://see-by-touch.sourceforge.net/index_.html">SeeByTouch</a> is an evolved form of the virtual tactile display developed at the University of Heidelberg, which allows blind users to "<a href="https://see-by-touch.sourceforge.net/technik_.html#technik">feel</a>" images via a matrix of braille-cells.  The project's hardware and software were open-sourced in 2004, and have since been further developed by Rieger.   He <a href="https://accessibility.kde.org/forum/program.php">presented</a> SeeByTouch at the Unix Accessibility Forum in 2004. His modern SeeByTouch device weighs under a kilogram, is <a href="https://see-by-touch.sourceforge.net/SbT/anwendung4.jpg">collapsable</a> to the size of a book, and is affordable.  Rieger also notes educational uses for the tool, such as letting children feel graphs to better understand them.



Accessibility continues to receive strong focus from both KDE and Qt developers.  There is an established <a href="https://accessibility.kde.org">KDE Accessibility</a> team which works to keep all applications in the desktop usable by those with impaired vision, hearing, and dexterity who may not be able to read text, hear audible alerts, or operate a mouse as other users would.  To that end, both separate <a href="https://accessibility.kde.org/aids/">applications</a> and <a href="https://accessibility.kde.org/features/">integrated features</a> have been developed for KDE and <a href="https://dot.kde.org/1095964115/">Qt</a>.  Mentor <a href="https://usability.kde.org/information/people.php/#olaf">Olaf Jan Schmidt</a> is a longstanding member of both the KDE Usability and Accessibility teams.  Integrating SeeByTouch in KDE will involve creating a KControl configuration module for the system, making it available to all KDE applications as a <a href="https://en.wikipedia.org/wiki/KPart">KPart</a>, and improving language support.



Rieger, a student at the <a href="https://www.uni-mannheim.de/index-E.html">Universit&auml;t Mannheim</a> in Germany, is the ideal student for a SeeByTouch integration project, having been heavily involved with the technology for several years. Though many people's efforts were harnessed in the evolution of SeeByTouch, he is the only registered developer on the project's SourceForge site (founded in February, 2004), where software source code and hardware schematics are available.  He has ported SeeByTouch to seven different languages, fourteen different operating systems, and added important features such as zooming.  Rieger reported to me that he has familiarized himself with KDE development and that he is on track to meet Season of KDE project deadlines.




## Rafael Rodriguez's <a href="https://developer.kde.org/seasonofkde/project.php?kpdf_pattern.xml">PDF optimization</a> (mentored by Albert Astals Cid)

In his Summer of Code application, Rodriguez describes <a href="https://poppler.freedesktop.org">poppler</a>, the PDF rendering library used in <a href="https://kpdf.kde.org/">KPDF</a> and the forthcoming <a href=https://kpdf.kde.org/okular/>Okular</a> (due for release as part of KDE 4), and laments that both of these overlying applications lag in rendering patterns within PDFs due to a deficiency in poppler.  Rodriguez intends to mend poppler according to Adobe's <a href="https://partners.adobe.com/public/developer/en/pdf/PDFReference.pdf">PDF specification</a> (PDF) (section 4.6) in order to optimize its rendering of patterns.



Rodriguez outlines a four step process for completing his project: researching, hacking poppler, hacking okular and KPDF for compatibility, and then testing. Rodriguez reported to me that he has more or less finished his research and begun experimenting with the poppler code.  He suspects that he may have the project finished as early as August, though no developer could be expected to promise such haste.  Project mentor Albert Astals, KPDF maintainer, reminds me that Rodriguez's work will not strictly be in aid of KDE, but also other applications which rely on poppler such as <a href="https://www.gnome.org/projects/evince/">evince</a>.



As a member of the KDE Spanish translation team and a computer science major at <a href="https://www.upc.edu/">Universitat Politècnica de Catalunya</a> in Barcelona, Rodriguez has experience with both KDE and general software development.  Rodriguez notes a possible reason for the rejection of his Summer of Code application, "I had to prepare my application in just a couple of hours because I was getting on a plane the next morning", and goes on to praise the Season of KDE for giving him an opportunity to become involved with KDE development.  "I was thinking of getting involved in my beloved KDE project this summer since I've got some free time to spend. Getting support from them in the form of Albert Astals is a plus."




## Daniel Calviño Sánchez's <a href="https://developer.kde.org/seasonofkde/project.php?umbrello_auto_fields_order.xml">Umbrello field ordering</a> (mentored by Jonathan Riddell)

Hugo Parente Lima chose not to build upon the KDE <a href="https://www.uml.org/">UML</a> modeler Umbrello for his database modeler project, but Sánchez opted to do the exact opposite.  UML is an open specification for modeling systems created in 1997 and now in version 2.0, widely used in business, engineering, and software design.  UML models can be visualized as diagrams to help modelers organize and understand very complex systems.  Wikipedia has an <a href="https://en.wikipedia.org/wiki/Image:Uml_hierarchie_des_diagrammes.png">example diagram</a> displaying the thirteen possible types of UML diagrams in their respective categories.  Umbrello is a <a href="https://programming.newsforge.com/programming/05/08/22/1421216.shtml">respected</a> competitor in the UML modeler field, but Sánchez looks to improve upon it by adding support for automatic field ordering



Adding a field sorting feature involves more complex tasks than one might expect.  Sánchez must first look over Umbrello's code and decide where and how his addition will fit, something made easier by Umbrello's <a href="https://uml.sourceforge.net/developers/umbrello-class-diagram.png">UML model</a> of it's source classes.  Sánchez's feature must be very flexible so that users may order their fields by regexp, common parameters, or any other criteria that may arise.  His Season of KDE page discusses the complexities of this and arrives at the following solution: a dialog-based frontend to configure the most common uses of a custom-designed scripting language, which can be edited directly if necessary.  Sánchez also plans to provide both user and developer documentation for his code, including UML diagrams.



When I spoke with Sánchez, a student at the <a href="https://www.euitio.uniovi.es">Computer Science School at the University of Oviedo</a> in Spain, he had begun designing the syntax for his scripting language.  He is hoping for a usable version in October and a completed, user-friendly version in November.  Sánchez has experience in bug-fixing with Umbrello and is already working on KDE GUI development for a school project.  His work should help to improve KDE's already robust suite of developer tools, and make the desktop even more attractive to business users.



## Luke Alan Sandell's <a href="https://developer.kde.org/seasonofkde/project.php?kmail_news.xml">universal "push content" for KMail</a> (mentored by Till Adam)

In his Season of KDE page, Sandell describes "Push content" as content routinely downloaded from a remote server and presented to the user as a communique - specifically email, Usenet posts, and newsfeed updates.  All this content is fundamentally the same: a message.  KDE currently manages each of them in separate and redundant applications (<a href="https://kmail.kde.org/">KMail</a> for email, <a href="https://knode.sourceforge.net/">KNode</a> for Usenet, and <a href="https://pim.kde.org/components/akregator.php">Akregator</a> for newsfeeds).  Sandell planned to use KMail as a base for combining the three push content readers because it has support for multiple accounts, although time constraints have forced him to leave newsfeed support for another time.



Such integration is not an entirely new concept.  Projects outside of KDE, such as <a href="https://www.mozilla.com/thunderbird/">Mozilla Thunderbird</a> already support all three communication formats, and KDE personal information management (PIM) frontend Kontact already offers access to KDE's three push content applications from one interface via KParts.  An improved KMail is nonetheless necessary, as Sandell explains, "Because of the similarity in functionality between KMail, KNode, and Akregator, it makes sense to merge them into a single application. Kontact does this somewhat inadequately by allowing the user to quickly switch back and forth between the three applications' respective KParts, but this is disorienting and also results in an inconsistent user interface."



Sandell will begin by increasing KDE modularity by creating a <a href="https://developer.kde.org/documentation/library/3.5-api/kdelibs-apidocs/kio/kio/html/classKTrader.html">KTrader</a> service type to allow KMail, and other KDE applications, to access account data.  Users will then be able to create separate KMail accounts for Usenet and Mail, whose content will be stored in separate locations. Only minor UI changes to KMail will be necessary to support the new content types, and code from KNode will be used to implement the new protocols.  Sandell's code will be built against KDE 4, making use of new Qt 4 interface technologies and the KDE PIM storage solution <a href="https://pim.kde.org/akonadi/">Akonadi</a>.



When I contacted Sandell he had yet to begin work on the project, citing a new job working on database software as the hold up.  Nonetheless, he expects to have the project done on time now that he is settled in at his new position.  He will be aided by experience developing an <a href="https://www.kde-look.org/content/show.php?content=35528">improved icon selection dialog</a> and a <a href="https://www.kde-look.org/content/show.php?content=26521">resources KIO-slave</a> for KDE.  Sandell will be graduating from <a href="https://www.appstate.edu/">Appalachian State University</a> in August.  Mentoring him will be KMail developer Till Adam, who has worked with the project since 2003.




## David Sansome's <a href="https://developer.kde.org/seasonofkde/project.php?kde_wine.xml">Wine integration</a> (mentored by Kevin Krammer)

Unix users have been using <a href="https://www.winehq.com/">Wine</a> to run Windows programs for years, and it has proved an excellent tool for easing Windows switchers into Linux-based operating systems.  Unfortunately, Wine configuration and use has always proved a barrier for inexperienced users - one of the largest audiences for the software.  Several distributions have done their own Wine integration, but David Sansome intends to add support for Wine into KDE itself, to benefit users of all distributions.  Visit Sansome's <a href="https://www.ecs.soton.ac.uk/~ds505/SoC/proposal.htm">project proposal</a> for very detailed information about himself, his goals, and Wine as it stands now.



Wine integration consists chiefly of two things: a KControl module for Wine configuration and KDE-wide support for recognizing and launching Windows executables.  The KControl module will allow users to configure Wine settings such as the pseudo "Program Files" directory for installed applications and mapped storage drives.  Hopefully, many of these options will be automatically configured using information from KDE technologies like <a href="https://solid.kde.org/">Solid</a> and basic assumptions about KDE users.  Support for Windows executables will require specifying a MIME type that defaults to opening EXE files with Wine, a KFileMetaInfo plugin to let KDE applications recognize meta information stored in EXEs such as version number, improvements to Konqueror so that it displays Windows program icons, and Konqueror context menu entries for per-application configuration of Windows programs.  Sansome expects working code for all of these tasks in just a few weeks, with intense testing to follow.



Sansome's project will involve patching and developing plugins for several different KDE applications and libraries, and making sure that each part of his project is of high enough quality to be accepted into KDE and contribute towards complete integration.  Fortunately, Sansome has extensive experience with KDE development, integration, and Windows support.  He is the creator of the widely-popular <a href="https://www.freedesktop.org/wiki/Software_2fgtk_2dqt">Gtk-Qt theme engine</a> which visually integrates Gnome and Gtk applications with KDE, has ported several Windows screensavers that are now included with KDE, and has written code for the Qt frontend to <a href="https://www.autopackage.org/">Autopackage</a>.  Mentor Kevin Krammer is also an experienced Qt and KDE developer.  The pair's work will no doubt ease Linux migration for users in years to come.




## Carlo Segato's <a href="https://developer.kde.org/seasonofkde/project.php?kopete_phonon.xml">Phonon integration for Kopete</a> (mentored by Matt Rogers and Matthias Kretz)

As instant messaging becomes more and more entwined with multimedia, via voice and video communication, KDE is eager to make the use of these features easy for its users.  Reverse engineering of closed AOL, Yahoo, and Microsoft protocols to support their networks has proved rather difficult, but using existing KDE technologies to support A/V hardware ought to be rather simple.  Segato is working to combine <a href="https://kopete.kde.org/">Kopete</a>, the KDE universal instant messenger, with <a href="https://phonon.kde.org/">Phonon</a>, KDE 4's universal multimedia framework API.



Segato will be focusing on the new <a href="https://www.jabber.org/jeps/jep-0166.html">Jingle</a> plugin for Kopete, which is an extension to the open <a href="https://www.jabber.org/about/overview.shtml">Jabber</a> IM protocol.  Jingle adds A/V communication support to Jabber, a protocol used by Kopete since 2002.  Phonon is the <a href="https://www.linux.com/article.pl?sid=06/05/05/1540250">new multimedia API</a> for KDE 4, which will give all KDE applications easy access to A/V input and output hardware via any of a number of existing multimedia frameworks.  In order to add Jingle support to Kopete, Segato will need to implement a Jingle plugin (or improve the existing Jabber plugin) for Kopete, add configuration to the Kopete A/V settings module, and improve any deficiencies in the still-evolving Phonon.



Despite experience with C++ and Qt coding, Segato will find help from mentors Kretz and Rogers invaluable.  Kretz is the designer of Phonon, first released only a few months ago.  Kretz will surely be watching Segato's work carefully, as his brainchild is put to the test in one of its first application uses.  Rogers is the lead developer of Kopete as well as the OSCAR (AIM/ICQ) plugin maintainer.





## Dusan Stefanovic's <a href="https://developer.kde.org/seasonofkde/project.php?k3b_lite.xml">K3b lite</a>, simplified disc burning (mentored by Sebastian Trueg)

As a major improvement to an existing and widely used application, K3b Lite is perhaps the Season of KDE's most visible project.  <a href="https://www.k3b.org/">K3b</a>, "The CD and DVD Kreator", is among KDE's most revered applications, often compared favorably to commercial competitors in terms of both power and ease of use.  It is undeniable, however, that some inexperienced users may find the <a href="https://k3b.plainblack.com/uploads/nG/Ku/nGKuJXQiRXoNn3I_adc0Ag/welcome_screenshot_0.12.png">K3b interface</a> daunting.  The Lite project aims to create a wizard interface that will guide users step-by-step through selecting a disc type (audio, data, etc.), selecting files, and burning the disc.  The wizard will be integrated into K3b itself so that users may switch back and forth between the advanced and simplified interfaces.



Stefanovic's <a href="https://alas.matf.bg.ac.yu/~mr97118/K3b_lite.html">mockup</a> of the wizard is the most descriptive possible summary of the project.  His placeholder design is not very pretty, but at the project's end one can expect the sort of <a href="https://k3b.plainblack.com/uploads/MT/fK/MTfKD9QmNDpA6wY60vrLVA/splash.jpg">attractive</a> graphics K3b is known for.  The wizard not only directs the user as to the steps in burning a disc, but also has plenty of help text along the way to explain foreign terms like "mixed mode".  Unless significant changes are made to the mockup, it will be necessary to use the main interface for video disc (VCD, eMovix) burning which may entail advanced K3b tasks such as video encoding.  It will also be necessary to drop back to the K3b interface for other tasks or options that should not be presented to inexperienced users, like hardware setup and CD/DVD ripping.  Stefanovic promises extensive developer and user documentation of the wizard.



Mentor Sebastian Trueg is K3b's lead developer and maintainer, one of the Season organizers, and a growing influence in the KDE project as a whole.  Stefanovic, a student at the The Faculty of Mathematics, <a href="https://www.beograd.org.yu/cms/view.php?id=201540">University of Belgrade</a> Computer Science Department, has a demanding task in familiarizing himself in libk3b, but Trueg can lend his intimate understanding.




## Sheng Yang's <a href="https://developer.kde.org/seasonofkde/project.php?knotes.xml">KNotes improvement</a> (mentored by Michael Brade)

<a href="https://pim.kde.org/components/knotes.php">Knotes</a> is a venerable application which has found an important place in KDE as a <a href="https://kontact.kde.org/components.php">component of Kontact</a>, the KDE PIM suite.  Yang's application to support hierarchical notes and relationships in KNotes was passed over by Google, but there was enough <a href="https://www.yasker.org/en/blog/google-summer-of-code-2006">encouragement</a> among Kontact users and developers for him to revive the project in the Season of KDE.



In order to modernize KNotes, support for categorization and organization of notes will be added.  The simplest way to do this is to simply allow users to tag notes as "Personal", "Business", etc., or any combination thereof.  A potential hurdle is Palm synchronization, which may limit the possible number of categories to sixteen, and rule out features such as sub-categories.  Yang, a Materials Processing and Control student at <a href="https://www.hust.edu.cn/english/">Huazhong University</a> in China, plans to make the categories accessible via a menu and configurable via a separate dialog.  He <a href="https://www.yasker.org/en/blog/archives/24">speculates</a> that the three months the Season of KDE offers him will be more than enough time, although he must balance the project with an internship at <a href="https://www.yasker.org/en/blog/archives/21">Oak Pacific</a> in Beijing.



Both Yang and Mentor Michael Brade, KNotes maintainer, described progress on the project to me as favorable.  Yang expects a usable version in early September.  Some work will be necessary to finish porting KNotes to KDE 4, since it was decided that Yang would focus on the upcoming platform, but both agreed that the project will likely be completed on time and the Code will be accepted into KDE in November.  Brade offered to mentor three Summer of Code projects, all of which were not accepted.  Yang's is the only of the three active in the Season of KDE.



## Getting yourself involved

These students have taken a unique path to becoming KDE developers, but the road is open to all.  Anyone with some spare time will be welcomed into the fold at KDE, whether as a <a href="https://developer.kde.org/joining/">developer</a>, <a href="https://wiki.kdenews.org/tiki-index.php?page=Quality+Team+KDE+Artists">artist</a>, <a href="https://quality.kde.org/develop/howto/howtodocs.php">writer</a>, <a href="https://quality.kde.org/develop/howto/howtobugs.php">tester</a>, or simply a <a href="https://www.spreadkde.org/try_kde">user</a>.  Visit the <a href="https://kde.org/jobs/">How to Help</a> page for general information on joining the team.  If you're considering writing code, you'll find plenty of documentation designed for those at any skill level.  If you're anxious to begin hacking, try solving a few <a href="https://bugs.kde.org/buglist.cgi?short_desc_type=allwordssubstr&short_desc=JJ%3A&bug_status=UNCONFIRMED&bug_status=NEW&bug_status=ASSIGNED&bug_status=REOPENED">Junior Job</a> bug reports targeted at new KDE developers.  If you'd like a more casual position, try submitting some of your work for peer review at <a href="https://kde-apps.org/">KDE-Apps</a> or <a href="https://www.kde-look.org/">KDE-Look</a>.  If you have some OpenGL experience, donate it to the new <a href="https://www.kde-look.org/news/index.php?id=236&PHPSESSID=7d7bcfa9cf4b4f1b0d04cf45ae928df1">compositing engine</a> for KWin.



One would have to wait a few months to find out, but I doubt that any of the Season of KDE participants will end their projects in poor spirits - not a given, considering that they recently lost out on $4,500.  They have all found kind and knowledgeable mentors and an easy to use, advanced, and professional development environment forged by the hundreds of KDE contributors that came before them. They might not all finish their projects before the season's end, not all of their code will be accepted into KDE, and not all of them will stick with open source or KDE programming, but it's hard to find any negatives when young people are being accepted into a charitable community and encouraged to learn.

