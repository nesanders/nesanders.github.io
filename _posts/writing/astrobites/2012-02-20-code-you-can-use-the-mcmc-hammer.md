---
title: "Code you can use: the MCMC Hammer"
date: "2012-02-20"
pin: false
categories: [writing, astrobites]
tags: [Bayesian, Bayesian statistics, markov chain monte carlo, software, statistics, things to make your life easier]
venue: "Astrobites"
description: "What's the best way to sample a banana?  A new code implements an efficient solution to this and other Bayesian inference problems."
authors: ["nes"]
---

*This post originally appeared on Astrobites.org on February 20, 2012 at [https://astrobites.org/2012/02/20/code-you-can-use-the-mcmc-hammer/](https://astrobites.org/2012/02/20/code-you-can-use-the-mcmc-hammer/).*

**Title**: [emcee: The MCMC Hammer](https://arxiv.org/abs/1202.3665)
**Authors**: Daniel Foreman-Mackey, David W. Hogg, Dustin Lang, Jonathan Goodman
**First Author's Institution:** Center for Cosmology and Particle Physics, Department of Physics, New York University

Perhaps it would be best to let [David Hogg](https://cosmo.nyu.edu/hogg/) [introduce this paper:](https://hoggresearch.blogspot.com/2012/02/publishing-implementations.html)

...the fact that this is not a typical or normal kind of publication—for example, there is nowhere that it could appear in the peer-reviewed literature—is crazy: A great implementation of a good algorithm that enables lots of science is itself an extremely important contribution to science

What he's talking about is a paper describing an implementation of a novel Markov chain Monte Carlo (MCMC) sampler called [emcee](https://danfm.ca/emcee) that enables efficient Bayesian inference. If that sounds like gibberish to you, be sure to read the fantastic Astrobites post [introducing Bayesian methods](https://astrobites.com/2011/11/26/your-gateway-to-the-bayesian-realm/) by [Benjamin Nelson](https://astro.ufl.edu/~benelson/). You may also want to read another Astrobite about how astronomers (should) [infer model parameters from data](https://astrobites.com/2011/07/26/astrostatistics-how-to-fit-a-model-to-data/).

[![](https://astrobites.com/wp-content/uploads/2012/02/rosenbrock-300x245.png)](https://astrobites.com/2012/02/20/code-you-can-use-the-mcmc-hammer/rosenbrock/)

*A contour plot of the Rosenbrock density *

To understand what makes emcee so great, the authors discuss a function that makes many MCMC samplers (like the venerable [Metropolis-Hastings](https://en.wikipedia.org/wiki/Metropolis_hastings)) break down, the Rosenbrock "banana" density:

$latex p(X)\propto \exp(-\frac{100(X_2-X_1^2)^2+(1-X_1)^2}{20})$

To see how this function works, take a look at the contour plot at right. Essentially, the probability is of order unity when $latex X_2\sim X_1^2$, but straying from this equality by even a little bit causes the probability to fall off a cliff. There's a second term that restricts $latex X_1$ to stay near 0, limiting the size of the parameter space.

Let's take a minute to put this in the context of a real-world problem. Suppose you had some data and a model that you want to fit to it that has the parameters $latex (X_1,X_2)$. This banana distribution represents the thing you're trying to calculate - the probability that a certain set of values for the parameters is true, given your data. The problem is that calculating the probability for every single point in the $latex (X_1,X_2)$ parameter space might take forever (especially if you have more than two parameters). What would be better is if you could figure out a way to only spend time calculating the $latex (X_1,X_2)$ parameters that are most likely, and not waste time calculating $latex p(x)\sim0$ for the infinite number of $latex (X_1,X_2)$ points that lie off the banana. This is what MCMC samplers are designed to do, except that some will perform better than others.

So what happens when you attack the banana with a simple Metropolis-Hastings sampler? Let's say you start the sampler at $latex (3,30)$ - way off the banana in a no man's land of infinitesimal probability. It will randomly draw a new value for each parameter from some proposal distribution - traditionally, this is a Gaussian centered on the current parameter value. If the new position in $latex (X_1,X_2)$ space is much higher up on the banana, where $latex p(x)$ is much larger, it will probably pick a new value from a Gaussian centered on this new spot; if not, it will probably pick again from the old spot (we can't say for sure, since randomness is built in). It will repeat this to walk its way up the steep probability hill.

This is all well and good for finding your way to the banana, but the trouble begins once you get there. Once you reach the banana, your sampler has to walk a very narrow tightrope to reach the peak of the banana at $latex (0,0)$. If you're using the simple Gaussian proposal distribution, the odds are your next step will send you falling down the sharp cliff. You could be stuck at this spot on the banana for quite a while, wasting precious computer time calculating $latex p(x)\sim0$. It will take your sampler a long time to randomly select a move that just happens to take you up the banana hill. [Abraham Flaxman](https://healthyalgorithms.com) has made a terrific [video of a Metropolis-Hastings sampler on the banana](https://vimeo.com/22616409) - watch how it gets stuck for a while every time it moves along the banana. A good sampler should [fly around the banana](https://vimeo.com/22806729), sampling everywhere without getting stuck and wasting less time spinning its wheels.

If you're very clever, you may be able to solve problems of this type by coming up with a linear operator that transforms the $latex (X_1,X_2)$ coordinate space into a new space where simple Gaussian steps take you right around the curves in the probability distribution. But this can be difficult if you're working with a high-dimensional model and it could save you a lot of time if your sampler is general enough to solve this problem for you. This property of being able to step around any awkwardly-transformed distribution equally well is called [affine](https://en.wikipedia.org/wiki/Affine_transformation)-invariance.

[![](https://astrobites.com/wp-content/uploads/2012/02/stretchmove-300x204.png)](https://astrobites.com/2012/02/20/code-you-can-use-the-mcmc-hammer/stretchmove/)

*A stretch move for updating the position of X_k based on the position of another random walker, X_j. The light-gray walkers are other members of the team. Figure 2 from Goodman and Weare (2010).*

Foreman-Mackey et al. have implemented such an affine-invariant sampler in emcee. Its major feature is that it doesn't just send one walker out into the probability field, but instead an "ensemble" of walkers - a huge search team (preferably $latex \gg100$). Now you can use all the information from the rest of your team to decide where to step next. In practice, if you want to move a walker you choose one other walker from the team at random and choose a new position that is a random linear combination of the positions of both walkers. This is called a "stretch move" (see figure at left). If some walkers catch the scent of a probability maximum, the others can be pulled along with it to explore the surrounding space efficiently. Importantly, the path followed by the ensemble is still [Markov](https://astrobites.com/2011/11/26/your-gateway-to-the-bayesian-realm/), so your results are not biased.

In the original paper describing this sampler ([Goodman and Weare 2010](https://msp.berkeley.edu/camcos/2010/5-1/p04.xhtml)), they find that the algorithm implemented in emcee would sample the banana > 10x faster than the Metropolis algorithm. They estimate this by taking the [autocorrelation](https://en.wikipedia.org/wiki/Autocorrelation) of the "trace," the steps that the sampler makes as it wanders around the parameter space. This is essentially a measure of how often the sampler reaches new regions of the parameter space (takes independent samples) rather than getting stuck.

So you're ready to use this code in your own projects? If you already have [python](https://python.org/) and the [pip installer](https://www.pip-installer.org/en/latest/index.html), then getting emcee up and running could not be easier:

pip install emcee acor #as root

Now you can start playing with the [quickstart examples on the emcee website](https://danfm.ca/emcee/#quickstart).  The code has already been used in several science projects - for example, to [fit the parameters of a comet's orbit](https://astrobites.com/2011/04/01/lolcats-and-comets-using-image-searches-to-do-science/) and [the stellar structure of the Milky Way disk](https://arxiv.org/abs/1111.1724).

The authors acknowledge that one limitation to this affine-invariant approach is that it requires that linear transformations be applied to the parameters (i.e that they can be stated as a vector). This doesn't work for problems with certain constraints, such as integer-valued parameters. If you can figure out how to solve problems like this using emcee, you can contribute a patch to their [GPLv2 source code](https://github.com/dfm/emcee). If you're not so ambitious, you may want to check out other MCMC packages such as [pymc](https://code.google.com/p/pymc/), and consider archiving your code in the [Astrophysics Source Code Library](https://arxiv.org/abs/1202.1026).