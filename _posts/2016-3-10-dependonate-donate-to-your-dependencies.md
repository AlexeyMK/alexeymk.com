---
layout: post
title: "Dependonate: Donate to your dependencies"
published: true
date: 2016-3-10 20:51:31
tags:
- ideas
- open-source
---

Giving back to open source projects you benefit from is one of those obviously-good-in-theory-confusing-in-practice ideas, like eating healthy or being carbon-neutral.

Many services - flattr, bountysource and gratify, among others, offer widgets that developers can put on their projects to encourage subscription donations. None has been a breakout success.

There needs to be a fast and straightforward tool to empower an engineering manager to say "sure, let's do it."

### Dependonate
Here's how it would work.

#### Dependency File
Most projects I work on these days have a file with a list of package dependencies - `Gemfile` for ruby, `requirements.txt` for python, `package.json` for node, and plenty more.

#### List of Dependencies
Piggybacking on package managers files, Dependonate would take a project's dependency file and generate a list of direct and indirect projects. Each of those projects can then be parsed to see whether their Readme file includes links to any of the popular donate options (flattr, bountysource, gratify, paypal, etc).

#### Actionable Next Steps
Finally, Dependonate would open up the various URLs that would make donating as registering and entering your credit card on the services above, the lists of desired projects to contribute to having been auto-filled.

Dependonate would also generate a pretty report for the company to put up on their website as proponents of Open Source, somewhere near the engineering hiring page.

Hit me up if you build something like this, or if your company would be up for donating through it.
