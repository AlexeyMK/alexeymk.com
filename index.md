---
layout: default
title: 👋 Hey everyone, I’m Alexey MK
description : This is my website built with new version of jekyll
cover: /assets/img/alexey.jpg
---
<ul>
{% for post in site.posts %}
<li class="p-1">
<h3><strong><a href="{{ post.url }}">{{ post.title }}</a></strong></h3>
<p>{{post.description}}</p>
</li>
  {% endfor %}
</ul>