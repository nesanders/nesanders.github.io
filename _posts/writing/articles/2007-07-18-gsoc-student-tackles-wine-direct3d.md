---
title: "GSoC: Student Tackles Wine Direct3D 10 Support"
date: 2007-07-18
pin: false
categories: [writing, article]
tags: [open source software, linux, google summer of code, interview]
venue: "Linux Weekly News"
description: The fourth of six entries in a 2007 series for LWN about the Google Summer of Code, this one focusing on the Windows compatability layer Wine.
# image:
#   path:
#  alt:
---

*This article was originally published in [LWN](https://lwn.net/Articles/242043/) on 2007-07-18.*

*This is the fourth in LWN's series of Google Summer of Code (GSoC) 2007 articles. The first three articles covered the [program launch](https://lwn.net/Articles/230858/), [Ubuntu's projects](https://lwn.net/Articles/236142/), and the [OpenMRS organization](https://lwn.net/Articles/238987/).*

András Kovács is spending his summer bringing the [Direct3D 10 graphics framework](https://www.gamesforwindows.com/en-US/AboutGFW/Pages/DirectX10.aspx) (D3D 10) to the Windows compatibility layer [Wine](https://www.winehq.org/). Already done with his mid-term evaluation on July 16th, he's well underway with his project, but don't expect to be playing [the latest Valve games](https://www.mcvuk.com/news/26103/Valve-jumps-on-DirectX-10-bandwagon) on Ubuntu this September. Building on top of years of Wine D3D development, Kovács will only [lay the foundation for version 10 support](https://code.google.com/soc/wine/appinfo.html?csaid=14411B58ACD714B8). Read on to learn about the past, present, and future of Wine D3D development.

Henri Verbeet, a Wine D3D developer active since September 2005, explains the importance of the framework:

> Quite a number of Wine's users use Wine to play games, and a significant part of the applications listed in Wine's [App DB](https://appdb.winehq.org/) are games. Although Direct3D support is only a part of what's needed to support those games, it's a rather important part. Initial support of DirectX for Wine was written by Marcus Meissner in 1997, initial support for Direct3D was added in 1998. However, the early versions of Direct3D were quite different from the later versions like D3D 8 and D3D 9.

The tale gets a bit contentious here. According to Verbeet, [Transgaming](https://www.transgaming.com/) forked Wine in 2000 to create what is now known as [Cedega](https://www.transgaming.com/products/cedega/) with a promise to return their improvements to the Wine project. Verbeet continues:

> That caused Wine's Direct3D development to be essentially idle for a long time because people were waiting for TransGaming's patches. Somewhere in 2002 people came to the conclusion TransGaming wasn't going to give back their changes, and 'resurrected' Wine's Direct3D implementation.

Regarding challenges involved with development, Verbeet lists non-descript application crash dialogs, debugging logs running into the gigabytes, ambiguous rendering bugs attributable to nearly any aspect of Direct3D or OpenGL, and finicky applications that refuse trivial implementation differences between Wine and the native platform.

When Wine began implementing the D3D 8 protocol in 2002, they were about two years behind Microsoft. Before 2002 was out, Microsoft had released D3D 9. In 2003, Wine began catching up with D3D 9 and performing a substantial reorganization of their codebase that persists today. The wined3d library was introduced, consolidating all the code for supporting D3D 8, D3D 9, and the 2D graphics framework [DirectDraw](https://msdn2.microsoft.com/en-us/library/ms879875.aspx).

Of the current state of Wine, Verbeet says:

> D3D 8 and 9 are almost feature complete at this point, but there will still be plenty of bugs to fix and performance improvements to make. For D3D 10 on the other hand this is 'just' the beginning, and there will be a lot of work to be done before any D3D 10 games will be playable.

Kovács began working with the Wine team long before this summer. He explains, "I got interested when I wanted some games fixed and I was encouraged to learn about the code and fix them myself." He entered the #winehackers channel on [Freenode](https://freenode.net/) and settled himself in amongst the development team. Kovács recalls, "[Stefan Dösinger] was the person, when I first came to IRC, that transited me into the Wine developer community." He has since submitted small patches for Wine's D3D implementation and Dösinger is now his GSoC project mentor.

Dösinger shares a typical background among Wine developers, "I've been working on Wine's Direct3D support for approximately 2 years now. I started hacking on Wine to get [Empire Earth](https://www.empireearth.com/us/index.htm) running. While many, many things improved since then, Empire Earth still doesn't run." Dösinger emphasizes the position of frustrated gamers, "We've had a few developers like that, and we could use many more, since we (the main developers) can't look at every single game out there. Unfortunately it is not a weekend's job to understand how our 3D code is working, isolate a bug in a game and fix it."

In early March, four days before Wine had even been accepted into the GSoC, Dösinger proposed [what would become the Direct3D 10 project](https://www.winehq.org/pipermail/wine-devel/2007-March/054778.html) to the Wine development mailing list. He writes, "The idea was that starting D3D 10 is exciting work, partly due to to the hype Microsoft built up, and it allows the student to grow into Wine's Direct3D implementation without being overwhelmed by the whole code at once."

Dösinger's proposal was met with some criticism. [Ivan Gyurdiev wrote on the development mailing list](https://www.winehq.org/pipermail/wine-devel/2007-March/054790.html), "I think the SoC project needs to push the participant to be creative and solve a significant obstacle in wine development, which others find challenging. Yes, I am sure wine will benefit greatly from a d3d10 stub, mapping 1-to-1 to wined3d where possible, but is it really a project that requires a lot of creativity and the whole summer to do?" Gyurdiev is himself a Wine D3D developer since 2006, whom Verbeet notes was very valuable in the development of shader support.

Others indicated that they felt effort would be better expended to improve the Direct3D 9 implementation, as very little software currently requires version 10. [Dösinger reiterated on the development mailing list](https://www.winehq.org/pipermail/wine-devel/2007-March/054804.html), "One problem is nowadays that wined3d is pretty advanced already, and the learning curve is rather hard already. D3D10 is in my eyes an opportunity of an exciting project which allows a new developer to grow into wined3d."

Kovács recalls the proposal, "It seemed interesting to me and Stefan encouraged me to write an application." Although Kovács had Dösinger's support and some Wine experience, he was not automatically given the reins of the project. Dösinger explains, "We had three applications for this project. One was cancelled because the student also applied for a different Wine-Based project ([DIB engine](https://code.google.com/soc/wine/appinfo.html?csaid=CD35DA4CD9CD1495)), and Andras was elected because he has already worked on D3D 9 a bit and knows the culture, and he has shown that he is talented in learning new things."

Like all GSoC students, Kovács was accepted on April 11th and given until May 28th to become familiar with his mentoring organization. He admits, "Unfortunately, I was only able to start my work one or two weeks ago [mid-June] because I had very serious exams." Kovács is pursuing a Informatics of Economics degree at [Széchenyi István University](https://info.sze.hu/) in [Gyõr, Hungary](https://info.sze.hu/index.php?option=com_content&task=view&id=2&Itemid=5). This absence was likely not detrimental in light of his previous experience and familiarity with the Wine organization.

Kovács describes his project, "First, I define all D3D 10 interfaces. The second step is to stub them out (make an empty function for each interface method). At the same time I write some tests to verify things like reference counting. Then things already supported in wined3d can be forwarded, and other features added to wined3d where needed." Asked what the average user would get out of a version of Wine compiled directly after he finished his project, Kovács replies wryly, "Instead of complaining that D3D 10 can't be found, or automatically using D3D 9, a game may find D3D 10 and attempt to use it, causing a lot of "stub!" complaints from Wine."

Another task outlined in Dösinger's original mailing list proposal, which Kovács has already completed, is to add Windows Vista as a supported Wine "winver." This addition will appease applications which are exclusive to Vista. Kovács identifies his current goals, "I am defining the D3D 10 interface in Wine's headers and getting involved with the development of bigger additions in Wine."

Dösinger elaborates, "The project is mainly about writing the infrastructure, so the main aspects are the headers and basic tests about non-rendering issues, like reference counting. Microsoft often violates their own rules, which has made us a lot of headache in the past. But my main hope is that András keeps working on D3D 10 after this project." Verbeet concurs, "I certainly hope András will continue working on Direct3D after SoC is finished." When asked if he would continue working with the Wine organization after the GSoC, Kovács responded, "Yes, because I like to do that."

The student and mentor seem to have a good working relationship. Kovács writes, "Stefan is the most helpful person that I have seen so far. If I need help, he is available and ready for help all the time... We are in contact all the time on IRC." Dösinger comments, "While András isn't the most experienced developer, he has shown often that he is talented in learning new things, and this is in my eyes one of the main aims of SoC - to give new developers an incentive to get into an open source project, and then continue working on it."

This good relationship bodes well for Kovács' mid-term evaluation. Dösinger explains, "The mentoring organizations mainly have to report how the student worked with the mentoring group (in our case the Wine Project) and whether the student should be invited back in the next GSoC." Kovács defined goals for the July 16th deadline, "I'm trying to get in the first set of patches, that will include full declaration of interfaces and methods, and start implementation of D3D10."

Many GSoC students cannot expect their code to see the light of day for several releases of their mentoring organization's project, perhaps months in the future. Dösinger says of Kovács, "András is working directly on the wine tree, so his work will be integrated immediately. Currently, though, he is struggling with getting his patches accepted by our maintainer, which is the main hurdle for new developers."

As for the prospect of Kovács' code sifting into the releases of Wine competitors, Verbeet writes, "I doubt we'll see much from this project in Cedega, since that would require TransGaming to either open up their own implementation or to use Wine's implementation instead of their own, both of which seem rather unlikely. For [CrossOver](https://www.codeweavers.com/) it's pretty much guaranteed it'll end up in there, since their tree is based on WineHQ's."

Comparing his project to Cedega, which he admits to not having personally used, Verbeet writes, "While our Direct3D support isn't quite perfect yet, I like to think we've come a long way in the past couple of years, and quite a number of games are pretty playable these days. The general opinion seems to be that Wine's Direct3D is quickly catching up to Cedega and at some points already surpassing it. For example, Wine had support for shader model 2 & 3 about half a year before Cedega did. A lot of people seem to have the idea that 'Wine doesn't focus on Direct3D, while Cedega does', but while that might have been true a number of years ago, these days that's simply not true anymore."
