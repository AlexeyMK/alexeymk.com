---
layout: post
title: Being safe with mongodb
description: "A quick public service announcement about MongoDB, for those of us new to NoSQL land"
published: true
date: 2012-08-05 23:45:08
tags:
- technical
- advice
---

A quick public service announcement about MongoDB, for those of us new to NoSQL land:

** By default, mongo will not let you know if a query that you ran failed miserably.**

On the bright side, you on longer need to wait for mongo to unblock for updates or inserts, which makes production code run quicker.

Unfortunately, this also means you're going to spend more time tracking down bugs that would have been caught by IntegrityErrors (or the equivalent) in good old SQLite.

** But I LIKE knowing about integrity errors**.  Me too, especially when testing locally.

**Here's the fix**: set [`safe=True` in your Mongo connection object](http://www.mongodb.org/display/DOCS/Connections).  In django non-rel, this means setting

```py
    DATABASES = {
      'default': {
        ...
        'OPTIONS': {
          'safe': True
        },
      },
    }

```

in settings.py.

Good luck!
