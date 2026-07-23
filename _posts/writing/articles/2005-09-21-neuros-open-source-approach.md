---
title: "Neuros takes open source approach to hardware and software development"
date: 2005-09-21
pin: false
categories: [writing, article]
tags: [open source software, linux, consumer electronics, interview]
venue: "NewsForge"
description: A 2005 Newsforge article about open source hardware development and Neuros Technology.
# image:
#   path:
#  alt:
---

*This article was originally published on Newsforge on 2005-05-03 at https://software.newsforge.com/article.pl?sid=05/09/13/1631226 and is archived on the Wayback Machine in its reposted position on [Linux.com](https://web.archive.org/web/20080122004221/https://www.linux.com/articles/48047).*

Audio/video hardware manufacturer [Neuros Technology](https://web.archive.org/web/20080122004221/https://www.neurosaudio.com/) has embraced the benefits of open source development.

In February 2003, Neuros became one of the first manufacturers of digital audio players to support the open source Ogg Vorbis codec on its Neuros Digital Audio Computer (Neuros I). More recently, it released the source to Neuros I's firmware and its hardware specs.

Equally impressive is the unprecedented open development process behind the company's new product, Neuros [442](https://web.archive.org/web/20080122004221/https://www.neurosaudio.com/store/prod_442.asp), a portable media player/recorder. Loyal fans and onlookers alike have been invited to comment and contribute every step of the way during the refinement of the 442, from deciding the basic features to choosing the chipset. Neuros's founder Joe Born and his staff have eagerly listened to comments on the company's forums and held meetings on IRC with the community to create a device that is tailored to its buyers and also accessible to future open source development efforts.

## On becoming an open source company

Born is an excited and knowledgeable supporter of open source. When I asked why his company chose to turn Neuros I into an open product, Born said, "It's just much more effective to allow a developer autonomy, move quickly, and make corrections in response to feedback. We previously had big meetings and made very slow deliberate decisions on things. It was terrible. Now we move fast and correct fast.... OSS meetings are much much more efficient.... When you get multiple developers working autonomously, things move fast, and you generally have to release source code for that to happen."

Once he decided to open the old firmware's source, Born was amazed at the response. "Consumer electronic products today win or lose based on the details. You need a lot of constant feedback to get those details right, and open source (and community generally) is a great way to get that feedback. The way browsing works, a menu structure, etc. -- these are details you could never get feedback on with focus groups. In the old way, you'd hire some consultant, who as often as not would turn out to be a clown. Now the talented just rise to the top."

Of course, there were more obvious motivations behind Neuros's involvement with the open source community as well. Born says, "We target the open source community as a market for our products. We recently commissioned a study from the University of Chicago, and the 'open source geek' market, as they characterized it, is a big market, and one that no [electronics] company is really directly targeting."

Neuros has a history of hiring diligent volunteers that developed for its first open source project, the Neuros I. Born says, "[We've hired them] as developers, as network administrators, as customer service folks."

How does Neuros entice developers? "We've done a lot of experimentation with 'bounties' for open source projects (like adding podcasting support to the Neuros [I]). We're looking for ways to put some money in people's hands without destroying what's special about open source development. It's about a lot more than shared source code. It's about autonomy and experimentation, working for yourself. Look at all the open source programmers who are an order of magnitude more effective on their personal projects than at work. You have to ask why, and it's clearly more than the license of the software they are working on. We have to find a way to put money into the community in ways that don't destroy the spirit."

Of course, opening up a product isn't as easy as uploading source code. Note the [delay](https://web.archive.org/web/20080122004221/https://www.theneuros.com/index.php/The_Neuros_and_Open_Source#Genera_Open_Source_Support) between the release of the 442 and its firmware's source due to intellectual property squabbles with third parties, something the Neuros I also experienced. Born assures impatient doubters, however, that "We're an open source company, or trying to be."

## The challenges of using a radical development model

The process has not been without pitfalls. Born laments, "[One] problem is that the [community's] priorities are not always consumer-driven, meaning that the OS community might not care a bag of beans about ease of use, although that's very important to consumers (even sophisticated ones). Even when the OSS developers think it's easy to use, it's typically based on a very high level of understanding of the underlying technology.

"Overall, the open source process tends to be very non-linear with branching and projects going in multiple directions. Today we have four different sync managers written in four different programming languages. If you want to use an open source replacement for the Neuros II firmware, you have to choose one out of several different branches. Obviously, this kind of stuff is not too consumer-friendly, but it's a natural outcome of the autonomy and freedom of OSS. Going forward, we are trying to architect the software in a modular way that allows us to join some of the divergent branches and take the best of each. Of course, part of the big value with OSS is that branching and experimentation. With four sync managers, you can watch folks use them, see which is most popular. It's sort of like a mini-market. To some extent, it manages itself, but we do need to have a managing hand in there, which won't be easy."

Born says that his company must complete most of the base programming on its own, without the aid of OSS developers. "For low-level programming that involves the digital signal processor and low-level hardware, you have to use TI's CCS program, which is very expensive. However, the architecture of the 442 (applications running on Linux on ARM) is such that most programming can be done with GCC and free open source development tools on Linux. Of course, it depends what you want to do, but we feel there's enough there that the device is 'open enough.'"


## Working with and listening to the community

The staff at Neuros look to their developers and customers for advice on product direction. For instance, Born speculates on the possibility of utilizing open source developers to add more diverse codec support. "There is already great demand for [FLAC](https://web.archive.org/web/20080122004221/https://flac.sourceforge.net/), so one way or another, we will definitely add that. We've already fielded some requests for [Theora](https://web.archive.org/web/20080122004221/https://www.theora.org/), but I haven't heard many requests for [Speex](https://web.archive.org/web/20080122004221/https://www.speex.org/) yet.... For something like FLAC, it's important enough that we'll definitely be active in making sure it gets done, but it will almost assuredly be done by someone with FLAC experience, and that's almost certainly someone from the OS community with ties to Xiph." Xiph previously worked with the company to add Ogg Vorbis support to the Neuros I.

One important decision guided by user input was the selection of a processor to which a port of [UC Linux](https://web.archive.org/web/20080122004221/https://sourceforge.net/projects/neuros442linux) would be feasible, after having [struggled](https://web.archive.org/web/20080122004221/https://open.neurosaudio.com/node/41) to port it to past products and seeing the popularity of [such](https://web.archive.org/web/20080122004221/https://ipodlinux.org/Main_Page) [projects](https://web.archive.org/web/20080122004221/https://www.linuxdevices.com/news/NS4929282643.html) elsewhere.

## The fruit of its efforts

So, what design did they come up with? The 442 will ship with a 40GB hard drive and a Secure Digital card slot for transfer of video from the [Neuros MPEG-4 Recorder](https://web.archive.org/web/20080122004221/https://www.linux.com/article.pl?sid=05/08/04/1856204) and other sources, such as PDAs. It can play video and audio and show photos with its 3.6-inch color LCD. When hooked up to a TV or stereo (it has composite inputs and outputs), it can play and record audio and video. Support for MP3, WMA, AAC, and Vorbis audio files, and WMV and MP4 video is promised, while expanded codec support is listed as a top priority. Mac OS X and Linux users are assured compatibility for media syncing. See the aforementioned Neuros site or wiki for more details.

The company has entered its [gamma](https://web.archive.org/web/20080122004221/https://www.neurostechnology.com/store/prod_442gamma.asp) testing period, during which anyone can have a chance to buy the first generation version of the 442. The unit can be pre-ordered at [American Tech Pushers](https://web.archive.org/web/20080122004221/https://www.americantechpushers.com/), a site dedicated to selling Neuros products that was created by a community member.

Born says, "The current hardware is actually evolving, which is why we have the gamma program.... The gamma program is a result of trying to apply the open source software model to hardware. Obviously, because hardware is different in terms of variable cost and distribution, we have to deal with upgrades differently. It's all part of the experimentation that goes with the new concept of an 'open source hardware' company." Born is referring to the company's no-questions-asked return policy, under which a gamma tester can return his unit for next-generation models of the 442 at no cost, and thus not be penalized for participating in the product's evolution. Born expects the final form of the 442 to change significantly based on user response during this period.

Members of a smaller beta testing group launched several weeks ago complained universally about the uncomfortable and unresponsive feel of the four-way joypad used for interface control, and that part will probably be replaced in the product that hits shelves a few months from now. Users have also asked for the addition of both a CompactFlash card slot and the NeuroCast FM radio transmitter from the Neuros I. Such hardware changes remain a possibility.

The 442 will cost $500, and as an incentive, Neuros is offering a $100 discount to those who buy the first-generation gamma units. Owners of the Neuros I or Neuros II will be given a trade-in discount on their old units, although the details of this policy have not been set.

## Your role in the future

Neuros's next major product will be the [Neuros III](https://web.archive.org/web/20080122004221/https://www.theneuros.com/index.php/Category_Roadmap:Neuros_III), the successor to the Neuros I and II, which will be targeted at audiophiles. Will it be as open as the 442? Born expects the "Neuros III will be even better because we'll be developing that from the start with community input." The Neuros III's initial direction was decided alongside the 442's in order to create devices that augment rather than compete with each other.

If you would like to get involved, visit the [Neuros Open Source Site](https://web.archive.org/web/20080122004221/https://open.neurostechnology.com/) to gain an overview of past events, read digests of prior IRC meetings, and become aware of future events. You can also browse the [wiki](https://web.archive.org/web/20080122004221/https://www.theneuros.com/index.php/Main_Page) for more information, or visit the [forums](https://web.archive.org/web/20080122004221/https://www.neurosaudio.com/community/forum/default.asp) to chat with the community and read the thoughts of 442 beta testers.
