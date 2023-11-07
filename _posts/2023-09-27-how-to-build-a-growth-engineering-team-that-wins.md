---
layout: post
title: 'How to Build a Growth Engineering team that Wins'
description: "A dedicated growth engineering team can have a significant impact on a business's trajectory. If executed properly, this team will consistently drive target metrics to increase by 10% or more every quarter."
published: true
hidden: true # already a featued essay
cover: "/images/blog/dedic.png"
date: 2023-09-27 16:00:29
excerpt: "Hello World"
tags:
 - growth-eng
---

_Note: Co-written with [Elena Verna](https://elenaverna.substack.com/), and [originally published](https://elenaverna.substack.com/p/how-to-build-a-growth-engineering) on her blog._

A dedicated growth engineering team can have a significant impact on a business's trajectory. If executed properly, this team will consistently drive target metrics to increase by 10% or more every quarter.

However, the desired impact of growth engineering teams often goes unrealized often due to:

- Operating at the same speed as the core engineering team
- Getting caught up in mundane tasks
- Being gridlocked by dependencies
- Experiencing a general lack of inspiration

As a result, many growth engineering teams fail to live up to their high expectations and may ultimately face downsizing or restructuring.

The success of a growth engineering team comes down to prioritization, hiring, training, and culture.  In this article, we’ll cover:

1. Getting started: Growth Engineer #1
2. Setting the culture
3. Transitioning core product engineers to growth
4. Hiring growth engineers
5. Training


### 1. Getting started: Growth Engineer #1

Many growth teams mistakenly task the first dedicated growth engineer to build lots of experiments. And although experimentation velocity is the end goal of the growth engineering team, the first hire should focus on setting up off-the-shelf no-code/MarTech tooling.

The reason for this is simple: engineering capacity is almost always a team’s bottleneck.  As soon as Growth has a dedicated engineer, many people Marketing, Design and Product will often have lots of small tasks they’ll ask for help with.  You don’t need a Formula 1 mechanic to change the oil on your Prius; similarly, you don’t need a Stanford CS degree to change the header copy on your homepage.

These days, experiment-friendly, off-the-shelf tools exist for website optimization, landing page creation, emails & texts, and other business areas. By prioritizing self-serve tooling, Growth Engineering can enable other growth functions to self-serve on optimizing high-value surface areas, leaving Engineers to focus on high-value work where custom code is indispensable.


### 2. Growth engineering culture

Once you’re ready to grow Growth Engineering Pod (a PM, a Designer, and 3+ engineers), it’s time to ensure that your team’s work culture works well for growth.

A growth engineering team at a growth-stage company should feel appropriately weird, akin to an engineering team at a much smaller company.  Here are some helpful tenets:

**Growth engineers are fast & scrappy**. A strong growth engineer will develop a strong intuition for what parts of a project can be skipped or hard-coded and which are worth making robust for future re-use.  This might result in code that would be considered “ugly” by a core engineer but is perfectly reasonable to get an experiment out sooner.

**Growth engineers follow the 30/90 rule, focusing on impact over code craft**.  Only about 30% of the code a growth engineer will write remains in production after a year. In contrast, core engineers design their code with the expectation that 90% will be operational a year later.  Having most of your code get deleted can be disheartening for engineers who take pride in the elegance and reusability of their code contributions.  To stay motivated, Growth engineers instead take pride in the business impact their work delivers, i.e.  “I shipped 14 experiments last quarter, resulting in 6 winners and an incremental $3 million in annual revenue.”

**Growth engineers are comfortable wearing product hats**. Meticulous design specs or multiple rounds of back and forth are too slow.  Growth engineers must make many small product decisions independently to move quickly.

Growth engineers are comfortable wearing analytics hats. Being curious about user behavior, engineers should be able to answer most of their own questions about their customers by digging into the analytics themselves.

**Growth engineers are comfortable with ownership.** A practical Growth engineer can act as a “Mini PM” often able to own their projects from design to implementation, going live, and post-launch analysis.

### 3. Transitioning core product engineers to growth

One typical path to starting a new Growth Engineering team is to take an existing Core Engineering team and announce, “Congratulations, you’re now working on growth.”

This rarely goes well. Core Product Engineers often make for lousy Growth Engineers.

The roles and objectives of a successful growth engineering team differ significantly from those of the core engineering team. While a core team focuses on developing and releasing new products or features, a growth team's primary role is to improve the reach of already developed products. **Core teams ship to release, while growth teams ship to validate.** This validation is accomplished by exploring hypotheses that identify gaps between the company's perception and reality of customers’ motivations and abilities, leading to adjustments in product experience for better value delivery and capture.

In practice, the way these differences often manifest themselves as follows:


1. **Former Core Engineers work slower** because they are focused on delivering code at the “90%” quality bar, and it’s hard to unlearn that intuition overnight.


2. **Former Core Engineers are unmotivated** because the actual code is often not that complicated, and they are frustrated by not being given the chance to write beautiful code.


3. **Former Core Engineers are often blocked** because they’ve become accustomed to working with core designers that are meticulous and pixel-perfect about their work, and so are less comfortable making small decisions independently.

Not all hope is lost, however.  Over time, Core Product Engineers can become more comfortable working in a growth engineering work-style.  Be prepared to be patient & invest in training.

The first & highest leverage way you can teach Growth Engineering is by seeding the team with engineers that have worked in a high-functioning growth organization before. Following somebody setting a positive example is far easier than simply hearing “get it done” over and over.


### 4. Hiring growth engineers

When hiring engineers for Growth Engineering, staying away from the traditional “Software Engineer at FAANG/high-status company” background.  Former founders, new grads and bootcamp career-switchers are all groups that have not yet been tainted by “complexity is beautiful” culture that prevails at many bigger companies. These folks tend to take to Growth engineering much more naturally and enthusiastically.

During the interview process, competent coding is as important as ever, but algorithmic questions, a la “invert this binary tree” type questions are best worth avoiding, since they optimize for an ability that won’t be used nearly as much.  Being able to distinguish between O(nlogn) and O(n^2) runtimes is less important in an organization that tries to get away with hardcoding as much as possible on the front-end anyway.

An engineer describing themselves as “wanting to be more than just an engineer” or curious about product management during an interview is likely to have the right attitude to pickup the broad set of skills required for success.


### 5. Training Growth Engineers

Getting an engineering team to get comfortable working on growth takes some time. Don’t try to incorporate all of these processes all at once.

**Beginner Growth Team Patterns**
Start every quarter with a brainstorm, giving engineers enough context to come up with ideas and get more bought into the team’s goals.  Every quarter, have every engineer pick one project to own from start to finish.  Anytime engineers ask for clarification on specs or designs, have them make a recommendation before giving them an answer.  Take every opportunity to publicly praise your engineers for the behaviors you want to see - autonomy, curiosity, scope cutting, and being involved in winning experiments.

Once your engineers have gotten their feet wet with ideation and leadership, you can move on to fancier practices.

{% include widget/subscribe.html %}

**Advanced Growth Team Patterns**
Have engineers pick which project they want to work on every sprint (from your approved list) instead of assigning tickets.  Introduce an “experiment lead” role, where a dedicated engineer will collaborate with design and analytics teams directly and drive the project (with as much help from the PM as necessary for their level).  Have experiment leads write the first pass of an “experiment results” email to share with the broader organization.

Once your engineers get more comfortable owning and driving projects, you can start to introduce even fancier patterns, such as Pinterest's experiment idea review or Guillaume Cabane’s, getting engineers to “bid” on various projects and holding them accountable on their revenue and efficiency targets.

For more tactical advice on cultivating your growth engineering team, see +Growth from the Ground up: Getting Engineers to Generate Great Experiments.

**In conclusion,** the right growth engineers, with the right culture, training & team practices will be set up for success to make an impact on the business for years to come.
