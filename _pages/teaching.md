---
layout: page
permalink: /teaching/
title: teaching
nav: true
nav_order: 3
---

# Currently Teaching

{% assign current_classes = site.teaching | where: "current", true | sort: "teach_order" %}
{% for t in current_classes %}
  <div class="teaching-entry">
    <h2 class="course-title">
      <a href="{{ t.url | relative_url }}">{{ t.title }}</a>
      {% if t.school_logo %}
        <img src="{{ t.school_logo | relative_url }}" alt="{{ t.school }}" class="school-logo">
      {% endif %}
    </h2>
    <p class="semester"><strong>{{ t.school }}</strong> — {{ t.semesters }}</p>
    <p class="short-desc">{{ t.short_description }}</p>
  </div>
{% endfor %}

---

# Past Courses

{% assign past_classes = site.teaching | where: "current", false | sort: "teach_order" %}
{% for t in past_classes %}
  <div class="teaching-entry">
    <h2 class="course-title">
      <a href="{{ t.url | relative_url }}">{{ t.title }}</a>
      {% if t.school_logo %}
        <img src="{{ t.school_logo | relative_url }}" alt="{{ t.school }}" class="school-logo">
      {% endif %}
    </h2>
    <p class="semester"><strong>{{ t.school }}</strong> — {{ t.semesters }}</p>
    <p class="short-desc">{{ t.short_description }}</p>
  </div>
{% endfor %}
