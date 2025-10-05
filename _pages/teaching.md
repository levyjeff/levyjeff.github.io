---
layout: page
permalink: /teaching/
title: teaching
nav: true
nav_order: 3
---

<section class="teaching-section">
  <h1>Currently Teaching</h1>

  {% assign current_courses = site.teaching | where: "current", true | sort: "teach_order" %}
  {% for t in current_courses %}
    <article class="teaching-card">
      <header class="teaching-header">
        <a class="course-link" href="{{ t.url | relative_url }}">{{ t.title }}</a>
        {% if t.school_logo %}
          <img src="{{ t.school_logo | relative_url }}" alt="{{ t.school }}" class="school-logo">
        {% endif %}
      </header>

      <p class="teaching-meta">
        <span class="school">{{ t.school }}</span>
        <span class="sep">•</span>
        <span class="semesters">{{ t.semesters }}</span>
      </p>

      {% if t.short_description %}
        <p class="teaching-desc">{{ t.short_description }}</p>
      {% endif %}
    </article>
  {% endfor %}

  <h1>Past Courses</h1>

  {% assign past_courses = site.teaching | where: "current", false | sort: "teach_order" %}
  {% for t in past_courses %}
    <article class="teaching-card past">
      <header class="teaching-header">
        <a class="course-link" href="{{ t.url | relative_url }}">{{ t.title }}</a>
        {% if t.school_logo %}
          <img src="{{ t.school_logo | relative_url }}" alt="{{ t.school }}" class="school-logo">
        {% endif %}
      </header>

      <p class="teaching-meta">
        <span class="school">{{ t.school }}</span>
        <span class="sep">•</span>
        <span class="semesters">{{ t.semesters }}</span>
      </p>

      {% if t.short_description %}
        <p class="teaching-desc">{{ t.short_description }}</p>
      {% endif %}
    </article>
  {% endfor %}
</section>
