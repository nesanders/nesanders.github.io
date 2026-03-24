---
title: "How to submit a paper"
date: "2012-08-06"
pin: false
categories: [writing, astrobites]
tags: []
description: "You've finally done it - completed your first scientific paper for publication.  What do you do with it now?"
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on August 06, 2012 at [https://astrobites.org/2012/08/06/how-to-submit-a-paper/](https://astrobites.org/2012/08/06/how-to-submit-a-paper/).*

So you've spent months (if not years) slaving away at a research project, developing a new scientific idea. You've written a paper where you've carefully described your work and laid out and justified your interpretation of the results. You're eager to share your findings with your peers and make your contribution to the advancement of your field. How do you do that?

In this Astrobite we'll explore the mechanics of submitting a paper. We'll show you how to submit a paper to a journal for peer review and, all-importantly, how to post it to the [arXiv](https://arxiv.org/) preprint server so that we at [Astrobites can write about it](https://astrobites.com/category/daily-paper-summaries/).
Preparing your paper
In this article we won't discuss how to actually write the paper - that's a subject that deserves at least a dozen Astrobites. The best way to get help with that is to have discussions with your advisor and to read previously published journal articles, especially ones written recently in your sub-field.

But regardless of how you write the paper, if you plan to submit your work to a journal there are a few things you need to keep in mind from the beginning:

 	- **Pick a journal.** There are dozens of peer reviewed journals that publish work related to astronomy (you can find an extensive list [here](https://astro.u-szeged.hu/journals.html)). The journals differ in the subjects and type of work that they publish, their impact (how widely they are read and cited), and their policies for submissions. Your advisor is probably the best guide for selecting the ideal journal for your work. One of the most prominent astronomy journals, which we will refer to below, is the [American Astronomical Society](https://aas.org/)'s (AAS) [Astrophysical Journal](https://iopscience.iop.org/0004-637X/), or ApJ.

 	- **Follow your journal's guidelines.** Each journal has specific instructions for authors (for example, see the [ApJ guidelines](https://aas.org/journals/authors/common_instruct)), including guidelines for formatting, structure, etc. Not all of these guidelines are strictly enforced, but the more closely you adhere to these guidelines the fewer problems you may encounter during the or [self publishing](https://blog.reedsy.com/best-self-publishing-companies/) or publishing process.

 	- **Use the tools of the trade.** Unlike many other fields of science, most journals in astronomy expect submissions to be prepared in [LaTeX](https://www.latex-project.org/), a markup language with sophisticated typesetting features. If you haven't used LaTeX before, it may take a few weeks to get the hang of it, but if you're writing a long manuscript loaded with equations, citations, figures, and tables, you'll find that it really is the best tool for the job. Looking through the [sample files for the AAS LaTeX package](https://aastex.aas.org/samples.html), or the equivalent for the publisher of your choice, can help you get started. Downloading LaTeX sources for papers on the arXiv can similarly serve as examples. You can use [BibTeX](https://www.bibtex.org/Using/) to manage your references, and [ADS](https://www.adsabs.harvard.edu/) can give you properly formatted BibTeX citations to copy into your [.bib database file](https://amath.colorado.edu/documentation/LaTeX/reference/faq/bibstyles.html). Figures are usually saved in [eps format](https://en.wikipedia.org/wiki/Encapsulated_PostScript), which supports [vector graphics](https://en.wikipedia.org/wiki/Vector_graphics) so that figures can be resized to any resolution.

 	- **Publishing isn't free.** Most journals carry page charges to help defray publishing costs ([MNRAS is a notable exception](https://www.wiley.com/WileyCDA/WileyTitle/productCd-MNR.html)). For example, [page charges for the Astrophysical Journal](https://iopscience.iop.org/0004-637X/page/Page%20charges) are $110 per page (and printed color figures cost extra). It is typical to request funding for page charges when writing grant proposals to support research; in most cases, a graduate student's advisor will use these funds to cover page charges.


Submitting to the journal
[![](https://astrobites.com/wp-content/uploads/2012/08/apjup-300x171.png)](https://astrobites.com/2012/08/06/how-to-submit-a-paper/apjup/) The file upload page for the Astrophysical Journal (ApJ).

**

To submit your paper to your journal of choice, visit their website and find the submission form. You will probably need to register an account first. The submission process involves uploading your manuscript files (LaTeX files and figures) and entering metadata such as the author names and abstract text. This is all fairly straightforward, except that a latex manuscript that compiles and looks beautiful on your computer may not be accepted by the journal.

First of all, the formatting style of the published journal may differ significantly from the LaTeX default. To get a better idea of what your published work will look like, you may want to find a style file that approximates what the journal uses. For ApJ authors, Maxim Markevitch and Alexey Vikhlinin have written the extremely useful [emulateapj](https://hea-www.harvard.edu/~alexey/emulateapj/) package.

Second, the latex sources you upload must compile on the journal's server. There are several common issues that can make this a challenge. If you've used any special packages, including emulateapj and BibTeX, they might not be available on the server. For BibTeX, you will probably need to copy and paste the compiled reference list (the .bib file generated by BibTeX) into your .tex file. The journal may also expect the figures to be named sequentially (f1.eps, f2.eps, etc.). Finally, the comments you've entered in your LaTeX document might not be things you planned to share with the world, so you should probably delete them before submitting. I've written a python script which you can [download here](https://github.com/nesanders/NESsubmit/blob/master/NESsubmit.py) to automate these tasks (tailored for ApJ); just launch it like:


cd /my/paper/directory/
python NESsubmit.py myfile.tex outputdir


Even with these fixes, it's common that the document compiled by the journal's server will not be acceptable (e.g. a table might run off the page). But don't despair! If the version you compiled looks just fine, you may have the option to upload your compiled PDF to replace the version on the server, which is often necessary. Don't stress too much about these issues - once your paper is accepted, the publisher will fix any layout issues like this, place your figures appropriately, etc.

What comes next? Peer review. You will get an email from a scientific editor at the journal informing you that an expert in your field (or maybe more than one) has been assigned as an anonymous reviewer for your paper. This person will spend a few weeks reading and considering your work, and will then make a recommendation to the editor as to whether or not your paper is appropriate for publishing in their journal. The editor will consider the referee's report and send you a list of their comments and suggestions for improving the piece.

You will then need to resubmit your paper, along with a response explaining to the editor how you have addressed each of the referee's comments. Once the referee is satisfied, the journal will accept your paper and it will get started in the publishing process. Copy editors at the journal's publisher will work with you to fix any typographical issues in the paper.
Submitting to the arXiv
[![](https://astrobites.com/wp-content/uploads/2012/08/arxup-300x142.png)](https://astrobites.com/2012/08/06/how-to-submit-a-paper/arxup/) The file upload page for arXiv submissions.

**

The [arXiv](https://arxiv.org/) is a preprint server where scientists in many fields post their work. Posting to the arXiv can increase the visibility of your work and prompt helpful feedback from other astronomers. [Astronomers debate](https://www.astrobetter.com/to-post-or-not-to-post-publishing-to-the-arxiv-before-acceptance/) whether you should wait until a paper passes peer review and is accepted before posting to the arXiv, rather than posting your paper immediately upon submitting to the journal, but the vast majority of papers eventually appear on the arXiv.

There are detailed [instructions for submitting to the arXiv](https://arxiv.org/help/submit/) on their website, but we'll summarize the key points here. To submit a paper, you first need to [register an account at the arXiv](https://arxiv.org/edit-user/), which takes just a few minutes. Once you have an account, you can access the [arXiv submit page](https://arxiv.org/user/create). This page will walk you through the steps of uploading your tex document and figures, typing in the abstract and author list that will appear on your paper's arXiv page, and other tasks. Some of the same formatting issues that applied to journal submissions (above) apply here, too, so that [python script](https://github.com/nesanders/NESsubmit/blob/master/NESsubmit.py) can help. Beware that there is a maximum [file size limit for arXiv submissions](https://arxiv.org/help/sizes), so you may need to save certain figures at lower resolution or higher compression than you would publish in the journal.

As a side note, the arXiv has a rolling deadline for submissions at 20:00:00 GMT (4pm EST) every weekday. Every day the arXiv posts a list of all the papers it received, in order of the submission time. If you submit at 20:00:01 GMT, you will be at the top of this list and your paper might be more likely to catch readers' eyes. In fact, there is [some evidence](https://arxiv.org/abs/0907.4740/) to suggest that this can help your paper get cited more. If you want to submit at just the right second to top the list, you will probably want to closely watch the [arXiv clock](https://arxiv.org/localtime).

If you make major changes to your paper, e.g. after receiving referee comments, you should update the posting at the arXiv with the latest version. Be aware that everything uploaded to the arXiv will be stored online forever, even if you replace it with an updated version or ask that it be [withdrawn](https://arxiv.org/help/withdraw). This includes the latex source files for your paper. You should practice caution in what you choose to upload, especially when it comes to comments you may have written for your eyes only in your LaTeX file.
One last place to share your work...
While you're thinking about peer-reviewed journals and the arXiv, don't forget about Astrobites! We highlight undergraduate research projects on our website - you can [submit your abstract here](https://astrobites.com/about/undergraduate-research-abstract-submission/).

Do you have any tips for submitting journal articles? Leave a comment below!