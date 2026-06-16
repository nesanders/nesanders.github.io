---
title: "Open Source Consumer Electronics: Neuros OSD"
date: 2008-06-23
pin: false
categories: [writing, article]
tags: [open source software, neuros, linux, electronics]
venue: "Linux Format Magazine"
description: A 2008 ExtremeTech article about the open source Neuros OSD media player hardware.
# image:
#   path:
#  alt:
---

*This article was originally published in print in [ExtremeTech](https://web.archive.org/web/20080707181944/https://www.extremetech.com/article2/0,2845,2321105,00.asp) on 2008-06-23.*

Somewhere on IRC:

```
[01:42] hi everybody

[01:43] we're getting ready for the *big* computex here in Neuros Taiwan.

[01:43] this year, we're doing something special and we're going to let loose a cage of live chickens

[01:43] this is going to be big.
```

This IRC excerpt isn't a reject from bash.org. JoseBorn is Joe Born, CEO of the electronics manufacturer Neuros Technology Intl, LLC. In this conversation from June 2nd, Born was reminding his staff of his company's presence the following day at Computex 2008, a major industry trade show attended by about 130,000. The chickens were entirely fictional.

Neuros Technology is the developer of the Neuros OSD, a digital media recorder. The devices works with external hard drives to archive and copy your media. Unlike a normal DVR, the OSD can record from any source: set top boxes, DVD players, DTV signals. It is limited to standard definition signals (720x480 max), but works with a plethora of formats, including MPEG-2 and MPEG-4, FLV, WMV, DiVX and others. Other limitations include S-Video input (no component) and no support for digital signals from HDMI sources.

As the conversation goes on, Born begins discussing technical matters with a veteran Neuros developer in a more serious tone. The developer, nerochiaro, updates Born on the status of a major software project for the company's latest product, the OSD, and then swaps anecdotes and advice on various software bugs with another Neuros hacker, CRWeb. The atmosphere is kept informal throughout.

Though these Neuros employees are discussing plans for future releases, consulting with each other on development practices, and even admitting or assigning blame for the week's minor setbacks and mistakes—some of the most sensitive information a small company like Neuros generates—the conversation took place over public IRC, and is available on public logs. Public Internet Relay Chat is where Neuros has elected to hold its regular developer meetings. Absolutely anyone with an Internet connection can observe these meetings as they happen in #neuros on Freenode, read the log later on, or even join in and offer their two cents. When not officially meeting, #neuros is where the company's employees have gotten used to chatting with each other. All of this is by intent.

For Neuros, transparency and openness has transitioned from a notion to an identity. Six years ago, the company developed their first product behind closed doors, like most manufacturers. By the time the Neuros OSD (Open Source Device) was envisioned, the company was in the habit of publishing its preliminary design specifications—closely guarded secrets for some companies - and actually requesting consumer feedback. They sold pre-release versions of the OSD to future-adopters, hoping they would try their hand at hacking the firmware. Neuros refers to the OSD as an "embedded media center," a sort of set-top-box for audio/video playback and recording. The OSD's firmware is open source and based on the Linux 2.6 kernel—anyone and everyone is encouraged to download the source code and improve it.

Apple's stance on consumer modification is don't ask, don't tell at its most lenient, malicious at its least. Of course, it's not just Apple; most consumer electronics companies try to keep a lid on the internal workings of its gear, and wouldn't dream of discussing product development in an unsecures, public forum like IRC.

This sort of product development is anything but orthodox. Neuros' rare stance on open source software, digital rights management, and customer involvement has garnered it substantial attention from both inside the free software community and out (see the recent New York Times or Economist articles). A statement on digital rights on the company's Web site riles believers with condemnation of the Sony Rootkit fiasco and legislation to close the analog hole. In an open letter to AppleTV hackers, Born chided the infamously-reticent Cupertino company and invited the hobbyists to work on his devices. Born has established himself as a desirable speaker for preaching the benefits of open development. Neuros goes so far as to actively target the open source community as a market for its products.

All this begs the question, are Neuros' commitments to openness just for show? Is the company sincere in its collaboration with its customer community, and does it really have anything to gain from that collaboration?

Read on to learn how the rocky history of Neuros' open product development process caught the attention of chip giant Texas Instruments and see how it all worked out for Neuros' latest product, the OSD. Plus, decide whether or not the OSD would fit into your living room's entertainment center and take a sneak peak at the OSD2 and Neuros' other upcoming projects.

## Discovering Open Source: The Neuros Digital Audio Computer

### The Neuros Digital Audio Computer

It didn't used to be that every mention of Neuros Technology was accompanied by the phrase "open source." On the company's wiki, CEO Joe Born explains that Neuros once "didn't pay a lot of attention to the open source movement" that has produced now-commonplace technologies like Linux, Firefox, and LAMP. Born co-founded Digital Innovations in 1995 to manufacturer the SkipDr disc repair device and, eight years later, found himself pushing out the first Neuros product: the Digital Audio Computer (DAC).
Neuros experimented with some unusual features for the DAC. The unit had an FM radio transmitter and used detachable hard drive "backpacks" that mounted on a flash player host. Neuros operated a service called "HiSi" (PDF) that would automatically identify any song given a 30s clip recorded by the DAC from its FM radio receiver or built-in microphone. Fully five buttons were dedicated to recalling bookmarks and radio presets. At launch, however, Neuros was not ready to experiment with free software.

### Open sourcing the DAC

Born describes the company's first step into the world of open development as almost unwitting. The company released the specification for the DAC/PC file synchronization protocol in June of 2003. Later that same month, Neuros announced a collaboration with Xiph.org to make the DAC the first portable media player to support Ogg Vorbis, the open audio format. Under the agreement, Xiph produced Positron, an open source music synchronization (sync) manager that supported Vorbis and ran on Linux.



After releasing the sync protocol, Born says that new software "sprang up, as if from thin air." Neuros-owners, completely independent of the company, soon released the Neuros Database Manipulator and Sorune sync managers. Born admits that "a number of folks preferred those to ours," adding that "the community contributions [to sync manager development] were greater than our internal efforts in my estimation." He indicates that discovering open source development tools was what truly opened his eyes to the concept: "These independent, open source developers had complete toolkits of free software, that were, in many cases vastly superior to the proprietary ones we had been using.". Before 2003 was out, Neuros had released the source code to its own sync management software.

During the next year, Neuros' deployment of open development accelerated wildly. In August of 2004, after considerable discussion with customers and negotiation with partners, the company released the source code to the DAC's firmware. A number of alternative builds of the DAC firmware with improvements, tweaks, and new features were released by volunteer contributors. In December of 2004, Neuros released the hardware schematics for the DAC. In April of 2005, Born announced a $1000 "bounty" (later doubled) to anyone who could develop software to integrate podcasting with the DAC, a tactic that would prove important in the company's future.

Neuros' experimentation in open development with the DAC was successful by most accounts. Born comments that the number of community members who became involved in firmware development was "probably about equal to [Neuros'] internal staff." Active community-development of the DAC continued until mid-2006, about one full year after Neuros had moved on to other products—the MPEG-4 Recorder 1, 2, and 2 Plus, 442, and OSD.

