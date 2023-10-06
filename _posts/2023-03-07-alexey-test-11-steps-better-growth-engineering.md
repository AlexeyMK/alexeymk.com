---
layout: post
title: 'The Alexey Test: 11 steps to better Growth Engineering'
description: Growth Engineering is a growing profession these days. But before you accept a shiny new job as a Growth Engineer, you should figure out the state of the Growth org.
published: true
cover: https://alexeymk-com.pages.dev/assets/img/thealexey.jpg
date: 2023-03-07 16:00:29
tags:
 - growth-eng
---

Inspired by the [Joel Test](https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code/).

  

Growth Engineering is a [growing profession](https://trends.google.com/trends/explore?date=2021-02-07%202023-03-07&q=growth%20engineering) these days. But before you accept a shiny new job as a Growth Engineer, you should figure out the state of the Growth org.

How? Glad you asked. 

The Alexey Test
---------------

1.  Do they have proper A/B testing infrastructure?
2.  Is the codebase setup for experimentation?
3.  How long does code take to go from “done” to “live”?
4.  Is quality tooling robust enough to keep you safe?
5.  How thorough us your Experiment Results Dashboard?
6.  Does your PM practice safe experiment hygiene?
7.  How in the weeds do Engineers get into the Data Stack?
8.  How many of the experiment ideas are coming from engineering?
9.  How many experiments does an engineer ship per quarter?
10.  Is the company at the scale that they’re ready for Growth Engineering?
11.  Are teams fully empowered to move the metrics they own?

  

1\. Does the company have proper A/B testing infrastructure?
------------------------------------------------------------

Some surprisingly large companies have internal teams still using userId mod 100 to bucket users into experiments. These days, that is no excuse, as a number of [quality](https://github.com/splitrb/split) [open source](https://github.com/openflagr/flagr) solutions are widely available, not to mention mature solutions like [Optimizely Full Stack](https://docs.developers.optimizely.com/full-stack/docs/welcome#:~:text=Optimizely%20Full%20Stack%20is%20a,or%20roll%20back%20features%20immediately.) and shiny newer entrants like [Eppo](https://www.geteppo.com/?utm_source=alexeymk), [StatSig](https://www.statsig.com/?utm_source=alexeymk) and [GrowthBook](https://www.growthbook.io/). 

  

A [full feature comparison](https://paper.dropbox.com/doc/Comparing-modern-Experiment-Feature-Flag-vendors--B0Dbsmd8_T4yMFEFevBL1PXnAQ-uwXWkr1q3rVqPBiewtqrD) is beyond the scope of this post, but at the very least, make sure that the potential employer’s framework includes client-side hashing (so no API calls to compute bucketing), custom audiences (“only run this test on paid traffic in north america”) and an ability to override bucketing via a URL parameter (otherwise, manual testing will be a nightmare).

2\. Is the codebase setup for experimentation? 
-----------------------------------------------

Having to reinvent the wheel with every experiment would make your velocity grind to a halt. 

  

In an ideal world, I would expect an experiment-friendly codebase to have helpers for things like getExperimentVariant(name, subjectId), as well as front-end specific component wrappers like (for React) <Experiment> or <ComponentName ... ifExperimentInVariant=\['foo', 'variant\_1'\]"> . 

  

I’ve also seen approaches where all experiment-related code lives in a separate /experiment directory, acomodating for a clear “have we productionized this yet” separation of concerns, as well as the ability to enforce different code coverage and style standards for code that is, at least for now, considered throwaway. It also makes it easier to see when an experiment from a while ago _still_ hasn’t been cleaned up.

  

Finally, having a proper front-end component library makes a _huge_ difference for front-end growth velocity, since it means engineers will spend more time in components and much less time implementing custom CSS. 

3\. How long code does take to go from “done” to “live”?
--------------------------------------------------------

Growth lives and dies by the number of bets it gets to take, and the ability to iterate on those bets. When working in a web surface area, **daily (or, ideally, continuous)** deploys make a huge difference for how many iterations of an experiment a team can attempt within a quarter. 

  

Native (iOS / Android) growth teams face a true uphill battle when it comes to fast iterations, since app store deploys often run on a weekly (or even slower) cycle, and including the approval process, an experiment can languish in a “done but not live” state for as long as a month. Workarounds usually include a live code push of some sort, either via [React Native Code Push](https://blog.logrocket.com/implementing-codepush-react-native/) [Flutter](https://flutter.dev/), an [SDUI](https://medium.com/airbnb-engineering/a-deep-dive-into-airbnbs-server-driven-ui-system-842244c5f5), or my personal favorite, webviews . 

  

4\. Is quality tooling robust enough to keep you safe?
------------------------------------------------------

Growth optimizes for going fast. Going fast means slightly more willingness to break things. But, uhh, breaking things is bad and should be minimized. What does the team do to prevent (or minimize the impact of) breakages?

  

Are key metrics monitored and triaged via an on-call rotation, using something like PagerDuty? Is the automated test suite sophisticated enough to verify whether any of the key tests start failing with a specific subset of your experiments? Are [Error Boundaries](https://reactjs.org/docs/error-boundaries.html) preventing an entire page from 500-ing because some below-the-fold experiment component is crashing?

5\. How thorough us your Experiment Results Dashboard?
------------------------------------------------------

Having to recreate an “experiment results” query for every single experiment is a painful place to be. Not just because it’s repetitive busy work (though it is). Thinking through “what kinds of cuts do we need to make sure to keep an eye on” (mobile vs desktop, paid vs organic, new vs returning) is a critical part of reviewing every experiment’s results. The Experiment Results view is one that grows in sophistication over time, as the team learns about the peculiarities of its customers and product.

6\. Does your PM practice safe experiment hygiene?
--------------------------------------------------

[Don’t peek](https://www.evanmiller.org/how-not-to-run-an-ab-test.html) at your experiment results is the sort of mantra that Data Scientists oft repeat and Executives ignore, just as oft. Left to their own devices, everybody will eventually game the metric you are holding them accountable for. 

  

There are any number of ways to ensure that your team is being kept honest about its actual impact, from holdouts to re-runs to controlling for the [winner’s curse](https://medium.com/airbnb-engineering/selection-bias-in-online-experimentation-c3d67795cceb). A good indicator for intellectual rigor here will be around whose job it is to “grade” a team’s impact - is it the PM, or a (less) biased outside stakeholder on the Analytics team?

7\. How in the weeds do Engineers get into the Data Stack?
----------------------------------------------------------

“I think we have Snowflake, but I‘m not over there often, that’s for analysts and PMs” not a good thing to hear. Growth engineers that are fully empowered to be impactful tend to spend a non-negligible amount of time poking around at user behavior, whether making custom cuts of experiment results or checking relationships between various user actions. 

  

This is, in fact, also the work of Analysts and PMs; the difference is, if an engineer can’t self-serve to sate their own curiosity, they’ll have a harder time getting on an Analyst’s backlog. And a growth engineer that can’t follow their own intuition is not going to have nearly as much to contribute to the roadmap.

  

Which brings us to

8\. How many of the experiment ideas are coming from engineering?
-----------------------------------------------------------------

It’s too easy to quote John Egan here, but he really nails it:

*   On my team, I try to instill a sense of ownership where engineers act as a mini-PM for their projects. Engineers are responsible for their experiments beginning to end, starting from writing the doc about why we are running the experiment, implementing it, doing the final analysis and finally, making the recommendation to ship or not. **They are also responsible for coming up with ideas to further increase the impact of their project** beyond what was originally scoped. They are empowered to propose and run experiments on what they think will further increase its impact.
*   [http://jwegan.com/growth-hacking/3-habits-highly-effective-growth-engineering-team/](http://jwegan.com/growth-hacking/3-habits-highly-effective-growth-engineering-team/)

  

A scenario where the PM, Designers, Engineers, and external stakeholders all contribute to the roadmap is a happy mix. One where the PM is largely responsible for all the ideas is not. Steer clear of places where the role of the Growth Engineer is merely to implement the experiments.

  

9\. How many experiments does an engineer ship per quarter?
-----------------------------------------------------------

Growth is a numbers game. At some point, [quantity develops a quality of its own](https://www.goodreads.com/quotes/795954-quantity-has-a-quality-all-its-own). Having good experiment tooling and a strong balance of smaller versus bigger projects should, in an ideal world, mean that an engineer is able to ship a new experiment into production once every couple of weeks. Anywhere in that order of magnitude is reasonable. If an engineer only typically ships one or two experiments a quarter, how much about user behavior are you really going to be able to learn?

  

10\. Is the company at the scale that they’re ready for Growth Engineering?
---------------------------------------------------------------------------

  

Companies will sometimes say things like “we’re having some problems growing our userbase, let’s bring in a growth team.” If only it were that simple.

  

Realistically, a company needs Product Market Fit before optimizing customer acquisition is going to make a difference; otherwise you’re optimizing your ability to sell a product that your customers ultimately are not interested in; your time is better spent figuring out the right product.

  

Similarly, running lots of experiments requires a non-trivial amount of customer traffic; for B2B companies in particular, your traffic may never quite get high enough that tactical experiments will ever reach statistical significance.  

  

In these cases, it’s simply too soon for a dedicated growth engineering team.

  

11\. Are teams fully empowered to move the metrics they own?
------------------------------------------------------------

Seasonality and organizational boundaries are the two demons you have to battle to have sensible metrics.

  {% include widget/subscribe.html %}

**Seasonality**

A growth team that owns a metric like “revenue” for a gift-forward product are going to look like geniuses around Christmas and doofuses in January, year after year. A stronger metric more in their control would be something like “landing page to purchase conversion” or “year over year growth.” While it is useful to keep an eye on global metrics, ultimately the scope of a team’s true north metric needs to match the scope of its charter.

  

**Org Boundaries**

Companies [ship their org charts](https://en.wikipedia.org/wiki/Conway%27s_law). In practice, this means that trying to work in a surface area owned by a different team - whose own true north is unrelated to yours - is going to be an order of magnitude harder than working on code that your team owns. 

  

Be wary of joining a team that has to hitchhike into others’ code to get its work done; the amount of politics and begging others for attention may exceed the amount of time actually working.
