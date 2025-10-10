---
layout: page
permalink: /talks/
title: talks & workshops
nav: true
nav_order: 4
---

<section class="teaching-section">

  {% assign categories = "Workshops,Talks,Panels" | split: "," %}

  {% for cat in categories %}
    <h1>{{ cat }}</h1>

    {% assign filtered_talks = site.data.talks | where: "type", cat | sort: "year" | reverse %}

    {% for t in filtered_talks %}
      <article class="teaching-card">
        <header class="teaching-header">
          {% if t.url %}
            <a class="course-link" href="{{ t.url | relative_url }}">{{ t.title }}</a>
          {% else %}
            <span class="course-link">{{ t.title }}</span>
          {% endif %}
          {% if t.logo %}
            <img src="{{ t.logo | relative_url }}" alt="{{ t.organization }} logo" class="school-logo">
          {% endif %}
        </header>

        <p class="teaching-meta">
          <span class="school">{{ t.organization }}</span>
          {% if t.location %}
            <span class="sep">•</span>
            <span class="location">{{ t.location }}</span>
          {% endif %}
          {% if t.year %}
            <span class="sep">•</span>
            <span class="year">{{ t.year }}</span>
          {% endif %}
        </p>

        {% if t.description %}
          <p class="teaching-desc">{{ t.description }}</p>
        {% endif %}
      </article>
    {% endfor %}

  {% endfor %}
</section>