The company's experience with open development would be somewhat more faltering with its next products.

## Miscues: The Recorder and 442

The DAC was succeeded by the first in the Recorder series of products, a line of "mini digital VCRs" which are still in production. Like most of Neuros' products, the Recorder was launched as part of the "Gamma program" through which Neuros sells, essentially, beta versions of its devices. In the case of the Recorder and OSD products, customer feedback led to significant hardware changes before graduating from the Gamma program. Gamma adopters were offered "no-questions asked" refunds or upgrades to the revised hardware.
While Neuros hinted at open sourcing the firmware of the Recorder, no code has been released to this date.



In 2005, Neuros offered the 442—one of an all too rare breed of portable audio/video player/recorders named after a classic muscle car. Neuros released the 442 with closed source, proprietary firmware. While an open source firmware was promised for release within a "few months" of launch, it never materialized. A well-advertised project to port a Linux-based operating system for eventual use as the official 442 firmware led to the recruitment of specialist Greg Nutt, but never resulted in any released code.



The Neuros product wiki notes that the 442 is now discontinued, but preserves the scenario for posterity: "Neuros is sponsoring the ongoing effort to port Linux to the 442. Not as an aftermarket hack, but as an official effort supported by us, the manufacturer." While the technical details of the port were schemed aggressively, the code never saw the light of day. To many customers, the 442's failure to support Vorbis—a frontier Neuros once pioneered—was a similar disappointment. Although the Recorder and 442 were developed in an open environment, involving users in Gamma testing and establishing channels for customer communication on IRC and in web forums, the devices never ran open source code. The 442 and Recorder each have their merits as products, but open source enthusiasts were left to wonder what went wrong.

