---
layout: page
permalink: /teaching/
title: teaching
nav: true
nav_order: 3
---

{% assign slides = site.data.teaching_carousel | shuffle %}
{% assign count = slides | size %}
{% assign interval = 15 %}
{% assign total = count | times: interval %}
{% assign slot = 100.0 | divided_by: count %}

<style>
@keyframes textCarouselFade {
  0% { opacity: 0; }
  {{ slot | times: 0.05 }}% { opacity: 1; }
  {{ slot | times: 0.95 }}% { opacity: 1; }
  {{ slot }}% { opacity: 0; }
  100% { opacity: 0; }
}
</style>

<div class="page-teaching">
<div class="container">
  <div class="text-carousel"
       style="--carousel-total: {{ total }}s; --carousel-interval: {{ interval }}s;"
       markdown="0">
    {% for item in slides %}
      {% assign slide_index = forloop.index0 %}
      {% assign delay = slide_index | times: interval %}
      <div class="text-carousel-slide"
           style="--slide-delay: {{ delay }}s;">
        <div class="text-carousel-content">
          <div class="carousel-title">
            {{ item.title }}
            <span class="carousel-term">{{ item.term }}</span>
          </div>
          <div class="carousel-quote">
            "{{ item.quote | replace: "\n", "<br>"}}"
          </div>
        </div>
      </div>
    {% endfor %}
  </div>
</div>


<section class="teaching-statement" style="display: none">
  <details class="expand-section">
    <summary>Teaching statement</summary>
    <div class="expand-content">
<p>
  My economics career began as a researcher at think tanks in Washington DC, where I had the opportunity to join a wide variety of projects. In that time I identified three related issues in the field that I use as the foundation of the data and programming courses I teach:
</p>

<ol>
  <li>
    In my studies as an undergraduate and graduate student, I observed a consistent trend: a heavy focus on econometrics and theoretical models, with little-to-no focus on the actual practice of working with data. In my career as an economist, however, I found this to be directly at odds with the process of actual research — far more time and effort goes into working with data than with fitting econometric models to clean, nicely-prepared datasets. Proper data skills should be taught to aspiring researchers, not left as something to be picked up on the side.
  </li>
  <li>
    Similarly, researchers are rarely taught how to write good computer code. This results in research that is built upon unstable foundations — bad code is hard to read, difficult to maintain, challenging to debug, and most importantly, bad code hides mistakes. All junior researchers should learn at least the basics of good programming practices. This is compounded by the rise of LLMs to help with coding, creating a powerful incentive to outsource programming skills and then use code the researcher didn't write and doesn't understand.
  </li>
  <li>
    Researchers in the social sciences are often focused heavily on proprietary, legacy programming platforms. Many of us end up trapped in a language that we only adopted because we were taught using it in the first place, often by academics who also adopted it only because that is how <em>they</em> were taught. This creates two problems: first, a researcher should be comfortable changing data analysis platforms as-needed; and second, modern open-source languages like Python and R are generally superior in nearly every way to legacy platforms like Stata and SAS. It is important to note, however, that the first point is more important than the second — very often the choice of language is dictated by a more senior researcher, by an established code base, or by the need for a particular econometric model.
  </li>
</ol>

<p>
  I believe aspiring empirical researchers in public policy and social science can benefit immensely from learning proper coding and data science techniques. Doing so will help them better adopt new technologies, write code that does what they think it is doing, understand better the work of others, and accomplish things they could not otherwise do. The current system of leaving these skills to be picked up on an ad hoc basis would never be acceptable for rigorous econometrics, and should not be the norm here either.
</p>

<p>
  <em>Addendum on LLM usage in the classroom:</em> There are two ways students can use LLMs in their academic work; as a compliment to learning, and as a substitute to learning. My job as a teacher is not to fight against LLM usage, but to instead support students finding the complimentary uses while incentivising against the substitute uses. Example prompts that are substitutes are fairly obvious, e.g. "Answer this question from this homework assignment" or "Here is some data, how do I analyze it?" Complimentary uses may be slightly less clear, but are not hard for students to see when discussed with them. For example, "Please translate this explanation from my notes into my native language" or "I created this figure in MatPlotLib, but I cannot get the legend to appear outside the frame." would both save time and help the student progress while not removing the benefit of working through the core of the problem themselves.
</p>
<p>
  That said, I believe there will always be some tension between LLMs and pedagogy. True learning happens in the struggle, and LLMs are incredibly powerful at helping students avoid that struggle. It is also incumbent upon us as faculty to structure our classes in a way that mitigates the worst of this, by for example assessing in-class work more heavily than take-home work. If we continue doing things as we did in the pre-LLM era, we will leave perverse incentives in place that both encourage poor LLM usage and discourage good LLM usage, by making students who would like to opt out of bad practices fall behind their peers who don't.
</p>
    </div>
  </details>
</section>

<section class="teaching-section">
  <h1>current courses</h1>

  {% assign current_courses = site.teaching | where: "current", true | sort: "teach_order" %}
  {% for t in current_courses %}
    <article class="teaching-card">
      <header class="teaching-header">
        <a class="course-link" href="{{ t.url | relative_url }}">{{ t.title }}</a>
        {% if t.school_logo %}
          <img src="{{ t.school_logo | relative_url }}" class="school-logo">
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

  <h1>past courses</h1>

  {% assign past_courses = site.teaching | where: "current", false | sort: "teach_order" %}
  {% for t in past_courses %}
    <article class="teaching-card past">
      <header class="teaching-header">
        <a class="course-link" href="{{ t.url | relative_url }}">{{ t.title }}</a>
        {% if t.school_logo %}
          <img src="{{ t.school_logo | relative_url }}" class="school-logo">
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
</div>
</div>