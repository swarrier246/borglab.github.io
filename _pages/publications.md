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

{% for publi in site.data.publications %}

<div>
  <div class="well">
  <details>
  <summary><pubtit>{{ publi.title }}</pubtit></summary>

  <p>{{ publi.description }}</p>
  <p>{%- for person in publi.people -%}
    {%- for member in site.data.people -%}
      {%- if member.id == person -%}
        {{ member.name }},
      {%- endif -%}
    {%- endfor -%}
  {%- endfor -%} <em>{{ publi.conference }}</em></p>
  
  <p ><strong>{{publi.url_display_text}} <a href="{{ publi.link.url }}">{{ publi.url }}</a></strong></p>
  <p class="text-danger"><strong> {{ publi.news1 }}</strong></p>
  <p> {{ publi.news2 }}</p>
  </details>
  </div>
</div>


{% endfor %}

<p> &nbsp; </p>

