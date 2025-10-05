---
layout: page
permalink: /teaching/
title: teaching
description: 
nav: true
nav_order: 3
---

# Currently teaching

<div class="teaching current">
  {% assign current_classes = site.teaching | where: "current", true | sort: "teach_order" %}
  {% for t in current_classes %}
    <div class="class-item">
      <h3><a href="{{ t.url | relative_url }}">{{ t.title }}</a></h3>
      {% if t.semester %}<p><strong>{{ t.semester }}</strong></p>{% endif %}
      {% if t.description %}<p>{{ t.description }}</p>{% endif %}
    </div>
  {% endfor %}
  {% if current_classes == empty %}
    <p><em>No current classes.</em></p>
  {% endif %}
</div>

# Past teaching

<div class="teaching past">
  {% assign past_classes = site.teaching | where: "current", false | sort: "teach_order" %}
  {% for t in past_classes %}
    <div class="class-item">
      <h3><a href="{{ t.url | relative_url }}">{{ t.title }}</a></h3>
      {% if t.semester %}<p><strong>{{ t.semester }}</strong></p>{% endif %}
      {% if t.description %}<p>{{ t.description }}</p>{% endif %}
    </div>
  {% endfor %}
</div>