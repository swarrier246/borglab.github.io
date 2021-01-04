---
title: "Borglab - Research"
layout: textlay
excerpt: "Borglab -- Research"
sitemap: false
permalink: /research/
---

# Research

Our website is still under construction, and we will soon fill this with both current and legacy vignettes :-)

{% assign number_printed = 0 %}
{% for proj in site.data.projects %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
 <div class="well">
  <details>
  <summary><pubtit>{{ proj.title }}</pubtit></summary>
  <pubtit> Project Description </pubtit>
  <img src="{{ site.url }}{{ site.baseurl }}/images/projectpic/{{ proj.image }}" class="img-responsive" width="33%" style="float: left" />
  <p>{{ proj.description }}</p>
  <pubtit> People </pubtit>
  {% for person in proj.people %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: none" />
  <p><a href="{{ person.url }}">{{ person.name }}</a></p>
  {% endfor %}
  <p><strong><a href="{{ proj.link.url }}">{{ proj.link.display }}</a></strong></p>
  <pubtit> Related Papers </pubtit>
  {% for paper in proj.related_papers %}
  <p><a href="{{ paper.url }}">{{ paper.title }}</a></p>
  {% endfor %}
  <p class="text-danger"><strong> {{ proj.news1 }}</strong></p>
  <p> {{ proj.news2 }}</p>
  </details>
 </div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

<p> &nbsp; </p>