Was a lack of true enthusiasm from the company the culprit—was open source firmware an empty promise all along? Born makes it clear that the failure to open source the 442 and Recorder was not intentional nor taken lightly: "it's a really long and unfortunate story, but one that highlights the difficulty of opening the device and the progress that we've made..."

### Meetings

At the time, Born hosted several "Town Hall meetings" between customers and his development team over IRC to discuss open firmware. There's a lot to learn about the situation from these meetings—particularly those on March 13th, March 20th, and June 25th of 2005.

In the meetings, Born identifies the cause of the open source hold-ups. He points to "incredibly sensitive" middleware vendors and production houses—the engineering teams that Born's small company turned to for help with creating its products—who refused to distribute information about their intellectual property that would be necessary for releasing source code. In retrospect, Born comments that they "presumably saw it as a threat to their proprietary software business." As a result, Neuros wasn't allowed to release any code if they wanted to.

The problems stemmed from Neuros' adoption of Texas Instrument's dual-core DM270 chipset for the Recorder and OSD. The chip was actually chosen with open source in mind—the "theory", Born explains, is that any proprietary multimedia code would run on the DM270's specialized multimedia chip (the DSP, digital signal processor), while open source code—a Linux-based firmware—would run on the DM270's ARM chip. ARM is a commonplace architecture powering a large portion of the world's PDAs, MP3 players, and cell phones.

Unfortunately, the plot wasn't as well conceived as it should have been. Born muses on the 442, "while we probably could have convinced the design house (with some considerable effort) to release enough bootloader code to load an alternate firmware image, that really appeared to be something of dead end since even if we went through the effort of getting uclinux supported with all the peripherals (no small task) then what would we do about video playback since there weren't any dsp video codecs?" He adds, "If we had had easy access to a bootloader, Greg Nutt probably would have ported the basic uclinux to the device, as he was eager to do, had it caught any momentum, then other things could have fallen into place."

Neither the company nor its now-considerable and vocal customer community were very happy with the DM270 debacle. Born deferred to CRWeb, whom he credited as being Neuros' hardware "team" at the time, to deliver proposals for moving to chipsets from AMD, Intel, and other vendors. Eventually, Neuros proposed the adoption of another TI chipset—the DM320 (.doc). This time, Born was convinced things would be different.

## Texas Instruments and the Prologue to the OSD
### Neuros and Texas Instruments

Today, Born firmly believes that TI is a changed company. He writes in early 2008, "I was amazed to see how far things have come with TI over just the last couple years... Just a couple years ago, our partnership with TI was considered more a free software liability than an asset." Of course, TI's history is not quite so black and white.
Born writes, "TI's whole strategy is all about enabling innovators of all sizes to use their silicon and do interesting things with them. The work was in convincing TI that open source would not create a giant support burden for them. This is something they have to be extremely sensitive to in their commercial setting. You can imagine that a sale could turn very unprofitable for them very quickly if they have a field engineer having to support the sale of a single chip. But the truth is they've been pretty aggressive in helping to make a community happen around their chips." The most significant step was TI's release strictly for open source developers of free Code Generation Tools for the c54x DSP, the chip that had caused so many problems for open source development in the past. These tools—a compiler, optimizer, assembler, and linker—are pieces in a puzzle of software that make embedded device development possible. Neuros hopes that these tools and a "bridge" between the ARM and DSP cores developed for the OSD under Neuros' mentorship will lead to the replacement by open source code of licensed proprietary codecs and Linux kernel modules which the OSD must currently use.

