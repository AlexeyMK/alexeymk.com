---
layout: post
title: Confessions of a Deadbeat Open Source Maintainer
published: true
date: 2017-05-07 01:06:24
tags:
- reflection
- open source
---

![a user sums it up](/images/abandoned-project.gif "source: https://github.com/gterrono/houston/issues/294#issuecomment-238914107"){:loading="eager"}


Create an open source project, they said.

It'll be great for your resume, they said.

### Part 0: Wherein we provide context
The year was 2013, Meteor was the hip new kid on the block and Coffeescript was a reasonable JS dialect choice. We were fresh out of college.  Meteor was hosting their first 'Summer Hackathon' in San Francisco on 10th and Minna, and we figured this was our shot.

Sequestering ourselves on the second floor of the hackspace, a couple of college friends and I acquired a whiteboard and some markers, and jotted down our big idea list. Not lacking for ambition, the first thing we figured we would fix was server-side rendering. Turned out this _seemingly simple_ task was already on Meteor's [Trello Roadmap](https://trello.com/c/Lz07fBAm/7-server-side-rendering), so, what the heck, we figured we'd pitch in.

![I inquire about server-side rendering](/images/server-side-rendering.gif){:loading="eager"}

Speaking with the actual development team a few hours later, we learned that server side was (1) hard and (2) coming soon anyway[^ssr]. Fair enough - we'd solve our other painpoint, the lack of a proper admin DSL.

## Part 1: introducing Z, the Mongo Admin
Coming from Django land, one of my favorite Framework features had always been being able to describe Admin UIs with a very high level DSL - stuff like

{% highlight python %}
from django.db import models

class Author(models.Model):
    name = models.CharField(max_length=100)
    title = models.CharField(max_length=3)
    birth_date = models.DateField(blank=True, null=True)
{% endhighlight %}

leading to auto-generated pages that look like:

