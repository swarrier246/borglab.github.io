---
title: "Borglab - Publications"
layout: gridlay
excerpt: "Borglab -- Publications."
sitemap: false
permalink: /publications/
---


# Publications

For a more complete list, you can look at [Frank Dellaert's publications](https://dellaert.github.io/publications/), or his [Google Scholar page](https://scholar.google.com/citations?hl=en&user=ZxXBaswAAAAJ).

Below is a list of publication highlights that we will expand over time:

{% for publi in site.data.publist %}

{% if publi.highlight == 1 %}


<div>
  <div class="well">
  <details>
  <summary><pubtit>{{ publi.title }}</pubtit></summary>

  <p>{{ publi.description }}</p>
  <p>{{ publi.authors }} , <em>{{ publi.conference }}</em></p>
  
  <p ><strong><a href="{{ publi.link.url }}">{{ publi.link.display }}</a></strong></p>
  <p class="text-danger"><strong> {{ publi.news1 }}</strong></p>
  <p> {{ publi.news2 }}</p>
  </details>
  </div>
</div>

{% endif %}

{% endfor %}

<p> &nbsp; </p>