Missing from this package is a debugger to help test and diagnose software problems. Upon the release of the Code Generation Tools, TI emphasized, "Make it known that for complete DSP debug capability; consider purchasing TI's Code Composer Studio IDE." Jason Kridner, a Texas Instruments engineer that Born describes as "the person most responsible for championing open source at TI," explains that TI's embedded device debuggers require JTAG hardware, something that doesn't come cheap. Born and Kridner agree that the release of the Code Generation Tools should enable open source developers to create their own monitor-based debugger. Additionally, some open source hackers have expressed disappointment that the Code Generation Tools, although currently free for them to use, remain closed source products.

Kridner elaborates, "TI actually has a long history in supporting educational and hobbyist developers on our DSPs going back to our early DSP Starter Kits... These DSP Starter Kits are typically low cost and include access to DSP debuggers and code generation tools. Providing access to Linux developers on our ARM+DSP platforms is also not new... What is new is that these C54x code generation tools don't just target our development platforms, but, in this case, target a true consumer electronics device capable of practical applications in the home. This pays tribute to the fact that there is a shift towards customizing the behavior of these devices, beyond academics and electronics hobbyists. Neuros has built a true open source development community."

While Born described the release of these tools as "generous," it's worth noting that their release was prompted by "many months" of negotiation and convincing. Kridner adds, "Neuros had a strong persuasion on us providing both the C54x code generation tools release in 2007 and the recent C6000 code generation tools by showing that there is a clear need for these tools."

The OSD was launched as Neuros' first in a planned line of products based on the DM320 running Linux. The company expected to develop a new version of the 442 with a DM320 chipset, but was forced to abandon the idea. Born laments, "we're not currently working on it. We just don't have the resources."

## Thoughts on Open Development

While Born's trek to turn his company from a fairly traditional (though small) consumer electronics producer into a sort of community mentor for open development has been arduous, he seems to be pleased with the results. The number of features introduced by community hackers for the DAC and OSD has undoubtedly been encouraging. Of his habit of trolling the Neuros forums and holding meetings on IRC, Born writes, "We're committed to open communication and I believe it's what's kept us alive through all the ups and downs, but it remains scary, particularly releasing future product plans, since it's not just your community you're releasing too, but your competitors."
He reflects on the frustrations he has found in closed development: "There were a ton of high powered resources and engineering talent at the firms that helped bring the 442 and recorders to market, but because of all the proprietary constraints, it was like they were professional athletes in a 3 legged sack race, we just couldn't be nimble and experiment, you had to be very deliberate and and it just wasn't very flexible. I think everyone has really evolved since then, and seen the light of open source, particularly when it comes to innovation." Of Neuros' volunteer contributors, Born says, "There are just some folks that are very balanced and articulate and patiently explain their view, and we really listening to them, I'm not sure sometimes they even realize how influential they are."

### Bounty Hunting: Developing the OSD

While the open source spirit and the concept of free software resonates powerfully in the Neuros community, it doesn't hurt to grease the wheels. Neuros has eagerly adopted a code "bounty" system, a popular method in the world of open source software for spurring development and attracting new contributors.

It works like this: Neuros posts a list of bounties, each specifying a particular coding project that needs to be completed, some requirements and regulations, and a prize—typically several hundred or a few thousand dollars in cash. The first coder to meet the requirements wins the prize. Born explains the motivation behind the bounty program, "If you can find a single developer that can understand an application or feature all the way from end user to actual code, then they will run absolute circles around a team that's passing documentation around the horn." While many bounties have yet to be completed and it looks like some older ones may go unclaimed, Born notes that "there are not many that haven't had some level of activity."

For example, early on in the development of the OSD it was recognized that the build environment was in lousy shape. Without a stable and easy-to-use build environment, only the most dedicated and persistent of hackers would ever be able to convert the source code they had written into binary programs that would run on the OSD's specialized hardware. A community developer, CRWeb, took the $500 prize.

