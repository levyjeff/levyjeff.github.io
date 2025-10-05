---
layout: page
permalink: /teaching/
title: Teaching
nav: true
nav_order: 3
---

# Currently Teaching

<div class="teaching-list">
  {% assign current_classes = site.teaching | where: "current", true | sort: "teach_order" %}
  {% for t in current_classes %}
    <div class="teaching-entry">
      <h2 class="teaching-title">
        <a href="{{ t.url | relative_url }}">{{ t.title }}</a>
        {% if t.school_logo %}
          <img src="{{ t.school_logo | relative_url }}" alt="{{ t.school }}" class="school-logo">
        {% endif %}
      </h2>
      <p class="teaching-meta">
        <strong>{{ t.school }}</strong> — {{ t.semesters }}
      </p>
      {% if t.short_description %}
        <p class="teaching-desc">{{ t.short_description }}</p>
      {% endif %}
    </div>
  {% endfor %}
</div>

---

# Past Courses

<div class="teaching-list past">
  {% assign past_classes = site.teaching | where: "current", false | sort: "teach_order" %}
  {% for t in past_classes %}
    <div class="teaching-entry">
      <h2 class="teaching-title">
        <a href="{{ t.url | relative_url }}">{{ t.title }}</a>
        {% if t.school_logo %}
          <img src="{{ t.school_logo | relative_url }}" alt="{{ t.school }}" class="school-logo">
        {% endif %}
      </h2>
      <p class="teaching-meta">
        <strong>{{ t.school }}</strong> — {{ t.semesters }}
      </p>
      {% if t.short_description %}
        <p class="teaching-desc">{{ t.short_description }}</p>
      {% endif %}
    </div>
  {% endfor %}
</div>
