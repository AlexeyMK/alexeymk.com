---
cover: /images/kallax.avif
date: 2024-06-17 01:00:29
description: 'Later than you''d think: Landing Page Builders like Instapage or Unbounce
  are the Kallax of MarTech tools'
layout: post
published: true
tags:
- growth-engineering
- martech
- product-management
title: When is it time to replace Landing Page Builder?
---

“The fundraise has closed,” said the VP of Engineering, “we can now fund a dedicated Growth Engineering team.  Can we get rid of our janky landing page builder now?  I’d feel a lot more comfortable with a real engineering team owning the website.”

This is a typical conversation at some of the Series B/C companies I advice.  Flush with cash, Engineering and Growth teams are excited to upgrade to “grown-up tooling”,  moving from No-Code to custom code

Mostly, this is a healthy instinct.  For Landing Pages, however, it’s often better to keep working with a SAAS solution like Unbounce or Instapage.  Landing Page Builders (LPBs) are the Kallax of the Growth tech stack.  

In this article, I’ll explain both the Kallax metaphor, and how to evaluate Landing Page Build vs Buy for growth-stage startups. Let’s go.


## The Kallax Metaphor

Kallax is Ikea’s famous shelving storage solution. It’s simple, it’s popular, you’ve probably seen it before but not known the name.  When we transition from the “Ikea owner” to the “condo owner,” Ikea furniture gets tossed in favor of $2000 tables from [fancy](https://www.dwr.com/) [stores](https://www.cb2.com/).

Except the Kallax, somehow. The Kallax does not look out of place [amongst higher-end furniture](https://www.livingetc.com/ideas/how-to-make-ikea-kallax-look-more-expensive#:~:text=If%20you're%20the%20sort,it%20look%20more%20expensive%2C%20too.), so people often keep their Kallaxes around.

![](https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fit,w_730,h_730/at%2F92948417_2908092695938670_2536468540655847207_n)


LPBs are the same: worth keeping around, even if upgrading to a fancier lifestyle.


## Why are Landing Page Builders worth keeping around?

Two reasons:

1. Modern LPBs are more powerful and effective than you’d think.
2. There’s higher incremental ROI tasks you could have your Growth Engineering team doing.


### 1. Evaluating build-vs-buy for Landing Pages

When I evaluate landing page solutions, some of the key features I care about include:

1. **Blazing Fast Performance:** can we get close to 100/100 on Core Web Vitals in [Google Lighthouse](https://web.dev/)?  Faster pages improve conversion and lower CAC.
2. **Customization Flexibility**: how many of our ideas can be implemented the [WYSIWYG](https://en.wikipedia.org/wiki/WYSIWYG) system. Are designers often feeling constrained?
3. **Stack Compatibility:** how easily does the landing page builder work with our existing A/B testing and Product Analytics system?  Is it as easy to monitor and prevent regressions, and access version history?
4. **Cost per Iteration:** how many of the changes require engineering? What affect does this have on iteration speed?

Modern LPBs score better than you’d expect on those features.  Overall, I’d organize them as:

| **Feature**  | **Landing Page Builders**                                                                                                                                                                                                                                                                                                                                                | **Do It Yourself**                                                                                                                                                                                     |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Performance        | ⭐️⭐️⭐<br>LPBs have [deeply invested](https://unbounce.com/product/features/page-speed/) in performance; unless you have a FE performance expert, they’re likely faster                                                                                                                                                                                                   | *Theoretically* ⭐️⭐️⭐⭐, *realistically* ⭐️⭐<br>It️️’s certainly possible to get (and maintain) high performance landing pages. That said, React-based FE tech stacks make this quite an uphill battle. |
| Flexibility        | ⭐️⭐️⭐<br>Modern WYSIWYG is pretty good, but obviously not better than full custom.  You can, however, bring in engineers to write custom JS & CSS for those edge cases.<br>Add contract [web mechanics](https://alexeymk.com/2023/03/14/unshackling-marketing-from-engineering-bottlenecks) to boost this to  ⭐️⭐️⭐⭐.                                                    | ⭐️⭐️⭐⭐<br>W️ith custom engineering comes ultimate flexibility.                                                                                                                                         |
| Compatability      | ⭐️⭐<br>This is a pain. In past jobs, we end up writing a custom JS snippet that goes on every page to handle analytics & monitoring.  Experimentation-wise, you’re stuck using the LPB’s system. For QA, it’s possible to [restrict publishing to admins](https://instapage.com/en/features/read-only-team-members) only, but there is no equivalent of a “Pull Request” | ⭐️⭐⭐⭐<br>Honestly, one of the biggest benefits of going custom is that your testing, monitoring, experimentation and analytics **just works.**                                                         |
| Cost per Iteration | ⭐⭐⭐⭐<br>Come up with a copy experiment, launch the test within minutes. In fact, you can [now use AI](https://unbounce.com/product/smart-copy/) to come up with & run the experiment in the first place, bringing the cost way down                                                                                                                                      | ⭐<br>Everything require eng. Eng works in sprints, often meaning week-or-longer turnaround times for even simple changes. Sturdy, but slow.                                                            |
| Total              | 12-13⭐                                                                                                                                                                                                                                                                                                                                                                   | 11-13⭐                                                                                                                                                                                                 |

It’s pretty close.  Landing Page Builders are slightly less powerful and more annoying to integrate, but allow for faster iteration.  Both options here can be reasonable.  There’s a second consideration that brings Landing Page Builders over the edge: opportunity cost.


### 2. The Opportunity Cost Argument for Landing Page Builders

Engineering throughput is almost always a bottleneck for Growth and Marketing teams. Some parts of the stack that deserve optimization, such as checkout and onboarding, require engineering to improve.  Others, such as landing page builders or lifecycle emails, can be improved via SAAS tools alone.

Given limited Engineering capacity, deploy engineers to high-impact surface areas where custom work is unavoidable.

**Opportunity Cost Example:** 
A company has one growth engineering team that has capacity to run 12 experiments in a quarter. The marketing team has 6 landing page ideas they’d like to run as well. They can either:

- Option A (custom):
    - **Engineering Team**: run 8 conversion experiments and 4 landing page experiments (custom)
- Option B (LPB): 
    - **Engineering Team:** run 12 conversion experiments, 
    - **Marketing Team:** run 6 landing page experiments  using Landing Page Builder.

To account for lack of customization, let’s penalize LPB-driven experiment by halving their win rate.  We’ll estimate half of engineering-driven experiments will win, and a quarter of self-serve experiments.


| Scenario              | Conversion Experiments | Landing Page Experiments | Total “Expected Wins” |
| --------------------- | ---------------------- | ------------------------ | --------------------- |
| Custom Landing Pages  | 8 (eng)                | 4 (eng)                  | 12/2 = 6              |
| Landing Page Builders | 12 (eng)               | 6 (marketing)            | 12/2 + 6/4 = 7.5      |

If this seems familiar, this is just the theory of [comparative advantage](https://www.thebalancemoney.com/comparative-advantage-3305915) from economics.


## So when does it become worthwhile to build landing pages in code?

The exact timing will differ for every team, but roughly “when there is no higher-value focus area for your engineers.” 

At MasterClass, we had an engineering team focused on Landing Pages as our 3rd Growth Pod. Even at that point, we’d still use a LPB to iterate on new landing page designs, and only move them into “engineering land” once they became clear winners.  For many companies, the correct answer to “when do we outgrow LPBs” may well be “never.”  This simply means that you keep finding higher-ROI ways to deploy your Growth Engineers. That’s well worth being proud of.