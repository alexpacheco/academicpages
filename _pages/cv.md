---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

Education
======
 * __Ph.D.__ University of Florida, Gainesville, 2006
 * __M.Sc.__ University of Pune, Pune, 1999
 * __B.Sc.__ St. Xavier's College, Mumbai, 1997


Work experience
======
 * __Associate CIO, Advanced Research Computing__, New Jersey Institute of Technology (08/2022-Present)
 * __Manager of Research Computing__, Lehigh University (09/2014-07/2022)
 * __HPC User Services Consultant__, Louisiana State University (08/2010-09/2014)
 * __Postdoctoral Fellow__, Indiana University (10/2006-08/2010)
 * __Graduate Research &amp; Teaching Assistant__, University of Florida (08/1999-09/2006)


Grants
=====
 * __co-PI__: "CC* Compute: Acquisition of a Lehigh University HPC cluster to enhance collaboration, research productivity and educational impact",  7/1/2020 - 6/30/2022, National Science Foundation, $399,607.00, Award Number: 2019035. 

Publications
======
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
Talks
======
  <ul>{% for post in site.talks reversed %}
    {% include archive-single-talk-cv.html  %}
  {% endfor %}</ul>
  
Teaching
======
<!--
  <ul>{% for post in site.teaching reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
-->

### Tutorial Repositories

<ul id="cv-repo-list" style="list-style-type: square; padding-left: 20px;">
  {% if site.data.teaching.repos %}
    {% for repo_item in site.data.teaching.repos %}
      {% if repo_item.name %}
        {% assign repo_string = repo_item.name %}
      {% else %}
        {% assign repo_string = repo_item %}
      {% endif %}
      
      <!-- Create a blank list item with data attributes for JavaScript to populate -->
      <li class="cv-repo-item" data-repo="{{ repo_string | strip }}">
        <a href="https://github.com/{{ repo_string | strip }}" target="_blank" style="font-weight: bold;">
          {{ repo_string | split: '/' | last }}
        </a>
        <span class="repo-desc" style="color: #666; font-style: italic; margin-left: 5px;">Loading description...</span>
      </li>
    {% endfor %}
  {% endif %}
</ul>

<script>
  document.querySelectorAll('.cv-repo-item').forEach(item => {
    const repoPath = item.getAttribute('data-repo');
    const descSpan = item.querySelector('.repo-desc');

    fetch(`https://api.github.com/repos/${repoPath}`)
      .then(res => res.json())
      .then(data => {
        if (data.description) {
          descSpan.textContent = `— ${data.description}`;
          // Optional: Add star counts if you want an extra CV highlight!
          if (data.stargazers_count > 0) {
            descSpan.innerHTML += ` <span style="color: #e3b341; font-style: normal;">★ ${data.stargazers_count}</span>`;
          }
        } else {
          descSpan.textContent = '— Open source code repository.';
        }
      })
      .catch(() => {
        descSpan.textContent = ''; // Graceful fallback if API rate limit hits
      });
  });
</script>





  
Service and leadership
======
* ACCESS (formely XSEDE) Campus Champion


