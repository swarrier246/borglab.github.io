---
title: "Borglab - Projects"
layout: textlay
excerpt: "Borglab -- Projects"
sitemap: false
permalink: /projects/
---

# Projects

Our website is still under construction, and we will soon fill this with both current and legacy vignettes :-)

{% assign number_printed = 0 %}

{% for project in site.data.projects %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
<div class="well">
<details>
<summary><pubtit>{{ project.project_name }}</pubtit></summary>
<!-- <pubtit> Project Description </pubtit> -->
<!-- [comment]: # (<img src="{{ site.url }}{{ site.baseurl }}/images/projectpic/{{ project.image }}" class="img-responsive" width="33%" style="float: left" />) -->
<!-- <p>{{ project.description }}</p> -->
<pubtit> People </pubtit>
{% assign idx = 1 %}
<div class="container-fluid">
{% for person in project.people %}
{% assign pos_idx = idx | modulo: 2 %}
{% if pos_idx == 1 %}
<div class="row justify-content-evenly">
{% endif %}

<div class="col-sm-4">
{% for people_name in site.data.people %}
{%- if people_name.id == person -%}
{% for member in site.data.team_members %}
{%- if member.name == people_name.name -%}
{% capture image_url %}{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}{% endcapture %}
{% capture person_name %}{{people_name.name}}{% endcapture %}
{%- include image.html url=image_url description=person_name -%}
{%- endif -%}
{% endfor %}
{%- endif -%}
{% endfor %}
</div>


{% if pos_idx == 0 %}
</div>
{% endif %}
{% assign idx = idx | plus: 1 %}
{% endfor %}
{% if pos_idx != 0 %}
</div>
{% endif %}

</div>
<p><strong><a href="{{ project.link.url }}">{{ project.link.display }}</a></strong></p>
<pubtit> Related Papers </pubtit>
{% for paper in project.related_papers %}
{% for publication in site.data.publications %}
{% if publication.id == paper %}
<p>{{publication.title}}: <a href="{{ paper.url }}">{{ publication.url }}</a></p>
{% endif %}
{% endfor %}
{% endfor %}
<p class="text-danger"><strong> {{ project.news1 }}</strong></p>
<p> {{ project.news2 }}</p>
</details>
</div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

<!-- {% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %} -->

<p> &nbsp; </p>