![django admin screenshot, from tutorial](https://docs.djangoproject.com/en/1.11/_images/list_filter.png){:loading="eager"}

Meteor didn't have an admin DSL[^genghis] yet. I wanted very much to build one, and a zero-config one (IE, automatically discover your models) at that. I kept suggesting this idea until the others agreed. Leadership.

We cranked out a desired feature-list on a whiteboard. It looked like this.

#### The List

- document view
- dealing with arrays
- dealing with nested objects
- boolean fields
- integer fields
- editing
- auto-discovery & Schema
- collection (table) view
- home page view
- doesn't look terrible
- wrapping the admin into a package.

Then we got started. I hid in a corner and tried to figure out how to get a list of Collections, and the fields in each collection, out of an arbitrary Meteor app. It turned out there was no official way but if I poked under the covers of the undocumented `Meteor._RemoteCollectionDriver.mongo.db.collections` call.

<script src="https://gist.github.com/AlexeyMK/84ed89aaa30da0aea9170974f038955e.js"></script>

It turned out you had to 'warm up' the _RemoteCollectionDriver (by creating an arbitrary collection) to get the collections loaded. This was the way things worked around Meteor 0.6.

Package loading was the other relatively painful thing - since we couldn't figure out _quite_ how to get our package loaded last (since we relied on a router and a number of other packages), Yefim solved the problem the pragmatic Hackathon way, and named the package Z-Meteor Admin. This way, unless we relied on a package that decided to start with two Z's, Meteor would load us last.

#### Launching with the MVP
Surprisingly, it kind of worked.

![an early version of the UI](https://camo.githubusercontent.com/2b2811cfc1308e19f99a3b31bf2b9b8d9b4dd008/68747470733a2f2f7261772e6769746875622e636f6d2f67746572726f6e6f2f6d6574656f722d61646d696e2d75692f6d61737465722f646f632f636f6c6c656374696f6e2e706e67){:loading="eager"}

We demoed at the Hackathon and even [won the 'Award for Most Technically Impressive'](https://blog.meteor.com/congratulations-to-the-meteor-summer-hackathon-2013-teams-c2ec782e9b53).

Greg and I kept working on the project throughout the summer and fall of 2013. We cleaned it up and released 1.0 in December 2013, after gaining over 200 stars on Github.

For our 1.0 release, I demoed a slightly-less-hacky-and-[now-renamed](https://github.com/gterrono/houston/issues/37) Houston Admin at Meteor Devshop 10:

<div class="ratio ratio-16x9">
<iframe width="640" loading="lazy" class="lazyload" height="360" data-src="//www.youtube.com/embed/8ASwWEZsAog" frameborder="0" allowfullscreen></iframe>
</div>

Here's [the blog post](http://alexeymk.com/2013/12/19/houston-admin-talk-at-meteor-devshop-10.html) I wrote to celebrate the event.

## Part 2: A primer on gas tank emptying

Between the 1.0 in December 2013 and roughly summer 2014, our enthusiasm for working on the project waned. There were many reasons, but here are some:

#### 1. We had shit to do.
Greg finished school and was working for Gumroad, not in Meteor.
I was doing consulting/startup prototyping work, also mostly not in Meteor.
Yefim & Ceasar made the wise decision of not doing much contributing work past the initial release.

#### 2. We were no longer scratching our own itch.
Originally, Yefim and I used Houston for the Intern Dinners we were running that summer. It was pretty helpful, and if we needed more UI stuff, we'd just add it. That was summer 2013.

Even though many of the feature requests we were getting were quite sensible (and we implemented a bunch of them), we really weren't scratching our own itch after summer 2013.

#### 3. 'How do I even'-esque Github Issues
Actually, having gone through some of the ~270 [Github Issues](https://github.com/gterrono/houston/issues) on the project, I'm surprised by how good many of them were and how attentive and friendly we were about them. Still, there were a few bad apples, like [css not rendering](https://github.com/gterrono/houston/issues/216), [how to upload files](https://github.com/gterrono/houston/issues/274) and [Cannot login on Heroku app](https://github.com/gterrono/houston/issues/301) that either failed to provide enough context and/or were coming from folks who were not otherwise yet competent Meteor (or even JS) developers.

#### 4. Meteor doesn't support Mounting & hacky CSS.
Meteor bundles all CSS & Javascript together when it compiles. This is not the ideal behavior for UI libraries, since if the parent app has some logic that say, for example `$('.save').disable()` and later the user goes to Houston, all of a sudden all of our 'save' buttons are disabled and its unclear why. Likewise, any global CSS rules the parent app chooses to use, like (say) making table columns 200 pixels high, will also make our table columns 200 pixels high. Greg did [some crazy things](https://github.com/gterrono/houston/issues/172) to avoid the namespace collissions.

Django solves this problem through [URL namespaces](https://docs.djangoproject.com/en/1.11/topics/http/urls/#url-namespaces), allowing the 'admin' to behave largely like its own app. Express.js allows for ['mounting'](https://expressjs.com/en/api.html) of multiple sub-apps on certain directory paths - in either case, no shared CSS/JS is bundled for these cases, avoiding collissions like the above.

Meteor did not support Mounting out of the box. I bugged the devs about it at a later Devshop, and got an off-hand note that this was not a priority for now. Later on we tried to add Mounting to Meteor and/or host the Admin as a separate app that shared only the database with the parent app, but by then lacked the enthusiasm to bring the projects to completion.

#### 5. Testing is tough!
Reactive apps with not a ton of business logic are _tough_ to test! Perhaps we simply lacked the experience here, but when Greg and I tried to add proper integration tests to the app, we spent tens of hours being our heads against the wall, time that would have been better spent actually fixing bugs.

#### 6. Router Wars
When we created Houston in summer 2013, there was a router that I believe was just called Router. Later, Iron-Router becames the default router (perhaps this was a rename?) - and even later, Flow-Router became the preferred router. Here's [a post](https://kadira.io/blog/meteor/flow-router-4-0-and-future-of-routing-in-meteor) on the state of routing as of Summer 2015.

The point was, you couldn't really use both routers and so we would need lots of clever work to see if we could support both paths.  We discussed this in [a Github Issue](https://github.com/gterrono/houston/issues/294) and I [wrote up a prototype](https://github.com/gterrono/houston/pull/343) but ultimately just didn't have enough time/energy to ship a supports-both solution.

#### 7. When Undocumented Internal Dependencies Change
Remember that `_RemoteCollectionDriver` hack? In most every release (0.7, 0.8) my 'whatever, go ask mongo what collections there are' hack kept breaking and I had to re-implement a new hack based on whichever refactor the Meteor Development Group implemented internally.

Not particularly taxing, but just a drain.

#### 8. We never stepped back and thought about architecture.
Things were in slighly better shape than they were back during the hackathon, but there was never a "how should this package be properly architected" conversation. As a result, in later months as I tried to go back and implement changes, it was never clear to me what was where or why, or what edge cases I would need to consider and support. This made "weekend-a-month" type support less useful over time as I knew the codebase less and less well.

## Part 3: Where we go to Costa Rica and try to turn things around

#### Costa Rica: the plan

Around Summer 2014, a year after we started, things were going kind of slumpey. As an effort to regroup, I invited Greg to Costa Rica where I was staying for a few months:
![Hey Greg, come to Costa Rica!](/images/costa-rica-summit.gif){:loading="eager"}


The plan was basically to unbreak the critical stuff and make a plan for what we wanted to do next, and maybe also play some soccer on the beach.

#### Costa Rica: what actually happened
I got bogged down on a consulting project that was a bit behind schedule as Greg visited. So we got maybe 1-2 days of work done, which instead of dealing with any of the issues on my part was shipping a new feature I decided I wanted, called [Custom Actions](https://github.com/gterrono/houston#custom-actions), which were kind of cool but not at all the problem.

![Custom Actions](https://camo.githubusercontent.com/dbf805a68e8d8ea7e5afa28ad991035ae97530d7/68747470733a2f2f7261772e6769746875622e636f6d2f67746572726f6e6f2f686f7573746f6e2f6d61737465722f646f632f637573746f6d2d616374696f6e732e706e67){:loading="eager"}

We still played some soccer, though. Greg was way better at soccer than the rest of us.

#### Get other maintainers, they said
We had two pretty helpful maintainers turn up: First, [Roger](https://github.com/gterrono/houston/commits?author=zurawiki) decided to redesign our UI from basic boostrap to the line-green version you see today. Second, sometime around late 2014, this Swiss dude named [Matteo](https://github.com/matteodem) showed up and [fixed](https://github.com/gterrono/houston/issues/251) a bunch of things. That was awesome, and we talked to him on Skype and gave him write access as somebody had suggested for growing your maintainers.

Later, in 2015, my friend [Sam](https://github.com/samcorcos) came in and added some proper tests, but development had largely ceased by then.

Still, for whatever reason, nobody stuck around and answered issues, etc, for the long term, so it was still up to us.

## Part 4: Decline and Fall of the Houston Admin

#### Meteor 1.0 is released!
Coinciding with Greg's visit, Meteor finally [released 1.0](https://blog.meteor.com/meteor-1-0-d0702aab3ef) in October 2014. Perhaps we'll no longer have to adjust the incompatible hacks we use to figure out which collections are to be added and we can focus on the good stuff!

#### Blaze vs React
If only. A year later, the big question up in the air becomes whether to use Meteor's original Blaze templating or [switch to a react-based front-end](https://www.discovermeteor.com/blog/blaze-react-meteor/). React is great and all, but we for one are not up for yet anothe rewrite of this thing we haven't really gotten to use for our own stuff in like, two years.

#### 1.3
To add insult to injury, The Meteor Development Group ignores the principles of [Semantic Versioning](http://semver.org/) to release 1.3 in April 2016 with [Breaking Changes](https://guide.meteor.com/1.3-migration.html) - and our package is [broken yet again. Maybe.](https://github.com/gterrono/houston/issues/372)

## Part 5, an Epilogue
Perhaps the most poignant symptom of the sort of stagnancy that the project fell into is that I had an idea to write this blog-post in early 2015, and it took two years to even get the post-mortem for this project done.

I think Greg may have fixed the 1.3 issue, but the last change I can see in the codebase is in March 2016 and frankly I just don't care anymore. On the bright side, it looks like there's a [half-decent competitor](https://github.com/yogiben/meteor-admin) that people who want an admin can use[^yogiben]. Also, the Meteor Development Group looks like it's less interested in Meteor and focusing on [GraphQL tools](http://www.apollodata.com/) these days, so maybe nobody needs this. On the bright side, 880 stars on Github, so that's cool!

#### What have we learned?

- Open-source maintenance is hard, especially if your only remaining motivation is altruism. [Richard Schneeman](https://twitter.com/schneems) gave a great talk about [Saving Sprockets](https://www.schneems.com/2016/05/31/saving-sprockets.html) last year which nailed it.
- Perhaps we should have quit while we were ahead and put an "not actively maintained, looking for maintainers" on the README back in 2014. That would have been a bit more responsible.
- On the bright side, building a key piece of infrastructure for a hip new development framework turned out to be a great way to get a lot of users for your open source project.

#### ...one more thing
I leave you with the contributions over time graph, which tells the whole story, but with graphics.
![contributions over time](/images/contributions.gif){:loading="eager"}

#### Thank you

- To Greg, the prospect of collaborating with whom kept me in the project as long as it did.
- The Yefim, Ceasar, Matteo, Roger, Sam and other contributors!
- The the Meteor Development Group folks for their contributions to realtime web development, whose ideas will live on independent of Meteor's future, and also for the free snacks and t-shirts and the Pebbles we won at that hackathon back at 2013.

<hr>

[^ssr]: as far as I know, Meteor still doesn't have proper Server-Side rendering. Arunoda [wrote a community library](https://meteorrhacks.com/server-side-rendering/) in 2015, but given the Blaze/React split, I'm uncertain how much of this has come to pass.
[^genghis]: Ironically, the closest thing to an Meteor Admin at the time was [Genghis](genghisapp.com), a standalone one-page PHP-based Mongo editor by [Justin Hileman](https://twitter.com/bobthecow), whose younger brother I had somehow hired the year prior. Silicon Valley is a small place.
[^yogiben]: though it too looks like it has not been updated in 10 months :-/.
