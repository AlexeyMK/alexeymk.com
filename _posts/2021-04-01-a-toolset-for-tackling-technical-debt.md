---
layout: post
title: ! 'A toolset for tackling technical debt'
published: true
date: 2021-04-01 19:59:39
tags:
- engineering-management
---

> Let us prepare to grapple with the ineffable itself, and see if we may not eff it after all.
>
> -- Douglas Adams, Dirk Gently's Holistic Detective Agency


### The Situation

"Ugh, the codebase is just such a mess,” my new Tech Lead said. “It’s just cruft on top of cruft, never cleaned up, always ‘after the next release’.  No wonder we keep getting bug reports faster than we can fix them.”

Not what you want to hear as the freshly-appointed Engineering Manager on a critical team. Leadership expects the team to deliver on key new features, but also, *there better not be any voluntary churn*.

I went to talk to the Product Manager. “Tech Debt?” he said, “sure, we can tackle some tech debt - but let’s make sure to get some credibility first by hitting our OKRs. It won’t be easy.”


### How did it get this bad?

Cut to three years earlier. I was a new hire on that very team. My onboarding buddy - let’s call him Buddy - and I bumped into a strange corner of the codebase.

"Oh weird," I said. "Should we fix that?"

"I have a strategy for this that you can use," Buddy said. "When you run into code that seems off, that feels worth fixing, you write the issue down in a separate text file. Then you go do useful work."

"Oh, I see. And eventually, you get back to the text file and fix the issues?"

"Nope. But at least you've written it down."

Wikipedia describes [learned helplessness](https://en.wikipedia.org/wiki/Learned_helplessness) as "behavior exhibited by a subject after enduring repeated aversive stimuli beyond their control."  Without support, this is how engineers come to feel about tech debt.

When I came back to this team as a manager, I reached out to Buddy, who had left years ago. "The code is crap at Airbnb too," he told me when we caught up, "but at least they pay well and I don't have to work very hard."


### So what did you do?

I joined Airbnb.

That's not true. We tackled the tech debt. We shipped leadership’s key features, hit our OKRs, and cleaned up some terrible, long-overdue-for-deletion no-good code. Within 3 months, the team’s attitude about technical debt had begun to turn around.

Here’s how.


# Tackling Technical Debt In Three Easy Steps

Guaranteed[^1].


### Step 1. Empower

The biggest reason technical debt exists is because Engineers have internalized that it’s not their job to fix it. Start-up mantras like “focus” and “let small fires burn” have lead to just that - small fires everywhere.

![](/images/small_fires.png)


 “Get shit done” is a great mantra, but you still have to clean up after yourself.

The fix here is cultural. Make it clear that engineers who identify debt and take time to tackle it are appreciated. Celebrate their work to peers. A friend once created a slack bot that called out any PR that deleted a significant amount of code. Engineers all across the company began striving to get featured.

Now of course, the team does have actual work that needs doing. Empower doesn’t mean “ignore our actual work” - it means, “if you take a Friday to fix something that’s bothering you, I have your back.”


### Step 2. Identify

If you’re on a team that hasn’t been rigorous about tackling tech debt, there’s probably lots of it and it’s unclear what could even be done. This is fixable.

Organize a brainstorm with prompts like

- What tasks take longer than they should?
- What is the most embarrassing part of our code to explain to new hires?
- What key pieces of our code have we under-invested in?

This’ll set you up with a solid initial list for your Tech Debt backlog. For more ideas, run your codebase through a tool like CodeClimate to algorithmically point out the rough spots.

The first time we ran a brainstorm like this, everybody agreed that we had a handful of ideas that were so easy and valuable enough that we should do them right away. Like, that day. It felt like a breath of fresh air. Things are fixable.

Encourage folks to add to the Backlog anytime they ran into annoyances and didn’t have time to fix it right there and then. In future team retros or brainstorms, identify any tech debt that comes up and add it onto the backlog.


### Step 3. Prioritize

Having a tech debt backlog and ignoring it is worse than none at all.

Time to play Product Manager and use ICE to prioritize your tech debt on effort required to fix,  impact that a fix would have on velocity, and confidence that the fix will actually work.

This gives you a list of potential projects. Some will take months; others, hours.

Now they just need to get done. That’ll require buy-in from your Product Manager.

#### Getting Buy-in
When it’s time to have “the talk” with your PM, I‘ve found “how often should you clean your room” to be useful analogy.

> Never cleaning your room is a bad idea and obviously so.  Over time it becomes unlivable. This is how our engineers feel. At the same time, if you’re cleaning your room all day every day, that’s not a clean room, that’s excessive and no longer helpful.  In moderation, messiness is healthy - it means you’re prioritizing. We don’t need a glistening-clean room, but we do need to do more than nothing. At the end of the day, a clean room is a productive room.

#### Tackling Small Debt
Come together with your Product Manager and agree to a rate at which small debt projects can get added to the team’s ticket queue. With a spiel like the above, you can hopefully get ~10% of all work done to focus on debt, depending on the maturity of the team and the company.

For ~week-long projects, try to leverage particular times of year like Hack Weeks and pitch high-value projects to engineers looking for a fun project.

#### Tackling Heavy Debt
This is where good leadership helps. At this particular company, Engineering leadership had rolled out "Quality OKRs". Every quarter, each team had to sign up for a meaningful "quality" OKR goal.

What is a "quality" goal? This was left up to teams, but the gist of it was, just go fix the most painful thing that isn’t already translated in your business metrics.

During quarterly planning, we whittled the top three “heavy tech debt” projects into proposals, got buy-in from leadership, then brought the ideas back to the group.

Since quality projects had been blessed from top-down and indisputable, the PM had air cover to support the work without pushback.

## So what happened?

Was there still tech debt? Yes. Did it continue to accumulate? Of course. But did it feel inexorable? Not anymore.

[^1]: Not guaranteed.
