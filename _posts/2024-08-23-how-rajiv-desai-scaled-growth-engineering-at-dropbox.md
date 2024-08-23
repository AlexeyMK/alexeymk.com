---
layout: post
title: "How Rajiv Desai Scaled Growth Engineering at Dropbox"
cover: /images/rajiv-desai.png
published: true
description:  "Within four years, Rajiv made Growth a top destination for Engineers at Dropbox. Here's how."
date: 2024-08-22 11:34:48
tags:
- interview
- growth-engineering
- engineering-management
---

I recently caught up with [Rajiv Desai](https://www.linkedin.com/in/rajiv-desai-a323937), the Senior Director of Engineering and Head of Growth Engineering at Dropbox. Dropbox's Engineering team has long held a stellar reputation in Silicon Valley. In fact, Dropbox was an early Product-Lead Growth pioneer through their "free space" referral program.


![https://www.slideshare.net/gueste94e4c/dropbox-startup-lessons-learned-3836587](/images/dropbox-share.png)


A company known both for its engineering and for its approach to growth. What can we learn from the person at the intersection of those two functions? I spoke to Rajiv to find out.

# About Rajiv

Rajiv joined Dropbox 8 years, ago to work on distributed systems problems. Four years in, he stepped up to lead Growth Engineering. "I barely knew what Growth Engineering was," he says.

At the time, Growth Engineering at Dropbox had high attrition and low employee satisfaction. Today, it has grown to a 130 people and a frequent internal transfer request target. How did Rajiv pull this off, and what insights might he have for the rest of us?

"There's more similarity between Growth and Infra engineers than first meets the eye," Rajiv says. "Both are fanatical about using metrics and experiment to quantify their impact". The kind of culture we had on the Platform Infra transferred surprisingly well to Growth."


# Insight #1: Focus on Leverage and Empowerment

When Rajiv first took over the team, Growth Engineers had their own career ladder. Dropbox had a distinct role for [web developers](https://alexeymk.com/2023/03/14/unshackling-marketing-from-engineering-bottlenecks), focused on requests from Marketing's. "This was a solid stopgap solution," says Rajiv. "Longer-term, it was better to give Marketing and PMs the power to make changes directly." These days, Marketing no longer files tickets with Growth for trivial requests. There’s a CMS for that. That means This leaves Growth Engineers to focus on high-leverage, bespoke projects.

The other group that has become more empowered are the Growth Engineers themselves. Dropbox's Growth Engineers have ownership over most of the surface areas they work on. This lets them make changes quickly. They don't need to ask for permission. They don’t blocked on PR reviews by others teams. Engineers can own their experiments fully. They can come up with ideas, code them up, and analyze the results.  This is what [full ownership](https://www.growthengblog.com/blog/2019/1/7/bottoms-up-growth-teams-building-a-high-impact-growth-team-series) means.


# Insight #2: Running teams bottoms-up

Many growth teams want to [work bottoms-up, like Pinterest](https://medium.com/pinterest-engineering/bottoms-up-how-the-pinterest-growth-team-decentralizes-team-structure-d9f890fa8869). They want to have ideas come from everyone. Most talk the talk, but few walk the walk.

How does Rajiv get his teams to collaborate across disciplines and own projects bottoms-up?


## 1. End-to-end project ownership

The biggest anti-pattern that Rajiv strives to avoid is "pass-the-baton" style projects. Projects where ideas get handed off, from PM to designer to engineer to analyst. Very waterfall.

At Dropbox, Engineers tend to follow projects end-to-end. To this end, Rajiv has implemented several key policies to make this possible.


## 2. Cross functional Experimentation Review

Every Wednesday, Product, Eng, Design and Data Science will review active experiments, dig into trends, and discuss. “Our currency for these is insights and not just wins,” explains Rajiv. “This helps people ask tough questions. They can be curious. They can give honest feedback. It doesn't matter if the numbers look good or bad. Engineers who join the meetings or read the notes learn from other teams. Cross-team exposure accelerates ramp-up time for new Growth Engineers.  In turn, this fuels experimentation velocity, giving us more shots on goal.”


## 3. Experiment Idea Review

First created at Pinterest, the [Experiment Idea Review](https://jwegan.com/growth-hacking/pinterest-supercharged-growth-team-experiment-idea-review/) is an alternative to the typical Brainstorm process. Rather than ask engineers to come up with one-sentence ideas on the spur of the moment, ideas are written up beforehand and presented. Rajiv's teams run Experiment Idea Reviews every 6 - 12 weeks, and the pitches (and discussion) often influence their team's roadmaps. "It helps to have an Engineering Manager run the Experiment Idea Review meeting. Teams where this exercise is engineering led see higher participation and engagement," suggests Rajiv. "It sets the right tone."


## 4. GMMRs (Growth Monthly Metric Reviews)

Every month, Tech leads and managers meet to review system metrics. These can include: availability, performance, bug backlog, experiment cleanup backlog, on call toil, and more. Engineers run these reviews, and the metrics are fully automated.
When the review leads to action items, Growth Engineering has the organizational buy-in to prioritize them. "Growth teams are always in a state of emergency to deliver business value. This is great, but can risk accruing tech debt unsustainably. Too much debt slows down growth in the long run. GMMR provides agency to engineers to keep tech debt in check."


# Insight #3: Recognition & Promotion

Great engineers want to work where their impact will be recognized, often through career advancement. Many engineers leave or avoid Growth teams, worried their work won't look challenging enough to merit a promotion. Even if an 8-line code change makes your company 8 figures, it won't make its author reach the next rung on their career ladder.

How did Rajiv address this issue at Dropbox?

He focused on making sure Dropbox’ [career framework](https://dropbox.github.io/dbx-career-framework/) was flexible enough to recognize the kind of impact a great Growth Engineer will have.

“Dropbox’s career framework covers expectations per-level and responsibilities across dimensions. With a common foundation, each business unit can extend the framework to measure and recognize and celebrate impact.”

What did that mean in practice for Growth Engineers?

## 1. Reward breadth, not just depth.

"Promotions need to be a reflection of one's expected future impact. We must balance the 'what?' with 'how?' of realized impact." explains Rajiv. "Let's say you coded up an experiment winner. If all you did was that code up somebody else's idea, that's not an indication that you'll continue to be impactful down the stretch. But if you contributed to ideation, did the work to get buy-in, resolved external dependencies, ran several iterations of the experiment, and then drove the analysis, then you probably have the breadth to deliver more winners." Engineering ladders will often include a "craft" component. For Growth engineers, their craft goes beyond technical execution. It also encompassing aspects of product and business acumen demonstrated through end-to-end experimentation.

## 2. Eng-wide Growth Infra

Engineering organizations have internal tools (feature flags, monitoring, logging, etc) that everybody needs, but is most acutely valued by Growth. In these cases, the Growth Infra team can step up. “We recently added automatic anomaly detection on metrics company-wide. This is an opportunity to have company-wide impact, a key signal for promotions for Staff and beyond.”

Through these tactics, Rajiv has observed success in enabling personal growth for growth engineers at all levels. This includes coveted staff+ levels that have company wide impact and influence.


# What did we learn?

What is the common thread among Rajiv's improvements?

One possibility is growth itself: Engineers want to see how they will grow in their roles. Gaining domain knowledge, driving impact, or winning recognition and being rewarded is important. Rajiv's track record has made opportunities clear to new recruits. No wonder Growth Engineering has become a desirable org at Dropbox.

Thank you for sharing your insights, Rajiv!

Learn more about leading Growth Engineering teams at [Alexey's upcoming Reforge course](https://www.reforge.com/courses/growth-engineering/details?utm_id=growth_engineering_alexey&utm_medium=social&utm_source=linkedin&utm_campaign=courses_creators_Q340). The next live cohort starts in [October 2024](https://www.reforge.com/courses/growth-engineering/details?utm_id=growth_engineering_alexey&utm_medium=social&utm_source=linkedin&utm_campaign=courses_creators_Q340), so reserve your spot.
