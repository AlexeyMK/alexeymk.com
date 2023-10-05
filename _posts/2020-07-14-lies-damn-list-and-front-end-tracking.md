---
layout: post
title: ! Lies, Damned Lies, and Front-end Tracking
published: true
description: I'm here to warn you about the dangers of front-end user tracking. Not because Google is tracking you, but because it doesn't track you quite well enough.
date: 2020-07-14 19:31:22
tags:
- growth
- analytics
- javascript
---

I'm here to warn you about the dangers of front-end user tracking. Not because [Google is tracking you](https://donttrack.us/), but because it doesn't track you quite well enough.

What follows is a story in three parts: the front-end tracking trap I fell into, how we dug ourselves out, and how you can go around the trap altogether.

## Part 1: A Cautionary Tale

The year was 2019. Opendoor was signing my paychecks.

We were launching our shiny new homepage.

![shiny new homepage](https://paper-attachments.dropbox.com/s_797F39BD41EFDEC54D5CBA97D7296FCBDAF1FBE1044BD81BCD0D8F34808AEF50_1593573820734_image.png){:loading="eager"}

We had spent a month migrating our landing pages from the Rails monolith to a shiny new Next.JS app. The new site was way faster and would therefore convert better, saving us millions of dollars annually in Facebook and Google ad costs.

Being responsible, we ran the roll-out as an A/B test, sending half of the traffic to the old site so we could quantify our impact[^1].

The impact we'd made was making things worse. Way worse. The new site got crushed.

### What happened?

WTF. Google [had told us](https://web.dev/measure/) our new page was way better. The new site even felt snappier.

"Figure it out." The engineers on revamp paired up with a Data Scientist and went to go figure out what the hell was going on. They started digging into every nook and cranny of the relaunch.

A week went by. Our director peeked in curiously. Murmurs about postponing the big launch started to circle. Weight was gained; hair was lost.

Ultimately, the clue that cracked the case was bounces. Bounces (IE, people leaving right away) were way up on the new site. But it was clear the new site loaded much faster. Bounce rates should have gone down, not up.

How did we measure bounce rates? We dug in.


### How bounces work
 ![bounces work](https://cdn.shopify.com/s/files/1/2017/9247/products/Bebop-8-in-1-bouncy-castle-with-kids_600x.jpg?v=1553009477){:loading="eager"}

 When the homepage loads, the front-end tracking code records a 'page view' event. If the 'page view' event was recorded, but then nothing else happens, analytics will consider that user to have "bounced".

It turned out that the old site was so slow that many folks left before their 'page view' ever got recorded. In other words, the old site was dramatically under-reporting bounces.

It was like comparing two diet plans and saying the one where half the subjects quit was better because the survivors tended to lose weight.

## Part 2: How we fixed bounces

If the front-end was under-reporting bounces, could we find a way to track a 'page view' without relying on the client?

There was. It was on the server - though in our example, we tracked the event in Cloudflare, [which we were already using](https://medium.com/opendoor-labs/cloudflare-workers-opendoor-landing-page-infrastructure-824853a34551) for our A/B test setup.

We started logging a `page-about-to-be-viewed` event instead of the `page view` event, which was really `page-viewed-long-enough-for-the-tracking-javascript-to-load` event. We updated our bounce metrics calculation.

Lo and behold, the new infra was better after all!  We had been giving our old page too much credit this entire time, but nobody was incentivized to cry wolf.

## Part 3: Front-end tracking done right
Forsake the front-end. Tis a terrible place to track things, for at least three reasons.

### 1. Performance
 The less JavaScript (especially third-party) you have on your landing pages, the better. It's a better customer experience, and it improves your page's conversion and quality score.

 We calculated that getting rid of Segment and Google Tag Manager on our landing pages would yield about 10-15 points of [Google PageSpeed](https://kinsta.com/blog/google-pagespeed-insights/). Google takes PageSpeed into account for Quality Score, which in turn makes your CPMs/CPC cheaper.

### 2. Fidelity
 Somewhere between a [half and a quarter](https://www.socialmediatoday.com/news/global-ad-blocking-behavior-2019-infographic/551716/) of all users have ad-blockers set up. If you're relying on a pixel event to inform Google / Facebook of conversions, you're not telling them about everybody.
 This makes it harder for their machine learning to optimize which customers to send your way. Which means you're paying more for the same traffic.

### 3. Powerlessness
 You want to believe that you have control of the JavaScript running on your page, but how many browser extensions does the user have? How much has actually loaded? Wait, what version of IE is this person on?

### What should i do instead?

 Take all your client-side tracking, and move it

 - to [the edge](https://www.cloudflare.com/learning/serverless/glossary/what-is-edge-computing/) for things like page views (the server is fine, here, though, if you [KISS](https://en.wikipedia.org/wiki/KISS_principle))
 - to the server for events that have consequences, like button presses.
 - to publishers for paid traffic conversion, inform Google/Facebook via their server-side APIs when feasible, instead of trying to load a pixel


### FAQs & Caveats

#### Does your approach break identifying & cookie-ing users, so you can retarget effectively?
 Shouldn't. We used Segment to `identify` anonymous users; the change was just calling `.identify()` in Cloudflare (and handling the user cookie there).

#### I heard server-side conversion tracking for google and facebook doesn't perform as well.
 I've heard (and experienced) this as well. We're entering black magic territory here... try it.


## The End.

Want to tell me I'm misinformed / on-point / needed? [Hit me up](mailto:alexey+forsake-the-front-end@alexeymk.com).

<hr />

[^1]: We explicitly only changed the infra which served our landing pages, and kept the content - the HTML/CSS/JS - identical. Once the new infra was shown to work, we would begin to experiment with the website itself.
