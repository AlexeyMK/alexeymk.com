---
layout: post
title: ! 'TDD makes you amazing at technical interviews'
published: true
date: 2017-04-05 18:31:37
tags:
- interviews
- technical
- advice
---

**TDD** stands for **Test Driven Development**. Personally, I don't care for it[^tdd].

Yet when I job-hunt, I use it religiously for coding interviews.

#### Wait, why?
Any technical challenge is actually two challenges.

1. Can you take a broadly-worded problem and nail it down into something unambiguous?
2. Can you implement challenging but unambiguous spec in the allotted time?

TDD forces you into the ideal mindset for nailing down (1) problem definitions. There's no better way to properly grok a problem than to have to think through all the fun ways an implementation could be slightly off.

The implementation itself (2) also gets easier since you no longer have to assume that your code "probably" works, or fiddle with a REPL each time you're ready to check.

#### So how do I do it?
As soon as you hear the problem, resist the urge to rush straight to the solution.

Instead, force yourself to fully think through the test cases for an _arbitrary implementation_. Make it a dialog - "what if the array is empty?" Get the interviewer engaged. Show you care.

By the time you've written good tests and the interviewer agrees, you're all set.  Even though you tried not to, you probably already have a decent solution in mind. Your tests will let you know you're done. They'll also give you comfort that subsequent clean up / refactor didn't inadvertantly break your implemenation.

#### Yeah, but I can always just write tests later.
Ocassionally I run into candidates clever enough to power through engineering challenges on raw talent[^smarter]. They implement an _optimal_ solution within fifteen minutes. Then it's time for tests and they just **cannot** think of cases beyond the common path, which makes them look like [cowboys](http://blog.thefirehoseproject.com/posts/best-team-tactics-to-write-software/).

I blame the [curse of knowledge](https://hbr.org/2006/12/the-curse-of-knowledge;at/1) - once you've solved the problem, it's harder to think about what wrong turns you could have taken. It all feels trivial.

#### Seriously though, are you going to make me import a testing framework? Like, Mocha or Cucumber? Ugh.

¯\\\_\(ツ\)\_/¯, I just use asserts and print statements. But you can do that thing where you ask your interviewer if they'd like you to use a proper testing framework first, and of course they don't, but now it looks like you _could_ and you're just doing them a favor by using asserts, cause you're like, super assertive.

#### Ok so now what?
Well obviously you should come [work at Opendoor](https://jobs.lever.co/opendoor/f1bace9e-8d29-4d45-a72b-98e2c06bf2c1?lever-via=aHMDi1LN8p) with me! We have [the good coconut water](https://static1.squarespace.com/static/544a7286e4b0e537e01eb8e0/583e0f3c59cc68a8c3dcbc35/5841eb973e00be994a516b61/1480715164561/slide1%402x.jpg) that doesn't run out until like noon, 12:30 on good days. Plus, there's a decent chance you'll run into me on your phone screen.

<hr>

[^tdd]: Don't get me wrong, TDD [has its uses](https://www.facebook.com/notes/kent-beck/rip-tdd/750840194948847/), but we often mistake what Kent Beck meant by ['unit']( https://martinfowler.com/bliki/UnitTest.html). Testing 'just right' is hard.
[^smarter]: I used to have that problem earlier in my career. I've addressed it, largely by becoming dumber.
