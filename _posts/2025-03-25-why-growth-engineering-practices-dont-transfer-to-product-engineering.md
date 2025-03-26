---
layout: post
title: "Why Growth Engineering Practices Don't Transfer to Product Engineering"
description: "Should marathoner runners train like sprinters? While there are probably some interesting cross-training opportunities, the two are fundamentally different."
published: true
date: 2025-03-25 12:00:00
tags:
- growth engineering
- culture
- advice-for-engineer
---

Any time I [write about growth engineering](https://newsletter.pragmaticengineer.com/p/what-is-growth-engineering) on the internet, I end up with comments like these:

{% include image.html 
   img="/images/linkedin-comment.png" 
   url="https://www.linkedin.com/feed/update/urn%3Ali%3Aactivity%3A7309588381838036992/?commentUrn=urn%3Ali%3Acomment%3A(activity%3A7309588381838036992%2C7309620137312071680)&dashCommentUrn=urn%3Ali%3Afsd_comment%3A(7309620137312071680%2Curn%3Ali%3Aactivity%3A7309588381838036992)"
   title="LinkedIn comment about growth engineering practices"
   caption="Thanks LinkedIn"
%}

If all of these Growth Eng practices lead to high-velocity, high-impact teams, shouldn't we all be running our Product teams the way we run Growth?

{% include image.html 
   img="/images/confused-jackie.png" 
   url="https://imgflip.com/i/9oiypc"
%}

Short answer: no.  

Should marathoner runners train like sprinters? While there are probably some interesting cross-training opportunities, the two are fundamentally different. 

The same is true for Growth vs Product Engineering. Forcing Growth practices upon Product Engineers will neither improve your velocity nor your product quality.

Here's what goes wrong:

## 1. Product Teams would give up features early

If a movie studio makes 10 trailers but then only uses the 3 that performed best, that's a best practice. If they scrap an [entirely-finished movie](https://ew.com/movies/batgirl-directors-call-cancelation-biggest-disappointment/), that's a tragedy tax write-off. 

{% include image.html 
   img="https://comicyears.com/wp-content/uploads/2022/08/Batgirl-cancelled.jpg" 
   title="DCEU Batgirl Movie Cancellation"
   caption="A $90 million movie that was nearly complete before being canceled for a tax write-off"
%}

Growth Engineering teams throw away failed experiments all the time, but shutting down a feature that's already live generally [does not go over well](https://www.theverge.com/23778253/google-reader-death-2013-rss-social). Product Engineers need conviction in their ideas the same way Growth Engineers need to be willing to [kill your darlings](https://writingcooperative.com/what-kill-your-darlings-does-and-doesn-t-mean-cd8d533dd627).


## 2. The codebase would become an unholy mess.

Growth Engineers go fast by cutting corners. If Product Engineering took a similar "we'll make it nice when it wins" approach, the team would drown in tech debt almost immediately.  

This is because, compared to Growth,

1. There are more Product Engineers, so there'd be more "temporary code"
2. Product surfaces are more complicated, compounding the tech debt 
3. Product features are bigger and take longer to build, making the "temporary code" last longer

Development would grind to a halt. Growth gets away with it, and even then barely.

{% include image.html 
   img="/images/dennis-rodman.jpeg" 
   title="Dennis Rodman analogy"
   caption="One Dennis Rodman: Helpful. Five Dennis Rodmans: Chaos"
%}


## 3. Stuff would break more often, and it would be a big deal.

A product outage is breaking news.

{% include image.html 
   img="/images/slack-outage.png" 
   url="https://www.forbes.com/sites/mollybohannon/2025/02/26/slack-down-thousands-report-issues-with-messaging-platform/"
   title="Forbes article about Slack outage"
%}

I have yet to see an equivalent article for "Thousands Reported Issues with Slack.com marketing site."  

{% include image.html 
   img="/images/marketing-outage.png" 
   title="Marketing site outage screenshot"
   caption="If NASA and a Hackathon Demo are the extremes, Growth is closer to a Hackathon"
%}

The reliability bar is higher for a product with paying users. That's why working more methodically makes sense. If a Core Product had as many small incidents as a Growth team, they're liable to get some upset customers.


## Cross Training: What Product teams can take from Growth Engineering

As we've seen, a wholesale adoption of Growth practices wouldn't work. So then, which ideas are worth emulating?

1. **Emphasize the Business Metric**
   Many Core Product Engineers treat business metrics as an afterthought. Go over key metrics at the team's weekly meeting to help the team focus on their team's mission.

2. **Quantify your rollouts via Feature Flags**
   Feature flags are [just a good idea](https://zachholman.com/posts/deploying-software). Rolling out slowly both reduces anxiety and helps quantify impact.

3. **Interdisciplinary Engineers**
   Strong Growth Engineers [tend to be well-rounded](https://www.youtube.com/watch?v=fFZBZJrnUIg), with a combination of product sense, analytics, user behavior, and statistics. As everyday coding becomes commoditized, Product Engineers will need to invest in similarly broadening their skillsets.  

...if only there was a class for that 😉.
