---
layout: post
title: ! 'Migrating Divvy configurations between computers'
published: true
date: 2013-06-19 03:27:28
tags:
- heads-up
---

> **August 2016 Update**: Divvy now has <a href="http://mizage.clarify-it.com/d/nxr9qg">a native guide</a> for migrations. Use that instead.
>
> If you're having trouble importing, it might be because the URL Divvy gives you is too long. I solved this (on a Mac) by, rather than pasting the URL into the browser, opening a terminal window and typing.
>
> > open 'Divvy Backup URL'
>
> instead. (Where the 'Divvy Backup URL' is the one you got when exporting

I've been using <a href="http://mizage.com/divvy/">Divvy</a> the tiling tool for OSX (and windows) ever since I switched to using Macs full-time in 2010. It's great.</p>


I've been using [Divvy](http://mizage.com/divvy/) the tiling tool for OSX (and windows) ever since I switched to using Macs full-time in 2010. It's great.

Migrating it between installs isn't so great, and unfortunately googling "migrate divvy preferences" doesn't help.  So, while moving to yet another Mac, I emailed support@mizage and asked what to do.

Here (with their permission) is how to migrate your divvy settings / preferences / configurations / setup / whatever to a new computer:

> #### If you're on Windows:
>
> 0) Quit Divvy on both PCs.
>
> 1) Click Start > Run, and paste in this command:
>
>    %USERPROFILE%\Local Settings\Application Data\Mizage LLC\Divvy
>
> 2) This should open a new Explorer window.
>
> 3) Locate the file shortcuts.db
>
> 4) Copy that file to the same location on your second computer.
>
>
> #### If you're on Mac:
>
> 0) Quit Divvy on both Macs.
>
> 1a) If you're on Snow Leopard, go into your User's Library folder in Finder.
>
> 1b) If you're on Lion or later, open a Finder window, now hold the Option (alt) key and choose the "Go > Library" menu item.
>
> **(AMK Note: this is at ~/Library/Preferences)**
>
> 2) Go into the Preferences folder.
>
> 3) Locate the file com.mizage.Divvy.plist
>
> 4) Copy that file to the same location on your second Mac.
>
> Regards,
> Steve

Thanks Steve!