A few months later, Born hired CRWeb (located in Illinois, near Neuros' Chicago headquarters) to work on the OSD fulltime. Neuros has also hired nerochiaro (Italy), Turran (Spain), and DeepB (Spain, whose personal story is widely recounted) in recognition of their volunteer contributions. While these new hires bring valuable talent and skill to the Neuros development team, Born explains that they also serve a broader function: "it was an effort to tie the community and the internal team together, and a lot of the motivation in hiring members of the community was to really facilitate that communication. Bit by bit, we've been hacking away at those barriers, which as a hardware company, are quite significant. A lot of our team, as is the case with most hardware companies, is based in Asia, and so there's a big language and cultural barrier, not to mention time zones etc. As we hire more and more community based developers, who are spread all over the world, more and more of that communication comes out in the open."

Neuros' bounty program received a major boost recently through collaboration with TI. The new jointly sponsored bounty program is somewhat more formal than most of Neuros' previous offerings, which often awarded less than one thousand dollars and had loose competition rules. Interested developers must first apply for the new bounties and, if selected, will be provided with development hardware on which to work. The Neuros/TI bounties pay as much as $6000 for porting and optimizing the popular, cross-platform, and remarkably full-featured VLC media player to TI's DaVinci hardware—a cousin of the DM320 chipset with HD capabilities on which the OSD2 will be based (more on that later).

After soliciting them directly, Born succeeded in enticing a crew of VLC developers to work on the porting bounty. Born comments, "I think TI was a bit surprised when we said we were awarding such a big chunk to a single entity, but I think they'll be satisfied in the result, which will not only be a beautiful, mature multimedia application and framework on their device, but having it introduced to a community." Born emphasizes that the VLC community's involvement in the OSD2 project is necessary for both their work on the port and as a support resource for other current and prospective Neuros hackers.

The formal structure of the TI/Neuros bounty program, Born points out, takes pointers from the Google Summer of Code (GSoC). The GSoC is an enormous annual summer program sponsored by Google that pairs hundreds (1500 in 2008) of college students with mentoring developers from dozens of open source organizations to complete standalone projects for a healthy stipend. Neuros participated in the GSOC 2007 and again in 2008. While the earlier "FastBounties" primarily served to rouse Neuros' existing developer base, the GSoC often introduces outsiders to the Neuros community.

If you're interested in joining the Neuros development effort, explore the available bounties and head over to the Neuros Developer Welcome page.

As you read about the current state of the OSD in the following section, take note of all the features that are available today as a direct result of user contributions.

## The Neuros OSD Today

Sometimes all the help in the world won't produce a decent product . There are certainly times when having too many people working on a project is detrimental. So, now that the open source community has had about three years to poke, prod, and hack the OSD, what kind of shape is it in?


### Recording
My tests of the OSD began when I connected a DVD player to the OSD via a standard 1/8"-to-composite cable. The OSD also has an S-video input. An identical composite cable connects the OSD to a TV. The OSD is controlled with a small universal remote configurable for four devices. These two cables and the remote are included with the OSD.

Like many users, I experienced poor reception with the OSD's remote and found that a clear line of sight to the unit is absolutely necessary. It is often difficult to tell whether the OSD is stagnant because it is busy with your command or simply hasn't received it, which can prompt redundant button presses. One user fixed this problem by replacing the IR receiver on the OSD—not a task for the faint of heart.

Live video and sound from the DVD player appeared underneath an overlay of the OSD's menu. You can see enough to navigate the DVD and OSD's menus simultaneously to get a recording configured. The OSD menu is traversed with directional buttons on the remote. While most options are in sensible places, you should quickly learn to look for unseen features in the "Xi" menu—sort of like a right-click context menu, it's accessed via the "xi" button just below the directional keypad.

Before hitting Record on the remote, I stepped into the recording settings menu. Presets are available for the iPod, PSP, generic TV, or generic smartphone devices. Advanced settings let you choose a custom resolution (up to 672x448), video and audio bitrate (up to 2500 and 128kbps, respectively), framerate (up to 30fps), and audio format (MP3 or AAC). Record length can be preselected or set as indefinite and halted with the remote. The only video format available is MPEG4 SP (MP4), which is compatible with most modern digital media players. Users have found that simply specifying a ".asf" extension for the output MP4 file will let the Neuros "sling" video—you'll be able to play the video on a PC over a network as it's recording.

I was impressed with the ease and flexibility of video recording. While the Neuros has no built in hard drive, it includes a Compact Flash/Secure Digital/Memory Stick/MMC flash card reader and a USB port for plugging in thumb drives, portable hard drives, or any USB device that follows the mass storage specification. While some MP3 players will fit the bill, there may be problems trying to record directly to Apple iPods.

I was pleasantly surprised to find how readily I could record to my PC's hard drive over my home network. The OSD's network browser found the password-protected SMB share on my Debian GNU/Linux desktop and let me type to authenticate myself straight from the remote. Windows SMB shares work the same way, with or without password protection. SMB support was made possible by contributions from community members. The OSD has a built-in ethernet port for wired network connection or for use with a wireless bridge. Some users have hacked together very limited USB WiFi dongle support for the OSD.

Recording to the remote computer went without a hitch. At the maximum quality settings (listed above, about 20MB for a one minute recording), the recorded video was indistinguishable from the original when played back on a standard definition TV. A video recorded at just 1200/96kbps (video/audio) was noticeably degraded, but fine for watching from the couch—and only about 9MB per minute. A video recorded with the iPod presets (1500kbps, 320x240 resolution) cost about 10MB per minute and looked excellent on a portable device—lower bitrate settings were also of acceptable quality. A simple video editor for clipping out commercials, credits, or other content is built into the playback mode, though creating the cropped file usually takes the OSD several minutes.



Scheduling recordings is achieved via a simple dialog and works as expected. Multiple recording can be scheduled at once. An "IR Blaster" included with the OSD can be placed in front of a TV, TV tuner, or cable box to automatically change the channel in time for the recording after simple configuration. A community member is developing a web interface for scheduling recordings remotely.



While I was pleased with the OSD's recording for playback on a standard definition TV or portable device, beware that it lacks high definition (HD) capabilities. Don't expect to use the OSD to make picture-perfect, full-resolution backups of DVDs, though VHS backups will look fine. If HD content is a requirement for you, Neuros is developing the OSD2, which is discussed later. By the way, Neuros is one company you don't have to worry about implementing copy protection that might prevent you from backing up commercial media. For better or worse, you shouldn't expect to play DRM-encoded music from iTunes or elsewhere, either.

## Music Playback and Other Features

Though video recording features steal the spotlight on the OSD, I found myself most often using the device as a set-top box for video playback. Audio and video playback can source from any device that can be recorded to (flash card, USB device, network). The OSD supports most video types, including DivX, Xvid, generic MP4, H.263, WMV, ASF, and MOV. Ogg Theora support is being developed as a Google Summer of Code 2008 (GSOC2008) project. Attempting to play a Theora video on a recent firmware (version 3.33-1.75-02.849) succeeded in crashing the device. I experienced crashes rarely during regular use, though they are difficult to quantify and seemed more common than I have come to expect from commercial electronics. Restarting the OSD takes longer than you might imagine—about one full minute.


A popular feature developed by a community member integrated a YouTube browser and player into the OSD. You can easily search for videos by typing with the remote or filter by date and popularity. A GSOC2008 project will add generic FLV support that will work with Flash videos from most sites, such as Google and Yahoo's video portals. Other GSOC2008 projects aim to port a WebKit web browser and add last.fm support.



A rudimentary image viewer and slideshow presenter is useful for browsing files from a camera's flash card. Format support is limited to JPEG, BMP, and GIF. The lack of PNG support is stymieing, though it won't be problematic if you are only concerned with photos.



The OSD is useful and convenient as a music player, but not very user-friendly. I enjoyed being able to play files from my PC and thumb drive in my living room via the OSD and appreciated the extensive format support, but I found the xmms2 based audio player frustrating to work with. While entire folders worth of music can be easily queued up through the Xi menu, loading every track into the playlist from either local or remote sources takes the OSD several seconds. Though less significant, navigating directory structures with the OSD is also not instantaneous and there is also a slight delay before music playback begins. Unfortunate, though not surprising, is that the OSD includes no library feature to catalog your music collection for easy browsing, searching, or sorting.

The OSD is available for $179.99 at the Neuros Store. You can usually find it at a lower price at Amazon.com or another reseller. At this reduced pricepoint (the OSD once sold for $239.99), I wouldn't hesitate to recommend the OSD as a dedicated recorder, but only to users who do not require HD capabilities. I would also recommend the OSD as a rudimentary alternative to a Home Theatre PC for users who don't need sophisticated library management or DRM playback. While most HTPC configurations would win out on power and integration with cable TV services, it's hard to beat the OSD's price or form factor. Furthermore, the OSD is silent and draws little power.



Firmware updates are released fairly often—typically about once per month, with bleeding-edge "dev" releases more frequently. If your OSD is network connected, it can download and install the updates automatically. Most firmware releases fix bugs and tweak the user interface, though significant feature additions are more rare. A major enhancement to the UI was recently put into beta and is hoped to make development for the OSD much easier—read on to learn why. 

## The Future of the OSD and Beyond
### Project Arizona

Recent OSD firmware development has focused on Arizona, the second major version of the OSD firmware and a complete refresh of the GUI. Arizona will transition the OSD's interface away from the homebrewed neux application framework which powered the first generation firmware. Born says of neux, "we had to abandon [it] after putting in considerable effort... it was pretty fast and small footprint, but we paid the price in terms of development speed and effort, and experience shows that's always the way."

Neux will be replaced with Trolltech's Qt, a widely-used software toolkit powering many open and closed source products including Opera, KDE, Skype, and Google Earth. The feature scope of Qt far exceeds neux's and Trolltech's documentation is vastly superior. Neuros hopes that familiarity with Qt will introduce new contributors to the firmware. Regardless of any limitations of neux, developer nerochiaro comments that it simply wasn't worth it to keep "reinventing [and maintaining] the wheel."

Arizona is currently available in beta and should become the officially supported firmware version by Fall. Nerochiaro cites "a few minor UI performance issues" as the remaining impediments to release. Current users will notice a new glossy theme for the user interface and a new tool to map network drives, but will have trouble discerning any other changes to the look, feel, or featureset of the old firmware. Of course, Neuros' intent is that users will soon benefit from more and better applications following the adoption of Qt.



Because the new Arizona firmware requires more space than is available on the OSD's internal memory, Neuros developers elected to store the extra data on a CF card to be permanently kept in the device. At least 128MB is required for the software and the card cannot be removed while the OSD is turned on. Future partitioning support may allow you to use remaining space on the CF card for recording or file storage, but the excess is hidden from users in the current release. In light of this change in hardware requirements, Neuros is offering free CF cards to OSD owners who request them.

### The OSD2
This July is expected to see the release of a development kit for Neuros' next product, a successor to the OSD. Major advantages of the new device include high definition recording and playback, component input and HDMI output, and wireless networking. The OSD2 will run on a TI DaVinci 6446 system-on-a-chip and use Arizona's VLC-based successor, called "Dodger," as firmware.

Preliminary product specifications for the OSD2 (PDF) have been available since April. While the specs indicate that wireless will be achieved with an "antenna" accessory that plugs directly into the ethernet port, Born notes that a USB wifi adapter will probably be used instead. The wifi adapter will likely be sold separately for about $20. Furthermore, the preliminary specs indicate maximums of 720p playback (and perhaps 1080i for some content) and 1024x768 encoding. Born indicates that HDMI input was not included, in part, because content protection would not always allow users to record from it. The component input can always be recorded. OSD2 dev kit preorders may be placed now for $249.99 and will ship in a Mini-ITX case with room and connections for an internal hard drive (not included) to aid experimentation. Born expects finalized hardware to be ready before October. He does not expect the final unit to support an internal HDD, but, of course, any interested hacker could influence Neuros' decision by participating in OSD2 development.

The OSD2 serves double duty as the testbed for what Neuros calls the Open Internet TV HDplatform (OITV), envisioned as a standardized target for content providers that will let consumers view and interact with web multimedia from their TVs. The development of the platform is being sponsored in part by the Neuros/TI joint bounty program. Born comments that any OITV device "will have to be open like a PC, but small, cheap and silent like a piece of electronics, thus an open electronics device. So the OSD2 is that hardware platform and we'll be pitching it to any software developer that wants their application or content on the TV set... we're starting with VLC, but we have boards going around the world to developers working on all kinds of things." He continues, "we're going after studios, the veohs, the joosts and the like, and we've already heard from some of them." TI's Jason Kridner justifies his company's interest in the project: "[OITV] it enables low-cost, off-the-shelf evaluation of and development with TI DM6446 Davinci Technology and fosters a community that improves the value of our devices with software and software integration."

While the release of dev kits will throw the cat out of the bag this July, it may surprise you to find that Neuros has been relatively tight-lipped about the status of the OSD2. Born explains, "It's no secret we're working on the OSD2, but the documentation is so rudimentary, that I'm hesitant to shoot the publicity 'silver bullet'..." Like any other hardware company, Neuros has quality assurance concerns that must sometimes override its belief in transparency. Born warns of immature product designs breeding suspicion in customers, "later it will be that much harder to convince people it's well supported down the road." As with past Neuros products, expect significant changes to be made to the OSD2 during the Gamma program period.

Where does this new product leave OSD1 owners? While hardware limitations will prevent the OSD1 from ever reaching feature parity with the OSD2, and Born calls a VLC port unlikely, the original device is not about to be abandoned. Born assures supporters that the OSD1 will "continue in parallel with the [OSD2] simply because it's going to continue to get cost reductions and it will always be cheaper than the high def version. I think there's a lot more that can be done with that device, I don't see it getting end of lifed any time soon." A current OSD development schedule (PDF) is always available.

There are a few other OSD-related Neuros projects in the works. Born cites the "desperately" needed Neuros.tv service, which would act as a database of video content for OSD devices and could facilitate some interaction between OSD and PC users. In light of Neuros' large Chinese development team, Born notes, "We're translating the UI to Chinese so that we can sell there, because I'd love to build a user community over there that can directly interact with our developers, and give us a base to recruit from." He adds, "China is kind of ground zero for CE manufacturing."

### The N3
Long-speculated upon is the N3, a proposed portable audio player and successor to the DAC product line. When asked whether or not it was in active development, Born replied mournfully: "No, and I'm approached by hackers at shows all the time asking about the N3, it really brings a tear to my eye every time that happens. We simply don't have the resources to develop something like that."

Many Neuros community members were introduced to Neuros through DAC products and are particularly interested in its revival. Neuros wiki editors describe the N3, optimistically referred to as the "ultimate portable audio player" in the muddled brainstorming "roadmap," as a mix between the original DAC products and professional studio equipment. While it's clear that the concept of the N3 is far from mature, the community's enthusiasm for the device also shines through. So does the CEO's. Born writes of the N3, "I would *love* to do this and the silicon is so compelling today that you can let your imagination run wild, there are handhelds with low power consumption that have near laptop horsepower, it would be so much fun to develop something like that that really builds on the Digital Audio Computer Vision."

Asked what other projects his team is working on, Born responded, " Our internal product dev resources are fully consumed with [the OSD2], but we might potentially look at adding some other products to the line if we can partner to get them out. We are also looking at porting some of our software to work on an x86 platform..." The intention behind the port would be to make the OSD platform more accessible to new developers. Similar to the transitions to Qt and VLC, Neuros expects that development for the thoroughly well-known x86 hardware architecture would have a more relaxed learning curve than the DaVinci hardware.

Refer to the Open.Neuros blog for future updates from Joe Born and Neuros Technology.

