---
layout: page
permalink: /talks/
title: Talks & Workshops
description: Invited talks, workshops, and conference presentations
nav: true
nav_order: 4
---

# Talks & Workshops

Below are selected workshops, talks, and panels I’ve organized or presented at.

<div class="talks">

{% assign categories = "workshop,talk,panel" | split: "," %}

{% for category in categories %}
  {% assign filtered_talks = site.data.talks | where: "type", category | sort: "year" | reverse %}
  {% if filtered_talks.size > 0 %}
  <details class="talks-section">
    <summary><h2 class="talks-heading">{{ category }}</h2></summary>
    {% for t in filtered_talks %}
      <div class="teaching-card">
        <div class="teaching-header">
          {% if t.logo %}
            <img src="{{ t.logo | relative_url }}" alt="{{ t.organization }} logo" class="school-logo">
          {% endif %}
          <div class="teaching-info">
            <h3 class="teaching-title">{{ t.title }}</h3>
            <p class="teaching-meta">
              {{ t.organization }}{% if t.location %}, {{ t.location }}{% endif %} — {{ t.year }}
            </p>
          </div>
        </div>
        <p class="teaching-description">{{ t.description }}</p>
      </div>
    {% endfor %}
  </details>
  {% endif %}
{% endfor %}

</div>
