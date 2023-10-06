---
layout: post
title: ! 'Lessons Learned: Giving Feedback as an Engineering Manager'
published: true
description: Earlier in the year, I became the Engineering Manager on a team responsible for half of the outages at our 2,000 person company. After each incident, the on-call engineer would write-up a doc and schedule a meeting.
date: 2020-06-20 14:23:09
tags:
- engineering-management
- advice
---

“Alexey, do you feel the points you bring up during our post-mortems are productive?" my tech lead asked at our 1:1.

Well, shit. I had thought so, but apparently not.

Earlier in the year, I became the Engineering Manager on a team responsible for half of the outages at our 2,000 person company. After each incident, the on-call engineer would write-up a doc and schedule a meeting.

“How come this wasn't caught in unit tests?" I found myself asking, in front of the assembled team. Next post-mortem, same thing. "I get that we didn't have monitoring for this particular metric, but why not?” Week after week.

The tech lead had asked a great question. Was my approach working?

“I want to set high expectations," I told him. "It's not pleasant being critiqued in a group setting, but my hope is that the team internalizes my ‘good post-mortem’ bar."

The words sounded wrong even as I said them.

“Thanks for the feedback." I said "Let me think on it.”

## Feedback budgets
I thought about it.

There’s a limited budget for criticism one can ingest productively in a single sitting. Managers will try to extend this budget through famed best-practices like the shit-sandwich and the not-really-a-question question. Employees learn these approaches over time and develop an immunity.

This happened here. Once my questioning reached the criticism threshold, I was no longer “improving the post-mortem culture.” I was "building resentment and defensiveness".

I had run over budget. And yet, there was important feedback to give!

## Change the template, change the world
Upon reflection, I ended up <a href="#post-mortem-changes">updating our post-mortem template</a>. My questions became part of the template that got filled in before meeting.

This way, it was the template pestering the post-mortem author. My role was simply to insist that the template be filled out; an entirely reasonable ask.

Surprisingly enough, this worked; post-mortems became more substantive. The team pared down outage frequency and met OKR goals.


## Process linters

One Simple Trick I had stumbled into was that there was a way to get around feedback budgets.
Turns out there’s this other, vaster budget to tap into: the budget of process automation. When feedback is automated, it arrives sooner, feels confidential, and lacks judgement. This makes it palatable; this is why the budget is vaster.

The technical analogy here is how we use linters. "Nit: don't forget to explicitly handle the return value" during code review feels mildly frustrating. Ugh. It's “just a style thing” and “the code works”. I'll make the change, but with slight resentment.

Yet, if that same "unhandled return value" nudge arrives in the form of a linter, it's a different story. I got the feedback before submitting the code for review; no human had to see my minor incompetence.

As a software engineer, Have Good Linters is an obvious, uncontroversial best practice. The revelatory moment for me was that templates for documents were just another kind of linter.

## Happy Ending

My insight completely transformed the way Opendoor Engineering thinks about feedback; I crowd-surfed, held aloft by the team’s grateful arms, to receive my due praise as the master of all process improvement.

Just kidding; COVID-19 happened and I switched jobs.

<hr />

### The Appendices Three
#### I: Process linters seen in the wild

##### Meetings
Feedback “we have too many meetings”; “what’s the point of this meeting”; “do I need to be here”
Linter mandate no-meetings days; mandate agendas; mandate a hard max on attendee count.

##### Progress Updates
Feedback “Hey, how’s that project going? Haven’t heard from you in a bit”
Linter Daily stand-ups (synchronous or in slack/an app); issue trackers (Linear, Asana, Jira, Trello)

##### Bug Reports
Feedback “Hey, a friend who uses the app said that our unsubscribe page is broken?”
Linter Quality pre-deploy test coverage, automated error reporting (Sentry), Alerting on pages or business metrics having anomalous activity patterns (Datadog).

#### II: You’ve gone too far with this process crap

The process budget is vaster than the feedback budget, but it isn’t unlimited. A mature company is going to have lots of legacy process - process debt, if you will.

Process requires maintenance and pruning, to avoid “we do this because we’ve always done this” type problems. High-process managers are just as likely to generate unhappy employees as high-feedback managers.

<a name="post-mortem-changes"></a>
#### III: The post-mortem template changes, if that’s what you’re here for

##### A. "5 Whys” Prompts
Our original 5 Whys prompt was "Why did this outage occur."  During the post-mortem review, I kept asking questions like "but why didn't this get caught in regression testing?"

So, after discussion, I added my evergreen questions to the post-mortem template. They are:

-  Why didn't the issue get caught by unit tests?
-  Why didn't the issue get caught by integration/smoke tests?
-  Why didn't the issue get flagged in Code Review?
-  Why didn't the issue get caught during manual QA?
-  If the outage took over an hour to get discovered, why didn't the monitoring page our on-call?

##### B. Defining "Root Cause"
“5 Whys” recommends continuing to ask why until you're about five levels deep. We were often stopping at one or two.

To make stopping less ambiguous, here are a set of "root causes" that I think are close to exhaustive:

- **trade-off** we were aware of this concern but explicitly made the speed-vs-quality trade-off (IE, not adding tests for an experiment). This was tech debt coming back to bite us.
- **knowledge gap** the person doing the work was not aware that this kind of error was even possible (IE, tricky race conditions, worker starvation)
- **brain fart** now that we look at it, we should have caught this earlier. "Just didn't get enough sleep that night" kind of thing.

  If you keep asking “why” but haven’t gotten to an answer that boils down to one of these, keep going deeper (or get a second opinion).
