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

{% assign number_printed = 0 %}
{% for publi in site.data.publist %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if publi.highlight == 1 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
 <div class="well">
  <details>
  <summary><pubtit>{{ publi.title }}</pubtit></summary>

  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="img-responsive" width="33%" style="float: left" />
  <p>{{ publi.description }}</p>
  <p>{{ publi.authors }}</p>
  <p><em>{{ publi.conference }}</em></p>
  <p><strong><a href="{{ publi.link.url }}">{{ publi.link.display }}</a></strong></p>
  <p class="text-danger"><strong> {{ publi.news1 }}</strong></p>
  <p> {{ publi.news2 }}</p>
  </details>
 </div>
</div>


{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endif %}

{% assign even_odd = number_printed | modulo: 2 %} {% if even_odd == 1 %}
{% endif %} 


{% if publi.highlight == 0 %}
<pubtit>{{ publi.title }}</pubtit>
<p style="line-height:12px;"><em>{{ publi.authors }}</em></p>
<p style="line-height:10px;">{{publi.conference}}</p>
<p style="line-height:10px;"><a href="{{ publi.link.url }}">{{ publi.link.display }}</a></p>
<p> &nbsp; </p>
{% endif %}

{% endfor %}

<p> &nbsp; </p>

