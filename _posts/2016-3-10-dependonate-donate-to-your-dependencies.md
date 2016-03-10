---
layout: post
title: !'Dependonate: Donate to your dependencies'
published: true
date: 2016-3-10 20:51:31
tags:
- ideas
- open-source
---

Giving back to open source projects you benefit from is one of those obviously-good-in-theory-confusing-in-practice ideas, like eating healthy or making sure not to contribute to climate change.

Actually, the climate change part is surprisingly simple. Go to a website like carbonplanet.com, and use their calculators to figure out what your offset should be. They donate your money accordingly. Simple.

When it comes to open source, there isn't a simple solution. Many services - flattr, bountysource and gratify, among others, offer widgets that developers can put on their projects to encourage subscription donations. But looking at the top 100 Javascript repositories on github, not even 20% have a donation link, and there is still no clear solution.

One project I've been mulling over would help companies that rely on open source easily set a monthly budget to share with the community.

### Dependonate
Here's how it would work.

TL;DR `Project --> Dependency File --> List of Dependencies --> Actionable Donations && a report`

Most projects I work on these days have a file with a list of package dependencies - `Gemfile` for ruby, `requirements.txt` for python, `package.json` for node, and plenty more.

Piggybacking on package managers files, Dependonate would take a project's dependency file and generate a list of direct and indirect projects. Each of those projects can then be parsed to see whether their Readme file includes links to any of the popular donate options (flattr, bountysource, gratify, paypal, etc).

Finally, Dependonate would open up the various URLs that would make donating as easy as entering a corporate credit card a few times. It would also generate a nice report for the company to put up on their hiring, or their open source page.

Hit me up if you build something like this, or if your company would be up for donating through it.
